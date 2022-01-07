
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* heim_general_string ;


 int ASN1_BAD_CHARACTER ;
 int ASN1_BAD_LENGTH ;
 int ENOMEM ;
 char* malloc (size_t) ;
 unsigned char* memchr (unsigned char const*,int ,size_t) ;
 int memcpy (char*,unsigned char const*,size_t) ;

int
der_get_general_string (const unsigned char *p, size_t len,
   heim_general_string *str, size_t *size)
{
    const unsigned char *p1;
    char *s;

    p1 = memchr(p, 0, len);
    if (p1 != ((void*)0)) {





 while ((size_t)(p1 - p) < len && *p1 == '\0')
     p1++;
       if ((size_t)(p1 - p) != len)
     return ASN1_BAD_CHARACTER;
    }
    if (len > len + 1)
 return ASN1_BAD_LENGTH;

    s = malloc (len + 1);
    if (s == ((void*)0))
 return ENOMEM;
    memcpy (s, p, len);
    s[len] = '\0';
    *str = s;
    if(size) *size = len;
    return 0;
}
