
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static char *
copynext(char *input, char *output)
{
 char *cp, *bp;
 char quote;

 for (cp = input; *cp == ' ' || *cp == '\t'; cp++)
                        ;
 bp = output;
 while (*cp != ' ' && *cp != '\t' && *cp != '\0') {



  if (*cp == '\\') {
   if (*++cp == '\0') {
    fprintf(stderr,
     "command lines cannot be continued\n");
    continue;
   }
   *bp++ = *cp++;
   continue;
  }



  if (*cp != '\'' && *cp != '"') {
   *bp++ = *cp++;
   continue;
  }



  quote = *cp++;
  while (*cp != quote && *cp != '\0')
   *bp++ = *cp++;
  if (*cp++ == '\0') {
   fprintf(stderr, "missing %c\n", quote);
   cp--;
   continue;
  }
 }
 *bp = '\0';
 return (cp);
}
