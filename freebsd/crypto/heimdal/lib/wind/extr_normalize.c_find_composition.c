
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct canon_node {int val; unsigned int next_start; unsigned int next_end; unsigned int next_offset; } ;


 unsigned short* _wind_canon_next_table ;
 struct canon_node* _wind_canon_table ;
 int hangul_composition (int const*,unsigned int) ;

__attribute__((used)) static uint32_t
find_composition(const uint32_t *in, unsigned in_len)
{
    unsigned short canon_index = 0;
    uint32_t cur;
    unsigned n = 0;

    cur = hangul_composition(in, in_len);
    if (cur)
 return cur;

    do {
 const struct canon_node *c = &_wind_canon_table[canon_index];
 unsigned i;

 if (n % 5 == 0) {
     cur = *in++;
     if (in_len-- == 0)
  return c->val;
 }

 i = cur >> 16;
 if (i < c->next_start || i >= c->next_end)
     canon_index = 0;
 else
     canon_index =
  _wind_canon_next_table[c->next_offset + i - c->next_start];
 if (canon_index != 0) {
     cur = (cur << 4) & 0xFFFFF;
     ++n;
 }
    } while (canon_index != 0);
    return 0;
}
