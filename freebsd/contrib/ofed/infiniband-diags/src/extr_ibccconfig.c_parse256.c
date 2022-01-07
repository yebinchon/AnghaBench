
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int isxdigit (char) ;
 int memcpy (char*,char*,int) ;
 char* parseint (char*,int *,int) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static char *parse256(char *arg, uint8_t *buf)
{
 int numdigits = 0;
 int startindex;
 char *ptr;
 int i;

 if (!strncmp(arg, "0x", 2) || !strncmp(arg, "0X", 2))
  arg += 2;

 for (ptr = arg; *ptr; ptr++) {
  if (!isxdigit(*ptr))
   return "invalid hex digit read";
  numdigits++;
 }

 if (numdigits > 64)
  return "hex code too long";





 startindex = 32 - ((numdigits - 1) / 2) - 1;

 for (i = startindex; i <= 31; i++) {
  char tmp[3] = { 0 };
  uint32_t tmpint;
  char *errstr;




  if (i == startindex && numdigits % 2) {
   memcpy(tmp, arg, 1);
   arg++;
  }
  else {
   memcpy(tmp, arg, 2);
   arg += 2;
  }

  if ((errstr = parseint(tmp, &tmpint, 1)))
   return errstr;
  buf[i] = tmpint;
 }

 return ((void*)0);
}
