
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct foreach_data {char const* exp; char** princs; int count; int exp2; } ;
typedef int krb5_realm ;
struct TYPE_6__ {TYPE_2__* db; int context; } ;
typedef TYPE_1__ kadm5_server_context ;
typedef scalar_t__ kadm5_ret_t ;
struct TYPE_7__ {scalar_t__ (* hdb_open ) (int ,TYPE_2__*,int ,int ) ;int (* hdb_close ) (int ,TYPE_2__*) ;} ;


 int HDB_F_ADMIN_DATA ;
 int O_RDWR ;
 scalar_t__ _kadm5_error_code (scalar_t__) ;
 scalar_t__ add_princ (struct foreach_data*,int *) ;
 int asprintf (int *,char*,char const*,int ) ;
 int foreach ;
 int free (int ) ;
 scalar_t__ hdb_foreach (int ,TYPE_2__*,int ,int ,struct foreach_data*) ;
 int kadm5_free_name_list (TYPE_1__*,char**,int*) ;
 int krb5_get_default_realm (int ,int *) ;
 int krb5_warn (int ,scalar_t__,char*) ;
 scalar_t__ stub1 (int ,TYPE_2__*,int ,int ) ;
 int stub2 (int ,TYPE_2__*) ;

kadm5_ret_t
kadm5_s_get_principals(void *server_handle,
         const char *expression,
         char ***princs,
         int *count)
{
    struct foreach_data d;
    kadm5_server_context *context = server_handle;
    kadm5_ret_t ret;
    ret = context->db->hdb_open(context->context, context->db, O_RDWR, 0);
    if(ret) {
 krb5_warn(context->context, ret, "opening database");
 return ret;
    }
    d.exp = expression;
    {
 krb5_realm r;
 krb5_get_default_realm(context->context, &r);
 asprintf(&d.exp2, "%s@%s", expression, r);
 free(r);
    }
    d.princs = ((void*)0);
    d.count = 0;
    ret = hdb_foreach(context->context, context->db, HDB_F_ADMIN_DATA, foreach, &d);
    context->db->hdb_close(context->context, context->db);
    if(ret == 0)
 ret = add_princ(&d, ((void*)0));
    if(ret == 0){
 *princs = d.princs;
 *count = d.count - 1;
    }else
 kadm5_free_name_list(context, d.princs, &d.count);
    free(d.exp2);
    return _kadm5_error_code(ret);
}
