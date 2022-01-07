
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sha512_state {int dummy; } ;


 scalar_t__ sha512_done (struct sha512_state*,int *) ;
 int sha512_init (struct sha512_state*) ;
 scalar_t__ sha512_process (struct sha512_state*,int const*,size_t const) ;

int sha512_vector(size_t num_elem, const u8 *addr[], const size_t *len,
    u8 *mac)
{
 struct sha512_state ctx;
 size_t i;

 sha512_init(&ctx);
 for (i = 0; i < num_elem; i++)
  if (sha512_process(&ctx, addr[i], len[i]))
   return -1;
 if (sha512_done(&ctx, mac))
  return -1;
 return 0;
}
