
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_keyblock ;
typedef int krb5_error_code ;
typedef int krb5_context ;


 int krb5_copy_keyblock (int ,int *,int **) ;

__attribute__((used)) static krb5_error_code
copy_key(krb5_context context,
  krb5_keyblock *in,
  krb5_keyblock **out)
{
    if(in)
 return krb5_copy_keyblock(context, in, out);
    *out = ((void*)0);
    return 0;
}
