
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ MAXOUTLINE ;
 int fputs (char const*,int *) ;
 scalar_t__ out_chars ;
 scalar_t__ out_linecount ;
 int putc (char,int *) ;
 int size2int_sat (scalar_t__) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static void
output(
 FILE *fp,
 const char *name,
 const char *value
 )
{
 int len;


 len = size2int_sat(strlen(name) + 1 + strlen(value));

 if (out_chars != 0) {
  out_chars += 2;
  if ((out_linecount + len + 2) > MAXOUTLINE) {
   fputs(",\n", fp);
   out_linecount = 0;
  } else {
   fputs(", ", fp);
   out_linecount += 2;
  }
 }

 fputs(name, fp);
 putc('=', fp);
 fputs(value, fp);
 out_chars += len;
 out_linecount += len;
}
