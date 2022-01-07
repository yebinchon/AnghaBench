
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HIGH_BITS ;
 unsigned int SEVENTYFIVE ;
 unsigned int TWELVE ;

unsigned
hashjpw(const char *ss)
{
    unsigned h = 0;
    unsigned g;
    const unsigned char *s = (const unsigned char *)ss;

    for (; *s; ++s) {
 h = (h << TWELVE) + *s;
 if ((g = h & HIGH_BITS))
     h = (h ^ (g >> SEVENTYFIVE)) & ~HIGH_BITS;
    }
    return h;
}
