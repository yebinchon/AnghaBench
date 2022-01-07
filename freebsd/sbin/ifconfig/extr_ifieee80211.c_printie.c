
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int printf (char*,...) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ verbose ;

__attribute__((used)) static void
printie(const char* tag, const uint8_t *ie, size_t ielen, int maxlen)
{
 printf("%s", tag);
 if (verbose) {
  maxlen -= strlen(tag)+2;
  if (2*ielen > maxlen)
   maxlen--;
  printf("<");
  for (; ielen > 0; ie++, ielen--) {
   if (maxlen-- <= 0)
    break;
   printf("%02x", *ie);
  }
  if (ielen != 0)
   printf("-");
  printf(">");
 }
}
