
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_principal ;
typedef int krb5_context ;


 int KRB5_STORAGE_BYTEORDER_BE ;
 int KRB5_STORAGE_BYTEORDER_HOST ;
 int KRB5_STORAGE_BYTEORDER_LE ;
 scalar_t__ compare (char*,int *,char*,int) ;
 int krb5_free_context (int ) ;
 int krb5_free_principal (int ,int ) ;
 int krb5_init_context (int *) ;
 int krb5_make_principal (int ,int *,char*,char*,int *) ;
 int * krb5_storage_emem () ;
 int krb5_storage_set_byteorder (int *,int ) ;
 int krb5_store_int32 (int *,int) ;
 int krb5_store_principal (int *,int ) ;

int
main(int argc, char **argv)
{
    int nerr = 0;
    krb5_storage *sp;
    krb5_context context;
    krb5_principal principal;


    krb5_init_context(&context);

    sp = krb5_storage_emem();
    krb5_store_int32(sp, 0x01020304);
    nerr += compare("Integer", sp, "\x1\x2\x3\x4", 4);

    sp = krb5_storage_emem();
    krb5_storage_set_byteorder(sp, KRB5_STORAGE_BYTEORDER_LE);
    krb5_store_int32(sp, 0x01020304);
    nerr += compare("Integer (LE)", sp, "\x4\x3\x2\x1", 4);

    sp = krb5_storage_emem();
    krb5_storage_set_byteorder(sp, KRB5_STORAGE_BYTEORDER_BE);
    krb5_store_int32(sp, 0x01020304);
    nerr += compare("Integer (BE)", sp, "\x1\x2\x3\x4", 4);

    sp = krb5_storage_emem();
    krb5_storage_set_byteorder(sp, KRB5_STORAGE_BYTEORDER_HOST);
    krb5_store_int32(sp, 0x01020304);
    {
 int test = 1;
 void *data;
 if(*(char*)&test)
     data = "\x4\x3\x2\x1";
 else
     data = "\x1\x2\x3\x4";
 nerr += compare("Integer (host)", sp, data, 4);
    }

    sp = krb5_storage_emem();
    krb5_make_principal(context, &principal, "TEST", "foobar", ((void*)0));
    krb5_store_principal(sp, principal);
    krb5_free_principal(context, principal);
    nerr += compare("Principal", sp, "\x0\x0\x0\x1"
      "\x0\x0\x0\x1"
      "\x0\x0\x0\x4TEST"
      "\x0\x0\x0\x6""foobar", 26);

    krb5_free_context(context);

    return nerr ? 1 : 0;
}
