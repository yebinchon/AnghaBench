
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cpack_state {int c_len; int const* c_buf; int c_next; } ;


 int * cpack_next_boundary (int const*,int ,size_t) ;

const uint8_t *
cpack_align_and_reserve(struct cpack_state *cs, size_t wordsize)
{
 const uint8_t *next;


 next = cpack_next_boundary(cs->c_buf, cs->c_next, wordsize);


 if (next - cs->c_buf + wordsize > cs->c_len)
  return ((void*)0);

 return next;
}
