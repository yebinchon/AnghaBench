
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int LE_READ_2 (int const*) ;
 int printf (char*,...) ;
 char* rsn_cipher (int const*) ;
 int rsn_keymgmt (int const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printrsnie(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  const char *sep;
  int n;

  ie += 2, ielen -= 2;

  printf("<v%u", LE_READ_2(ie));
  ie += 2, ielen -= 2;

  printf(" mc:%s", rsn_cipher(ie));
  ie += 4, ielen -= 4;


  n = LE_READ_2(ie);
  ie += 2, ielen -= 2;
  sep = " uc:";
  for (; n > 0; n--) {
   printf("%s%s", sep, rsn_cipher(ie));
   ie += 4, ielen -= 4;
   sep = "+";
  }


  n = LE_READ_2(ie);
  ie += 2, ielen -= 2;
  sep = " km:";
  for (; n > 0; n--) {
   printf("%s%s", sep, rsn_keymgmt(ie));
   ie += 4, ielen -= 4;
   sep = "+";
  }

  if (ielen > 2)
   printf(", caps 0x%x", LE_READ_2(ie));

  printf(">");
 }
}
