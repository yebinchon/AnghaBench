
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Der_type ;
typedef int Der_class ;


 int der_get_length (unsigned char const*,size_t,size_t*,size_t*) ;
 int der_match_tag2 (unsigned char const*,size_t,int ,int *,unsigned int,size_t*) ;

int
der_match_tag_and_length (const unsigned char *p, size_t len,
     Der_class class, Der_type *type, unsigned int tag,
     size_t *length_ret, size_t *size)
{
    size_t l, ret = 0;
    int e;

    e = der_match_tag2 (p, len, class, type, tag, &l);
    if (e) return e;
    p += l;
    len -= l;
    ret += l;
    e = der_get_length (p, len, length_ret, &l);
    if (e) return e;
    if(size) *size = ret + l;
    return 0;
}
