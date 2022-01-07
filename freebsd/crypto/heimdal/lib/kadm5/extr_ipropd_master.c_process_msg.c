
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_8__ {int version; int name; int fd; int ac; } ;
typedef TYPE_1__ slave ;
typedef int krb5_storage ;
struct TYPE_9__ {int length; int data; } ;
typedef TYPE_2__ krb5_data ;
typedef int krb5_context ;
typedef int int32_t ;






 int krb5_data_free (TYPE_2__*) ;
 int krb5_read_priv_message (int ,int ,int *,TYPE_2__*) ;
 scalar_t__ krb5_ret_int32 (int *,int*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_mem (int ,int ) ;
 int krb5_warn (int ,int,char*,int ) ;
 int krb5_warnx (int ,char*,...) ;
 int send_diffs (int ,TYPE_1__*,int,char const*,int) ;
 int slave_seen (TYPE_1__*) ;

__attribute__((used)) static int
process_msg (krb5_context context, slave *s, int log_fd,
      const char *database, uint32_t current_version)
{
    int ret = 0;
    krb5_data out;
    krb5_storage *sp;
    int32_t tmp;

    ret = krb5_read_priv_message(context, s->ac, &s->fd, &out);
    if(ret) {
 krb5_warn (context, ret, "error reading message from %s", s->name);
 return 1;
    }

    sp = krb5_storage_from_mem (out.data, out.length);
    if (sp == ((void*)0)) {
 krb5_warnx (context, "process_msg: no memory");
 krb5_data_free (&out);
 return 1;
    }
    if (krb5_ret_int32 (sp, &tmp) != 0) {
 krb5_warnx (context, "process_msg: client send too short command");
 krb5_data_free (&out);
 return 1;
    }
    switch (tmp) {
    case 128 :
 ret = krb5_ret_int32 (sp, &tmp);
 if (ret != 0) {
     krb5_warnx (context, "process_msg: client send too I_HAVE data");
     break;
 }

 if (s->version == 0 && tmp != 0) {
     if (current_version < (uint32_t)tmp) {
  krb5_warnx (context, "Slave %s (version %lu) have later version "
       "the master (version %lu) OUT OF SYNC",
       s->name, (unsigned long)tmp,
       (unsigned long)current_version);
     }
     s->version = tmp;
 }
 if ((uint32_t)tmp < s->version) {
     krb5_warnx (context, "Slave claims to not have "
   "version we already sent to it");
 } else {
     ret = send_diffs (context, s, log_fd, database, current_version);
 }
 break;
    case 129 :
 break;
    case 131:
    case 130 :
    default :
 krb5_warnx (context, "Ignoring command %d", tmp);
 break;
    }

    krb5_data_free (&out);
    krb5_storage_free (sp);

    slave_seen(s);

    return ret;
}
