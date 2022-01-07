
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*,int) ;
 scalar_t__ isprint (int ) ;
 scalar_t__ isspace (int ) ;
 int makeascii (int,char const*,int *) ;
 int pgetc (char const*) ;
 int putc (char const,int *) ;

__attribute__((used)) static void
rawprint(
 int datatype,
 size_t length,
 const char *data,
 int status,
 int quiet,
 FILE *fp
 )
{
 const char *cp;
 const char *cpend;




 cp = data;
 cpend = data + length;

 if (!quiet)
  (void) fprintf(fp, "status=0x%04x,\n", status);

 while (cp < cpend) {
  if (*cp == '\r') {





   if (cp == (cpend - 1) || *(cp + 1) != '\n')
       makeascii(1, cp, fp);
  } else if (isspace(pgetc(cp)) || isprint(pgetc(cp)))
   putc(*cp, fp);
  else
   makeascii(1, cp, fp);
  cp++;
 }
}
