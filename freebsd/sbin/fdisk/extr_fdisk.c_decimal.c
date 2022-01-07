
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint32_t ;


 int LBUF ;
 int exit (int) ;
 int fflush (int ) ;
 int * fgets (char*,int ,int ) ;
 char* lbuf ;
 int printf (char*,char const*,...) ;
 int stdin ;
 int stdout ;
 int strlen (char*) ;

__attribute__((used)) static int
decimal(const char *str, int *num, int deflt, uint32_t maxval)
{
 long long acc;
 int c;
 char *cp;

 while (1) {
  acc = 0;
  printf("Supply a decimal value for \"%s\" [%d] ", str, deflt);
  fflush(stdout);
  if (fgets(lbuf, LBUF, stdin) == ((void*)0))
   exit(1);
  lbuf[strlen(lbuf)-1] = 0;

  if (!*lbuf)
   return 0;

  cp = lbuf;
  while ((c = *cp) && (c == ' ' || c == '\t')) cp++;
  if (!c)
   return 0;
  while ((c = *cp++)) {
   if (c <= '9' && c >= '0') {
    if (acc <= maxval || maxval == 0)
     acc = acc * 10 + c - '0';
   } else
    break;
  }
  if (c == ' ' || c == '\t')
   while ((c = *cp) && (c == ' ' || c == '\t')) cp++;
  if (!c) {
   if (maxval > 0 && acc > maxval) {
    acc = maxval;
    printf("%s exceeds maximum value allowed for "
      "this field. The value has been reduced "
      "to %lld\n", lbuf, acc);
   }
   *num = acc;
   return 1;
  } else
   printf("%s is an invalid decimal number.  Try again.\n",
    lbuf);
 }
}
