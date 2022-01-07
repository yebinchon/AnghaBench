
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERANGE ;
 int assert (int) ;
 scalar_t__ errno ;
 size_t strlen (char const*) ;
 float strtof (char const*,char**) ;
 scalar_t__ strtol (char const*,char**,int) ;

__attribute__((used)) static int
strIKtoi(const char *str, char **endptrp, const char *fmt)
{
 int kelv;
 float temp;
 size_t len;
 const char *p;
 int prec, i;

 assert(errno == 0);

 len = strlen(str);

 assert(len > 0);
 if (fmt[2] != '\0' && fmt[2] >= '0' && fmt[2] <= '9')
  prec = fmt[2] - '0';
 else
  prec = 1;
 p = &str[len - 1];
 if (*p == 'C' || *p == 'F' || *p == 'K') {
  temp = strtof(str, endptrp);
  if (*endptrp != str && *endptrp == p && errno == 0) {
   if (*p == 'F')
    temp = (temp - 32) * 5 / 9;
   *endptrp = ((void*)0);
   if (*p != 'K')
    temp += 273.15;
   for (i = 0; i < prec; i++)
    temp *= 10.0;
   return ((int)(temp + 0.5));
  }
 } else {

  kelv = (int)strtol(str, endptrp, 10);
  if (*endptrp != str && *endptrp == p && errno == 0) {
   *endptrp = ((void*)0);
   return (kelv);
  }
 }

 errno = ERANGE;
 return (0);
}
