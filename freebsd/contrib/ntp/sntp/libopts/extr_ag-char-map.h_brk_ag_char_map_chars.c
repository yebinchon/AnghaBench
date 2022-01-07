
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char** ag_char_map_spanners ;
 unsigned char* calc_ag_char_map_spanners (unsigned int) ;

__attribute__((used)) static inline char *
brk_ag_char_map_chars(char const * p, unsigned int mask_ix)
{
    unsigned char const * v = ag_char_map_spanners[mask_ix];
    if (v == ((void*)0))
        v = calc_ag_char_map_spanners(mask_ix);
    while ((*p != '\0') && (! v[(unsigned char)*p])) p++;
    return (char *)(uintptr_t)p;
}
