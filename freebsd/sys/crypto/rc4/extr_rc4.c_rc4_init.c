
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
struct rc4_state {size_t* perm; scalar_t__ index2; scalar_t__ index1; } ;


 int swap_bytes (size_t const*,size_t const*) ;

void
rc4_init(struct rc4_state *const state, const u_char *key, int keylen)
{
 u_char j;
 int i, k;


 for (i = 0; i < 256; i++)
  state->perm[i] = (u_char)i;
 state->index1 = 0;
 state->index2 = 0;


 for (j = i = k = 0; i < 256; i++) {
  j += state->perm[i] + key[k];
  swap_bytes(&state->perm[i], &state->perm[j]);
  if (++k >= keylen)
   k = 0;
 }
}
