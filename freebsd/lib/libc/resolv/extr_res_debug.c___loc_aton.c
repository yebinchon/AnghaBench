
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u_int8_t ;
typedef int u_int32_t ;
typedef int u_char ;


 int PUTLONG (int,int *) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int latlon2ul (char const**,int*) ;
 void* precsize_aton (char const**) ;
 int strlen (char const*) ;

int
loc_aton(const char *ascii, u_char *binary)
{
 const char *cp, *maxcp;
 u_char *bcp;

 u_int32_t latit = 0, longit = 0, alt = 0;
 u_int32_t lltemp1 = 0, lltemp2 = 0;
 int altmeters = 0, altfrac = 0, altsign = 1;
 u_int8_t hp = 0x16;
 u_int8_t vp = 0x13;
 u_int8_t siz = 0x12;
 int which1 = 0, which2 = 0;

 cp = ascii;
 maxcp = cp + strlen(ascii);

 lltemp1 = latlon2ul(&cp, &which1);

 lltemp2 = latlon2ul(&cp, &which2);

 switch (which1 + which2) {
 case 3:
  if ((which1 == 1) && (which2 == 2)) {
   latit = lltemp1;
   longit = lltemp2;
  } else if ((which1 == 2) && (which2 == 1)) {
   longit = lltemp1;
   latit = lltemp2;
  } else {
   return (0);
  }
  break;
 default:
  return (0);
 }


 if (*cp == '-') {
  altsign = -1;
  cp++;
 }

 if (*cp == '+')
  cp++;

 while (isdigit((unsigned char)*cp))
  altmeters = altmeters * 10 + (*cp++ - '0');

 if (*cp == '.') {
  cp++;
  if (isdigit((unsigned char)*cp)) {
   altfrac = (*cp++ - '0') * 10;
   if (isdigit((unsigned char)*cp)) {
    altfrac += (*cp++ - '0');
   }
  }
 }

 alt = (10000000 + (altsign * (altmeters * 100 + altfrac)));

 while (!isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 while (isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 if (cp >= maxcp)
  goto defaults;

 siz = precsize_aton(&cp);

 while (!isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 while (isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 if (cp >= maxcp)
  goto defaults;

 hp = precsize_aton(&cp);

 while (!isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 while (isspace((unsigned char)*cp) && (cp < maxcp))
  cp++;

 if (cp >= maxcp)
  goto defaults;

 vp = precsize_aton(&cp);

 defaults:

 bcp = binary;
 *bcp++ = (u_int8_t) 0;
 *bcp++ = siz;
 *bcp++ = hp;
 *bcp++ = vp;
 PUTLONG(latit,bcp);
 PUTLONG(longit,bcp);
 PUTLONG(alt,bcp);

 return (16);
}
