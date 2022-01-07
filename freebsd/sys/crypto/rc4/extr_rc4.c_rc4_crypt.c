
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_char ;
struct rc4_state {size_t index1; size_t index2; size_t* perm; } ;


 int swap_bytes (size_t*,size_t*) ;

void
rc4_crypt(struct rc4_state *const state,
 const u_char *inbuf, u_char *outbuf, int buflen)
{
 int i;
 u_char j;

 for (i = 0; i < buflen; i++) {


  state->index1++;
  state->index2 += state->perm[state->index1];


  swap_bytes(&state->perm[state->index1],
      &state->perm[state->index2]);


  j = state->perm[state->index1] + state->perm[state->index2];
  outbuf[i] = inbuf[i] ^ state->perm[j];
 }
}
