
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int krb5_storage ;
typedef int kadm5_server_context ;
typedef int kadm5_ret_t ;



__attribute__((used)) static kadm5_ret_t
kadm5_log_replay_nop (kadm5_server_context *context,
        uint32_t ver,
        uint32_t len,
        krb5_storage *sp)
{
    return 0;
}
