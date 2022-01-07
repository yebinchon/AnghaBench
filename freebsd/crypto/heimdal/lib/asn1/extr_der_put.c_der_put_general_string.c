
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int heim_general_string ;


 int ASN1_OVERFLOW ;
 int memcpy (unsigned char*,int const,size_t) ;
 size_t strlen (int const) ;

int
der_put_general_string (unsigned char *p, size_t len,
   const heim_general_string *str, size_t *size)
{
    size_t slen = strlen(*str);

    if (len < slen)
 return ASN1_OVERFLOW;
    p -= slen;
    memcpy (p+1, *str, slen);
    *size = slen;
    return 0;
}
