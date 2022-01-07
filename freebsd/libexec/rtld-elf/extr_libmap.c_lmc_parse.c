
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;


 int MAXPATHLEN ;
 scalar_t__ iseol (char) ;
 int lm_add (char*,char*,char*) ;
 int lmc_parse_dir (char*) ;
 int lmc_parse_file (char*) ;
 scalar_t__ rtld_isspace (char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static void
lmc_parse(char *lm_p, size_t lm_len)
{
 char *cp, *f, *t, *c, *p;
 char prog[MAXPATHLEN];

 char line[MAXPATHLEN + 13];
 size_t cnt, i;

 cnt = 0;
 p = ((void*)0);
 while (cnt < lm_len) {
  i = 0;
  while (cnt < lm_len && lm_p[cnt] != '\n' &&
      i < sizeof(line) - 1) {
   line[i] = lm_p[cnt];
   cnt++;
   i++;
  }
  line[i] = '\0';
  while (cnt < lm_len && lm_p[cnt] != '\n')
   cnt++;

  cnt++;

  cp = &line[0];
  t = f = c = ((void*)0);


  while (rtld_isspace(*cp))
   cp++;


  if (iseol(*cp))
   continue;


  if (*cp == '[') {
   cp++;


   while (rtld_isspace(*cp))
    cp++;


   if (iseol(*cp) || *cp == ']')
    continue;

   c = cp++;

   while (!rtld_isspace(*cp) && !iseol(*cp) && *cp != ']')
    cp++;


   while (rtld_isspace(*cp))
    *cp++ = '\0';


   if (*cp != ']')
    continue;


   *cp++ = '\0';





   while (rtld_isspace(*cp))
    cp++;
   if (!iseol(*cp))
    continue;

   if (strlcpy(prog, c, sizeof prog) >= sizeof prog)
    continue;
   p = prog;
   continue;
  }


  f = cp++;
  while (!rtld_isspace(*cp) && !iseol(*cp))
   cp++;


  while (rtld_isspace(*cp))
   *cp++ = '\0';


  if (iseol(*cp))
   continue;


  t = cp++;
  while (!rtld_isspace(*cp) && !iseol(*cp))
   cp++;


  while (rtld_isspace(*cp))
   *cp++ = '\0';


  if (!iseol(*cp))
   continue;

  *cp = '\0';
  if (strcmp(f, "includedir") == 0)
   lmc_parse_dir(t);
  else if (strcmp(f, "include") == 0)
   lmc_parse_file(t);
  else
   lm_add(p, f, t);
 }
}
