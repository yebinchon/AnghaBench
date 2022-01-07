
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t length; int * data; } ;
struct TYPE_4__ {TYPE_1__ saltvalue; int salttype; } ;
struct pa_info_data {int * s2kparams; TYPE_2__ salt; int etype; } ;
typedef int krb5_salttype ;
typedef scalar_t__ krb5_error_code ;
typedef int krb5_enctype ;
typedef int krb5_data ;
typedef int krb5_context ;


 scalar_t__ ENOMEM ;
 int krb5_clear_error_message (int ) ;
 scalar_t__ krb5_copy_data (int ,int *,int **) ;
 int krb5_free_salt (int ,TYPE_2__) ;
 int * malloc (size_t) ;
 int memcpy (int *,void*,size_t) ;

__attribute__((used)) static krb5_error_code
set_paid(struct pa_info_data *paid, krb5_context context,
  krb5_enctype etype,
  krb5_salttype salttype, void *salt_string, size_t salt_len,
  krb5_data *s2kparams)
{
    paid->etype = etype;
    paid->salt.salttype = salttype;
    paid->salt.saltvalue.data = malloc(salt_len + 1);
    if (paid->salt.saltvalue.data == ((void*)0)) {
 krb5_clear_error_message(context);
 return ENOMEM;
    }
    memcpy(paid->salt.saltvalue.data, salt_string, salt_len);
    ((char *)paid->salt.saltvalue.data)[salt_len] = '\0';
    paid->salt.saltvalue.length = salt_len;
    if (s2kparams) {
 krb5_error_code ret;

 ret = krb5_copy_data(context, s2kparams, &paid->s2kparams);
 if (ret) {
     krb5_clear_error_message(context);
     krb5_free_salt(context, paid->salt);
     return ret;
 }
    } else
 paid->s2kparams = ((void*)0);

    return 0;
}
