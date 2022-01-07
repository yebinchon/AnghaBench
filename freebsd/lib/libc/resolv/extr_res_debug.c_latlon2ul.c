
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u_int32_t ;


 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static u_int32_t
latlon2ul(const char **latlonstrptr, int *which) {
 const char *cp;
 u_int32_t retval;
 int deg = 0, min = 0, secs = 0, secsfrac = 0;

 cp = *latlonstrptr;

 while (isdigit((unsigned char)*cp))
  deg = deg * 10 + (*cp++ - '0');

 while (isspace((unsigned char)*cp))
  cp++;

 if (!(isdigit((unsigned char)*cp)))
  goto fndhemi;

 while (isdigit((unsigned char)*cp))
  min = min * 10 + (*cp++ - '0');

 while (isspace((unsigned char)*cp))
  cp++;

 if (!(isdigit((unsigned char)*cp)))
  goto fndhemi;

 while (isdigit((unsigned char)*cp))
  secs = secs * 10 + (*cp++ - '0');

 if (*cp == '.') {
  cp++;
  if (isdigit((unsigned char)*cp)) {
   secsfrac = (*cp++ - '0') * 100;
   if (isdigit((unsigned char)*cp)) {
    secsfrac += (*cp++ - '0') * 10;
    if (isdigit((unsigned char)*cp)) {
     secsfrac += (*cp++ - '0');
    }
   }
  }
 }

 while (!isspace((unsigned char)*cp))
  cp++;

 while (isspace((unsigned char)*cp))
  cp++;

 fndhemi:
 switch (*cp) {
 case 'N': case 'n':
 case 'E': case 'e':
  retval = ((unsigned)1<<31)
   + (((((deg * 60) + min) * 60) + secs) * 1000)
   + secsfrac;
  break;
 case 'S': case 's':
 case 'W': case 'w':
  retval = ((unsigned)1<<31)
   - (((((deg * 60) + min) * 60) + secs) * 1000)
   - secsfrac;
  break;
 default:
  retval = 0;
  break;
 }

 switch (*cp) {
 case 'N': case 'n':
 case 'S': case 's':
  *which = 1;
  break;
 case 'E': case 'e':
 case 'W': case 'w':
  *which = 2;
  break;
 default:
  *which = 0;
  break;
 }

 cp++;
 while (!isspace((unsigned char)*cp))
  cp++;

 while (isspace((unsigned char)*cp))
  cp++;

 *latlonstrptr = cp;

 return (retval);
}
