
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SHA1_MAC_LEN ;
 int add_byte_array_mod (int *,int *,unsigned int) ;
 int inc_byte_array (int *,unsigned int) ;
 int os_free (int *) ;
 int * os_malloc (unsigned int) ;
 int os_memcpy (int *,int *,unsigned int) ;
 int os_memset (int *,int ,unsigned int) ;
 scalar_t__ sha1_vector (int,int const**,size_t*,int *) ;

__attribute__((used)) static int pkcs12_key_gen(const u8 *pw, size_t pw_len, const u8 *salt,
     size_t salt_len, u8 id, unsigned int iter,
     size_t out_len, u8 *out)
{
 unsigned int u, v, S_len, P_len, i;
 u8 *D = ((void*)0), *I = ((void*)0), *B = ((void*)0), *pos;
 int res = -1;


 u = SHA1_MAC_LEN;
 v = 64;


 D = os_malloc(v);
 if (!D)
  goto done;
 os_memset(D, id, v);


 S_len = v * ((salt_len + v - 1) / v);
 P_len = v * ((pw_len + v - 1) / v);
 I = os_malloc(S_len + P_len);
 if (!I)
  goto done;
 pos = I;
 if (salt_len) {
  for (i = 0; i < S_len; i++)
   *pos++ = salt[i % salt_len];
 }
 if (pw_len) {
  for (i = 0; i < P_len; i++)
   *pos++ = pw[i % pw_len];
 }

 B = os_malloc(v);
 if (!B)
  goto done;

 for (;;) {
  u8 hash[SHA1_MAC_LEN];
  const u8 *addr[2];
  size_t len[2];

  addr[0] = D;
  len[0] = v;
  addr[1] = I;
  len[1] = S_len + P_len;
  if (sha1_vector(2, addr, len, hash) < 0)
   goto done;

  addr[0] = hash;
  len[0] = SHA1_MAC_LEN;
  for (i = 1; i < iter; i++) {
   if (sha1_vector(1, addr, len, hash) < 0)
    goto done;
  }

  if (out_len <= u) {
   os_memcpy(out, hash, out_len);
   res = 0;
   goto done;
  }

  os_memcpy(out, hash, u);
  out += u;
  out_len -= u;



  for (i = 0; i < v; i++)
   B[i] = hash[i % u];
  inc_byte_array(B, v);
  for (i = 0; i < S_len + P_len; i += v)
   add_byte_array_mod(&I[i], B, v);
 }

done:
 os_free(B);
 os_free(I);
 os_free(D);
 return res;
}
