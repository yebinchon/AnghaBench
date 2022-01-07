
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_char ;


 int * PADLOCK_ALIGN (int *) ;
 int SHA1_HASH_LEN ;
 int padlock_output_block (int*,int*,int) ;

__attribute__((used)) static void
padlock_do_sha1(const u_char *in, u_char *out, int count)
{
 u_char buf[128+16];
 u_char *result = PADLOCK_ALIGN(buf);

 ((uint32_t *)result)[0] = 0x67452301;
 ((uint32_t *)result)[1] = 0xEFCDAB89;
 ((uint32_t *)result)[2] = 0x98BADCFE;
 ((uint32_t *)result)[3] = 0x10325476;
 ((uint32_t *)result)[4] = 0xC3D2E1F0;
 padlock_output_block((uint32_t *)result, (uint32_t *)out,
     SHA1_HASH_LEN / sizeof(uint32_t));
}
