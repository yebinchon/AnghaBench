
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIRSTTOKEN ;
 int LASTTOKEN ;
 char** printname ;
 int sprintf (char*,char*,int) ;

char *tokname(int n)
{
 static char buf[100];

 if (n < FIRSTTOKEN || n > LASTTOKEN) {
  sprintf(buf, "token %d", n);
  return buf;
 }
 return printname[n-FIRSTTOKEN];
}
