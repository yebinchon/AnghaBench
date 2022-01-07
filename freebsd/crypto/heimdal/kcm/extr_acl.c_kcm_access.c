
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_context ;
typedef int kcm_operation ;
struct TYPE_8__ {scalar_t__ uid; scalar_t__ gid; int pid; } ;
typedef TYPE_1__ kcm_client ;
typedef TYPE_2__* kcm_ccache ;
struct TYPE_9__ {int flags; scalar_t__ uid; scalar_t__ gid; int mode; int name; int session; } ;


 scalar_t__ CLIENT_IS_ROOT (TYPE_1__*) ;
 int KCM_ASSERT_VALID (TYPE_2__*) ;
 int KCM_FLAGS_OWNER_IS_SYSTEM ;
 scalar_t__ KRB5_FCC_PERM ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 scalar_t__ kcm_is_same_session (TYPE_1__*,scalar_t__,int ) ;
 int kcm_log (int,char*,int ,int ,int ) ;
 int kcm_op2string (int) ;

krb5_error_code
kcm_access(krb5_context context,
    kcm_client *client,
    kcm_operation opcode,
    kcm_ccache ccache)
{
    int read_p = 0;
    int write_p = 0;
    uint16_t mask;
    krb5_error_code ret;

    KCM_ASSERT_VALID(ccache);

    switch (opcode) {
    case 137:
    case 149:
    case 128:
    case 134:
    case 130:
    case 150:
    case 151:
    case 142:
    case 138:
    case 136:
    case 131:
    case 129:
 write_p = 1;
 read_p = 0;
 break;
    case 135:
    case 140:
    case 133:
    case 148:
    case 132:
    case 139:
    case 144:
    case 145:
    case 146:
    case 147:
    case 143:
    case 141:
 write_p = 0;
 read_p = 1;
 break;
    default:
 ret = KRB5_FCC_PERM;
 goto out;
    }

    if (ccache->flags & KCM_FLAGS_OWNER_IS_SYSTEM) {

 if (opcode == 137 ||
     opcode == 149 ||
     opcode == 134 ||
     opcode == 136) {
     ret = KRB5_FCC_PERM;
     goto out;
 }


 if (CLIENT_IS_ROOT(client)) {
     ret = 0;
     goto out;
 }
    }


    mask = S_IROTH|S_IWOTH;


    if (CLIENT_IS_ROOT(client)) {
 if (read_p)
     mask |= S_IRUSR|S_IRGRP|S_IROTH;
 if (write_p)
     mask |= S_IWUSR|S_IWGRP|S_IWOTH;
    }

    if (kcm_is_same_session(client, ccache->uid, ccache->session)) {
 if (read_p)
     mask |= S_IROTH;
 if (write_p)
     mask |= S_IWOTH;
    }

    if (client->uid == ccache->uid) {
 if (read_p)
     mask |= S_IRUSR;
 if (write_p)
     mask |= S_IWUSR;
    }

    if (client->gid == ccache->gid) {
 if (read_p)
     mask |= S_IRGRP;
 if (write_p)
     mask |= S_IWGRP;
    }

    ret = (ccache->mode & mask) ? 0 : KRB5_FCC_PERM;

out:
    if (ret) {
 kcm_log(2, "Process %d is not permitted to call %s on cache %s",
  client->pid, kcm_op2string(opcode), ccache->name);
    }

    return ret;
}
