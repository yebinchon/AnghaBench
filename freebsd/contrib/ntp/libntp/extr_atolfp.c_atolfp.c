
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int l_ui; int l_uf; } ;
typedef TYPE_1__ l_fp ;


 int M_NEG (int,int) ;
 int REQUIRE (int ) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 char* strchr (char const*,char const) ;
 int* ten_to_the_n ;

int
atolfp(
 const char *str,
 l_fp *lfp
 )
{
 register const char *cp;
 register u_long dec_i;
 register u_long dec_f;
 char *ind;
 int ndec;
 int isneg;
 static const char *digits = "0123456789";

 REQUIRE(str != ((void*)0));

 isneg = 0;
 dec_i = dec_f = 0;
 ndec = 0;
 cp = str;






 while (isspace((unsigned char)*cp))
     cp++;

 if (*cp == '-') {
  cp++;
  isneg = 1;
 }

 if (*cp == '+')
     cp++;

 if (*cp != '.' && !isdigit((unsigned char)*cp))
     return 0;

 while (*cp != '\0' && (ind = strchr(digits, *cp)) != ((void*)0)) {
  dec_i = (dec_i << 3) + (dec_i << 1);
  dec_i += (u_long)(ind - digits);
  cp++;
 }

 if (*cp != '\0' && !isspace((unsigned char)*cp)) {
  if (*cp++ != '.')
      return 0;

  while (ndec < 9 && *cp != '\0'
         && (ind = strchr(digits, *cp)) != ((void*)0)) {
   ndec++;
   dec_f = (dec_f << 3) + (dec_f << 1);
   dec_f += (u_long)(ind - digits);
   cp++;
  }

  while (isdigit((unsigned char)*cp))
      cp++;

  if (*cp != '\0' && !isspace((unsigned char)*cp))
      return 0;
 }

 if (ndec > 0) {
  register u_long tmp;
  register u_long bit;
  register u_long ten_fact;

  ten_fact = ten_to_the_n[ndec];

  tmp = 0;
  bit = 0x80000000;
  while (bit != 0) {
   dec_f <<= 1;
   if (dec_f >= ten_fact) {
    tmp |= bit;
    dec_f -= ten_fact;
   }
   bit >>= 1;
  }
  if ((dec_f << 1) > ten_fact)
      tmp++;
  dec_f = tmp;
 }

 if (isneg)
     M_NEG(dec_i, dec_f);

 lfp->l_ui = dec_i;
 lfp->l_uf = dec_f;
 return 1;
}
