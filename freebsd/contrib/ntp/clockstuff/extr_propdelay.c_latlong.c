
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double atof (char*) ;
 int debug ;
 int printf (char*,char*,double) ;
 char* strchr (char*,char) ;

__attribute__((used)) static double
latlong(
 char *str,
 int islat
 )
{
 register char *cp;
 register char *bp;
 double arg;
 double divby;
 int isneg;
 char buf[32];
 char *colon;

 if (islat) {



  if (*str == 'N' || *str == 'n')
      isneg = 0;
  else if (*str == 'S' || *str == 's')
      isneg = 1;
  else
      isneg = -1;
 } else {



  if (*str == 'E' || *str == 'e')
      isneg = 0;
  else if (*str == 'W' || *str == 'w')
      isneg = 1;
  else
      isneg = -1;
 }

 if (isneg >= 0)
     str++;

 colon = strchr(str, ':');
 if (colon != ((void*)0)) {



  cp = str;
  bp = buf;
  while (cp < colon)
      *bp++ = *cp++;
  *bp = '\0';
  cp++;
  arg = atof(buf);
  divby = 60.0;
  colon = strchr(cp, ':');
  if (colon != ((void*)0)) {
   bp = buf;
   while (cp < colon)
       *bp++ = *cp++;
   *bp = '\0';
   cp++;
   arg += atof(buf) / divby;
   divby = 3600.0;
  }
  if (*cp != '\0')
      arg += atof(cp) / divby;
 } else {
  arg = atof(str);
 }

 if (isneg == 1)
     arg = -arg;

 if (debug > 2)
     (void) printf("latitude/longitude %s = %g\n", str, arg);

 return arg;
}
