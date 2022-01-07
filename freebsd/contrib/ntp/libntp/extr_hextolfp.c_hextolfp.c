
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 scalar_t__ isspace (unsigned char) ;
 char* strchr (char const*,char const) ;

int
hextolfp(
 const char *str,
 l_fp *lfp
 )
{
 register const char *cp;
 register const char *cpstart;
 register u_long dec_i;
 register u_long dec_f;
 char *ind = ((void*)0);
 static const char *digits = "0123456789abcdefABCDEF";

 dec_i = dec_f = 0;
 cp = str;






 while (isspace((unsigned char)*cp))
     cp++;

 cpstart = cp;
 while (*cp != '\0' && (cp - cpstart) < 8 &&
        (ind = strchr(digits, *cp)) != ((void*)0)) {
  dec_i = dec_i << 4;
  dec_i += ((ind - digits) > 15)
   ? (u_long)(ind - digits - 6)
   : (u_long)(ind - digits);
  cp++;
 }

 if ((cp - cpstart) < 8 || ind == ((void*)0))
     return 0;
 if (*cp == '.')
     cp++;

 cpstart = cp;
 while (*cp != '\0' && (cp - cpstart) < 8 &&
        (ind = strchr(digits, *cp)) != ((void*)0)) {
  dec_f = dec_f << 4;
  dec_f += ((ind - digits) > 15)
   ? (u_long)(ind - digits - 6)
   : (u_long)(ind - digits);
  cp++;
 }

 if ((cp - cpstart) < 8 || ind == ((void*)0))
     return 0;

 if (*cp != '\0' && !isspace((unsigned char)*cp))
     return 0;

 lfp->l_ui = dec_i;
 lfp->l_uf = dec_f;
 return 1;
}
