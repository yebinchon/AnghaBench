
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Der_type ;
typedef int Der_class ;


 int der_put_length (unsigned char*,size_t,size_t,size_t*) ;
 int der_put_tag (unsigned char*,size_t,int ,int ,unsigned int,size_t*) ;

int
der_put_length_and_tag (unsigned char *p, size_t len, size_t len_val,
   Der_class class, Der_type type,
   unsigned int tag, size_t *size)
{
    size_t ret = 0;
    size_t l;
    int e;

    e = der_put_length (p, len, len_val, &l);
    if(e)
 return e;
    p -= l;
    len -= l;
    ret += l;
    e = der_put_tag (p, len, class, type, tag, &l);
    if(e)
 return e;

    ret += l;
    *size = ret;
    return 0;
}
