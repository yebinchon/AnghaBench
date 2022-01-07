
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* line ;
 scalar_t__ margc ;
 char** margv ;
 int saveline ;
 int strcpy (int ,char*) ;
 int strdup (char*) ;

__attribute__((used)) static void
makeargv(void)
{
    char *cp, *cp2, c;
    char **argp = margv;

    margc = 0;
    cp = line;
    if (*cp == '!') {
 strcpy(saveline, line);
 *argp++ = strdup("!");
 margc++;
 cp++;
    }
    while ((c = *cp)) {
 int inquote = 0;
 while (isspace(c))
     c = *++cp;
 if (c == '\0')
     break;
 *argp++ = cp;
 margc += 1;
 for (cp2 = cp; c != '\0'; c = *++cp) {
     if (inquote) {
  if (c == inquote) {
      inquote = 0;
      continue;
  }
     } else {
  if (c == '\\') {
      if ((c = *++cp) == '\0')
   break;
  } else if (c == '"') {
      inquote = '"';
      continue;
  } else if (c == '\'') {
      inquote = '\'';
      continue;
  } else if (isspace(c))
      break;
     }
     *cp2++ = c;
 }
 *cp2 = '\0';
 if (c == '\0')
     break;
 cp++;
    }
    *argp++ = 0;
}
