
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prop_data {int sock; int * auth_context; int context; } ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int HDB ;


 int STDOUT_FILENO ;
 scalar_t__ iterate (int ,char const*,int *,int,struct prop_data*) ;
 int krb5_data_zero (int *) ;
 int krb5_err (int ,int,scalar_t__,char*) ;
 int krb5_errx (int ,int,char*) ;
 scalar_t__ krb5_write_message (int ,int *,int *) ;

__attribute__((used)) static int
dump_database (krb5_context context, int type,
        const char *database_name, HDB *db)
{
    krb5_error_code ret;
    struct prop_data pd;
    krb5_data data;

    pd.context = context;
    pd.auth_context = ((void*)0);
    pd.sock = STDOUT_FILENO;

    ret = iterate (context, database_name, db, type, &pd);
    if (ret)
 krb5_errx(context, 1, "iterate failure");
    krb5_data_zero (&data);
    ret = krb5_write_message (context, &pd.sock, &data);
    if (ret)
 krb5_err(context, 1, ret, "krb5_write_message");

    return 0;
}
