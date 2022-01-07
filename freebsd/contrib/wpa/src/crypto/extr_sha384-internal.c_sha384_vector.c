
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha384_state {int dummy; } ;


 scalar_t__ sha384_done (struct sha384_state*,int *) ;
 int sha384_init (struct sha384_state*) ;
 scalar_t__ sha384_process (struct sha384_state*,int const*,size_t const) ;

int sha384_vector(size_t num_elem, const u8 *addr[], const size_t *len,
    u8 *mac)
{
 struct sha384_state ctx;
 size_t i;

 sha384_init(&ctx);
 for (i = 0; i < num_elem; i++)
  if (sha384_process(&ctx, addr[i], len[i]))
   return -1;
 if (sha384_done(&ctx, mac))
  return -1;
 return 0;
}
