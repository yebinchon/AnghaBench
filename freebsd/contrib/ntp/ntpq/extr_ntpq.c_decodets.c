
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int l_fp ;


 int COUNTOF (char*) ;
 scalar_t__ atolfp (char*,int *) ;
 int hextolfp (char*,int *) ;
 int rtdatetolfp (char*,int *) ;

int
decodets(
 char *str,
 l_fp *lfp
 )
{
 char *cp;
 char buf[30];
 size_t b;




 if (*str == '0' && (*(str+1) == 'x' || *(str+1) == 'X'))
  return hextolfp(str+2, lfp);




 if (*str == '"') {
  cp = str + 1;
  b = 0;
  while ('"' != *cp && '\0' != *cp &&
         b < COUNTOF(buf) - 1)
   buf[b++] = *cp++;
  buf[b] = '\0';
  return rtdatetolfp(buf, lfp);
 }





 if ((*str >= 'A' && *str <= 'F') || (*str >= 'a' && *str <= 'f'))
  return hextolfp(str, lfp);





 if (atolfp(str, lfp))
  return 1;

 return rtdatetolfp(str, lfp);
}
