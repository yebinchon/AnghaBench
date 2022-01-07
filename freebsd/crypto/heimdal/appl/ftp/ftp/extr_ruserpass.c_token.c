
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct toktab {int tval; scalar_t__ tokstr; } ;


 int EOF ;
 int ID ;
 int cfile ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int getc (int ) ;
 int strcmp (scalar_t__,scalar_t__*) ;
 struct toktab* toktab ;
 scalar_t__* tokval ;

__attribute__((used)) static int
token(void)
{
 char *cp;
 int c;
 struct toktab *t;

 if (feof(cfile) || ferror(cfile))
  return (0);
 while ((c = getc(cfile)) != EOF &&
     (c == '\n' || c == '\t' || c == ' ' || c == ','))
  continue;
 if (c == EOF)
  return (0);
 cp = tokval;
 if (c == '"') {
  while ((c = getc(cfile)) != EOF && c != '"') {
   if (c == '\\')
    c = getc(cfile);
   *cp++ = c;
  }
 } else {
  *cp++ = c;
  while ((c = getc(cfile)) != EOF
      && c != '\n' && c != '\t' && c != ' ' && c != ',') {
   if (c == '\\')
    c = getc(cfile);
   *cp++ = c;
  }
 }
 *cp = 0;
 if (tokval[0] == 0)
  return (0);
 for (t = toktab; t->tokstr; t++)
  if (!strcmp(t->tokstr, tokval))
   return (t->tval);
 return (ID);
}
