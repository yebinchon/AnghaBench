
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int ssize_t ;


 int der_get_length (int const*,size_t,size_t*,size_t*) ;

ssize_t
_gsskrb5_get_mech (const u_char *ptr,
        size_t total_len,
        const u_char **mech_ret)
{
    size_t len, len_len, mech_len, foo;
    const u_char *p = ptr;
    int e;

    if (total_len < 1)
 return -1;
    if (*p++ != 0x60)
 return -1;
    e = der_get_length (p, total_len - 1, &len, &len_len);
    if (e || 1 + len_len + len != total_len)
 return -1;
    p += len_len;
    if (*p++ != 0x06)
 return -1;
    e = der_get_length (p, total_len - 1 - len_len - 1,
   &mech_len, &foo);
    if (e)
 return -1;
    p += foo;
    *mech_ret = p;
    return mech_len;
}
