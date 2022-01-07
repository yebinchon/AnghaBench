
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;


 int LE_READ_2 (int const*) ;
 int printf (char*,...) ;
 scalar_t__ verbose ;
 char* wpa_cipher (int const*) ;
 int wpa_keymgmt (int const*) ;

__attribute__((used)) static void
printwpaie(const char *tag, const u_int8_t *ie, size_t ielen, int maxlen)
{
 u_int8_t len = ie[1];

 printf("%s", tag);
 if (verbose) {
  const char *sep;
  int n;

  ie += 6, len -= 4;

  printf("<v%u", LE_READ_2(ie));
  ie += 2, len -= 2;

  printf(" mc:%s", wpa_cipher(ie));
  ie += 4, len -= 4;


  n = LE_READ_2(ie);
  ie += 2, len -= 2;
  sep = " uc:";
  for (; n > 0; n--) {
   printf("%s%s", sep, wpa_cipher(ie));
   ie += 4, len -= 4;
   sep = "+";
  }


  n = LE_READ_2(ie);
  ie += 2, len -= 2;
  sep = " km:";
  for (; n > 0; n--) {
   printf("%s%s", sep, wpa_keymgmt(ie));
   ie += 4, len -= 4;
   sep = "+";
  }

  if (len > 2)
   printf(", caps 0x%x", LE_READ_2(ie));
  printf(">");
 }
}
