
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ag_char_map_mask_t ;


 int* ag_char_map_table ;

__attribute__((used)) static inline int
is_ag_char_map_char(char ch, ag_char_map_mask_t mask)
{
    unsigned int ix = (unsigned char)ch;
    return ((ix < 128) && ((ag_char_map_table[ix] & mask) != 0));
}
