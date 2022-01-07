
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* gss_OID ;
struct TYPE_3__ {size_t length; char* elements; } ;


 int INSIST (int ) ;
 char* malloc (size_t) ;
 scalar_t__ memcmp (unsigned char const*,char*,int) ;
 int memcpy (char*,unsigned char const*,size_t) ;

__attribute__((used)) static int
parse_name(const unsigned char *p, size_t len,
    const gss_OID oid, char **name)
{
    size_t l;

    if (len < 4)
 return 1;


    if (memcmp(p, "\x04\x01", 2) != 0)
 return 1;
    len -= 2;
    p += 2;


    l = (p[0] << 8) | p[1];
    len -= 2;
    p += 2;
    if (l < 2 || len < l)
 return 1;


    if (p[0] != 6 || p[1] != l - 2)
 return 1;
    p += 2;
    l -= 2;
    len -= 2;


    if (l != oid->length || memcmp(p, oid->elements, oid->length) != 0)
 return 1;
    len -= l;
    p += l;


    if (len < 4)
 return 1;
    l = p[0] << 24 | p[1] << 16 | p[2] << 8 | p[3];
    len -= 4;
    p += 4;


    if (len != l)
 return 1;

    *name = malloc(l + 1);
    INSIST(*name != ((void*)0));
    memcpy(*name, p, l);
    (*name)[l] = '\0';

    return 0;
}
