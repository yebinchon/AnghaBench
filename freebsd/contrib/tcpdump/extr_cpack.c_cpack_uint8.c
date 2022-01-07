
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cpack_state {int c_buf; size_t c_len; int * c_next; } ;



int
cpack_uint8(struct cpack_state *cs, uint8_t *u)
{

 if ((size_t)(cs->c_next - cs->c_buf) >= cs->c_len)
  return -1;

 *u = *cs->c_next;


 cs->c_next++;
 return 0;
}
