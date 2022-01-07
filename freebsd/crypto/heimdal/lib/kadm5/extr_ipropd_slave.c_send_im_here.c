
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_data ;
typedef int krb5_context ;
typedef int krb5_auth_context ;


 int I_AM_HERE ;
 int krb5_data_alloc (int *,int) ;
 int krb5_data_free (int *) ;
 int krb5_err (int ,int,int,char*) ;
 int krb5_errx (int ,int,char*) ;
 int krb5_storage_free (int *) ;
 int * krb5_storage_from_data (int *) ;
 int krb5_store_int32 (int *,int ) ;
 int krb5_write_priv_message (int ,int ,int*,int *) ;

__attribute__((used)) static void
send_im_here (krb5_context context, int fd,
       krb5_auth_context auth_context)
{
    krb5_storage *sp;
    krb5_data data;
    int ret;

    ret = krb5_data_alloc (&data, 4);
    if (ret)
 krb5_err (context, 1, ret, "send_im_here");

    sp = krb5_storage_from_data (&data);
    if (sp == ((void*)0))
 krb5_errx (context, 1, "krb5_storage_from_data");
    krb5_store_int32(sp, I_AM_HERE);
    krb5_storage_free(sp);

    ret = krb5_write_priv_message(context, auth_context, &fd, &data);
    krb5_data_free(&data);

    if (ret)
 krb5_err (context, 1, ret, "krb5_write_priv_message");
}
