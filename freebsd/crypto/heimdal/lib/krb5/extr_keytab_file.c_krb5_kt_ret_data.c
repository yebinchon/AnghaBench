
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int krb5_storage ;
typedef int krb5_error_code ;
struct TYPE_3__ {int length; int * data; } ;
typedef TYPE_1__ krb5_data ;
typedef int krb5_context ;
typedef int int16_t ;


 int ENOMEM ;
 int KRB5_KT_END ;
 int N_ (char*,char*) ;
 int errno ;
 int krb5_ret_int16 (int *,int*) ;
 int krb5_set_error_message (int ,int,int ) ;
 int krb5_storage_read (int *,int *,int) ;
 int * malloc (int) ;

__attribute__((used)) static krb5_error_code
krb5_kt_ret_data(krb5_context context,
   krb5_storage *sp,
   krb5_data *data)
{
    int ret;
    int16_t size;
    ret = krb5_ret_int16(sp, &size);
    if(ret)
 return ret;
    data->length = size;
    data->data = malloc(size);
    if (data->data == ((void*)0)) {
 krb5_set_error_message(context, ENOMEM, N_("malloc: out of memory", ""));
 return ENOMEM;
    }
    ret = krb5_storage_read(sp, data->data, size);
    if(ret != size)
 return (ret < 0)? errno : KRB5_KT_END;
    return 0;
}
