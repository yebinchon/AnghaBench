
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_context ;
struct TYPE_6__ {TYPE_2__* db; } ;
typedef TYPE_1__ kadm5_server_context ;
struct TYPE_7__ {int (* hdb_open ) (int ,TYPE_2__*,int,int) ;int (* hdb_close ) (int ,TYPE_2__*) ;} ;


 int O_CREAT ;
 int O_RDWR ;
 int krb5_err (int ,int,int,char*) ;
 int receive_loop (int ,int *,TYPE_1__*) ;
 int stub1 (int ,TYPE_2__*,int,int) ;
 int stub2 (int ,TYPE_2__*) ;

__attribute__((used)) static void
receive (krb5_context context,
  krb5_storage *sp,
  kadm5_server_context *server_context)
{
    int ret;

    ret = server_context->db->hdb_open(context,
           server_context->db,
           O_RDWR | O_CREAT, 0600);
    if (ret)
 krb5_err (context, 1, ret, "db->open");

    receive_loop (context, sp, server_context);

    ret = server_context->db->hdb_close (context, server_context->db);
    if (ret)
 krb5_err (context, 1, ret, "db->close");
}
