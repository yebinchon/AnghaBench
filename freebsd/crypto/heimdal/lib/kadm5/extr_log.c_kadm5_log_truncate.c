
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;


 scalar_t__ kadm5_log_end (int *) ;
 scalar_t__ kadm5_log_get_version (int *,int *) ;
 scalar_t__ kadm5_log_init (int *) ;
 scalar_t__ kadm5_log_nop (int *) ;
 scalar_t__ kadm5_log_reinit (int *) ;
 scalar_t__ kadm5_log_set_version (int *,int ) ;

kadm5_ret_t
kadm5_log_truncate (kadm5_server_context *server_context)
{
    kadm5_ret_t ret;
    uint32_t vno;

    ret = kadm5_log_init (server_context);
    if (ret)
 return ret;

    ret = kadm5_log_get_version (server_context, &vno);
    if (ret)
 return ret;

    ret = kadm5_log_reinit (server_context);
    if (ret)
 return ret;

    ret = kadm5_log_set_version (server_context, vno);
    if (ret)
 return ret;

    ret = kadm5_log_nop (server_context);
    if (ret)
 return ret;

    ret = kadm5_log_end (server_context);
    if (ret)
 return ret;
    return 0;

}
