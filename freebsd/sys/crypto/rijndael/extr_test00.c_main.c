
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int keyInstance ;
typedef int cipherInstance ;


 int DIR_DECRYPT ;
 int LL ;
 int MODE_CBC ;
 int fprintf (int ,char*,int) ;
 int printf (char*,int) ;
 int putchar (char) ;
 int rijndael_blockDecrypt (int *,int *,int*,int,int*) ;
 int rijndael_cipherInit (int *,int ,int *) ;
 int rijndael_makeKey (int *,int ,int,int*) ;
 int stderr ;

int
main(int argc, char **argv)
{
 keyInstance ki;
 cipherInstance ci;
 uint8_t key[16];
 uint8_t in[LL];
 uint8_t out[LL];
 int i, j;

 rijndael_cipherInit(&ci, MODE_CBC, ((void*)0));
 for (i = 0; i < 16; i++)
  key[i] = i;
 rijndael_makeKey(&ki, DIR_DECRYPT, 128, key);
 for (i = 0; i < LL; i++)
  in[i] = i;
 rijndael_blockDecrypt(&ci, &ki, in, LL * 8, out);
 for (i = 0; i < LL; i++)
  printf("%02x", out[i]);
 putchar('\n');
 rijndael_blockDecrypt(&ci, &ki, in, LL * 8, in);
 j = 0;
 for (i = 0; i < LL; i++) {
  printf("%02x", in[i]);
  if (in[i] != out[i])
   j++;
 }
 putchar('\n');
 if (j != 0) {
  fprintf(stderr,
      "Error: inplace decryption fails in %d places\n", j);
  return (1);
 } else {
  return (0);
 }
}
