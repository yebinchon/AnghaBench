
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,...) ;

__attribute__((used)) static char *
format_e3_cv (unsigned long cv, unsigned long baud, unsigned long atime)
{
 static char buf[80];

 if (!cv || !baud || !atime)
  sprintf (buf, "         -         ");
 else
  sprintf (buf, "%10lu (%.1e)", cv, (double)cv/baud/atime);
 return buf;
}
