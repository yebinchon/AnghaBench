
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * db; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef int HDB ;



HDB *
_kadm5_s_get_db(void *server_handle)
{
    kadm5_server_context *context = server_handle;
    return context->db;
}
