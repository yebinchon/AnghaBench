
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef int krb5_error_code ;
typedef int krb5_context ;
typedef int int16_t ;
typedef char* heim_general_string ;


 int ENOMEM ;
 int KRB5_KT_END ;
 int N_ (char*,char*) ;
 int errno ;
 int krb5_ret_int16 (int *,int*) ;
 int krb5_set_error_message (int ,int,int ) ;
 int krb5_storage_read (int *,char*,int) ;
 char* malloc (int) ;

__attribute__((used)) static krb5_error_code
krb5_kt_ret_string(krb5_context context,
     krb5_storage *sp,
     heim_general_string *data)
{
    int ret;
    int16_t size;
    ret = krb5_ret_int16(sp, &size);
    if(ret)
 return ret;
    *data = malloc(size + 1);
    if (*data == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    ret = krb5_storage_read(sp, *data, size);
    (*data)[size] = '\0';
    if(ret != size)
 return (ret < 0)? errno : KRB5_KT_END;
    return 0;
}
