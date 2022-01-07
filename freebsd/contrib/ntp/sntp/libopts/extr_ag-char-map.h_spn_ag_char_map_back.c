
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char** ag_char_map_spanners ;
 unsigned char* calc_ag_char_map_spanners (unsigned int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline char *
spn_ag_char_map_back(char const * s, char const * e, unsigned int mask_ix)
{
    unsigned char const * v = ag_char_map_spanners[mask_ix];
    if (v == ((void*)0))
        v = calc_ag_char_map_spanners(mask_ix);
    if (s >= e) e = s + strlen(s);
    while ((e > s) && v[(unsigned char)e[-1]]) e--;
    return (char *)(uintptr_t)e;
}
