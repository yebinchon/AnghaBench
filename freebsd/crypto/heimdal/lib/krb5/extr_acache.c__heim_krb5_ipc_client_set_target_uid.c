
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int init_ccapi (int *) ;
 int set_target_uid (int ) ;
 int stub1 (int ) ;

void
_heim_krb5_ipc_client_set_target_uid(uid_t uid)
{
    init_ccapi(((void*)0));
    if (set_target_uid != ((void*)0))
        (*set_target_uid)(uid);
}
