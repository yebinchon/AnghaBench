
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct _krb5_key_data {int dummy; } ;
typedef int krb5_error_code ;
typedef int krb5_context ;
struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ checksum; } ;
typedef TYPE_2__ Checksum ;


 int EVP_Digest (void const*,size_t,int ,int *,int ,int *) ;
 int EVP_md5 () ;
 int krb5_abortx (int ,char*) ;

__attribute__((used)) static krb5_error_code
RSA_MD5_checksum(krb5_context context,
   struct _krb5_key_data *key,
   const void *data,
   size_t len,
   unsigned usage,
   Checksum *C)
{
    if (EVP_Digest(data, len, C->checksum.data, ((void*)0), EVP_md5(), ((void*)0)) != 1)
 krb5_abortx(context, "md5 checksum failed");
    return 0;
}
