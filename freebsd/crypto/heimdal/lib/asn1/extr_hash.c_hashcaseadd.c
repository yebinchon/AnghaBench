
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 scalar_t__ toupper (unsigned char) ;

unsigned
hashcaseadd(const char *s)
{
    unsigned i;

    assert(s);

    for (i = 0; *s; ++s)
 i += toupper((unsigned char)*s);
    return i;
}
