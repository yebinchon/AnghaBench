
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uid_t ;
struct TYPE_2__ {int uid; int gid; int gidlen; int gidlist; } ;
struct svc_rpc_gss_client {int cl_gid_storage; int cl_mech; TYPE_1__ cl_ucred; } ;
struct passwd {int pw_uid; int pw_gid; int pw_name; } ;
typedef TYPE_1__ rpc_gss_ucred_t ;
typedef int gss_name_t ;
typedef int buf ;
typedef scalar_t__ OM_uint32 ;


 scalar_t__ GSS_S_COMPLETE ;
 int NGRPS ;
 int getgrouplist (int ,int,int ,int*) ;
 int getpwuid_r (int ,struct passwd*,char*,int,struct passwd**) ;
 scalar_t__ gss_pname_to_uid (scalar_t__*,int const,int ,int *) ;

__attribute__((used)) static void
svc_rpc_gss_build_ucred(struct svc_rpc_gss_client *client,
    const gss_name_t name)
{
 OM_uint32 maj_stat, min_stat;
 char buf[128];
 uid_t uid;
 struct passwd pwd, *pw;
 rpc_gss_ucred_t *uc = &client->cl_ucred;

 uc->uid = 65534;
 uc->gid = 65534;
 uc->gidlen = 0;
 uc->gidlist = client->cl_gid_storage;

 maj_stat = gss_pname_to_uid(&min_stat, name, client->cl_mech, &uid);
 if (maj_stat != GSS_S_COMPLETE)
  return;

 getpwuid_r(uid, &pwd, buf, sizeof(buf), &pw);
 if (pw) {
  int len = NGRPS;
  uc->uid = pw->pw_uid;
  uc->gid = pw->pw_gid;
  uc->gidlist = client->cl_gid_storage;
  getgrouplist(pw->pw_name, pw->pw_gid, uc->gidlist, &len);
  uc->gidlen = len;
 }
}
