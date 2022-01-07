
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int krb5_storage ;
typedef scalar_t__ krb5_error_code ;


 int CHECK (int ,size_t) ;
 scalar_t__ EINVAL ;
 scalar_t__ ENOMEM ;
 int free (char*) ;
 int krb5_storage_read (int *,char*,size_t) ;
 char* malloc (size_t) ;

__attribute__((used)) static krb5_error_code
ret_string(krb5_storage *sp, int ucs2, size_t len, char **s)
{
    krb5_error_code ret;

    *s = malloc(len + 1);
    if (*s == ((void*)0))
 return ENOMEM;
    CHECK(krb5_storage_read(sp, *s, len), len);

    (*s)[len] = '\0';

    if (ucs2) {
 size_t i;
 for (i = 0; i < len / 2; i++) {
     (*s)[i] = (*s)[i * 2];
     if ((*s)[i * 2 + 1]) {
  free(*s);
  *s = ((void*)0);
  return EINVAL;
     }
 }
 (*s)[i] = '\0';
    }
    ret = 0;
 out:
    return ret;
}
