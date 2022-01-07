
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

const char *
ypbinderr_string(int incode)
{
 static char err[80];
 switch (incode) {
 case 0:
  return ("Success");
 case 130:
  return ("Internal ypbind error");
 case 129:
  return ("Domain not bound");
 case 128:
  return ("System resource allocation failure");
 }
 sprintf(err, "Unknown ypbind error: #%d\n", incode);
 return (err);
}
