
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 int strcasecmp (char*,char const*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

int
hasopt(const char *mntopts, const char *option)
{
 int negative, found;
 char *opt, *optbuf;

 if (option[0] == 'n' && option[1] == 'o') {
  negative = 1;
  option += 2;
 } else
  negative = 0;
 optbuf = strdup(mntopts);
 found = 0;
 for (opt = optbuf; (opt = strtok(opt, ",")) != ((void*)0); opt = ((void*)0)) {
  if (opt[0] == 'n' && opt[1] == 'o') {
   if (!strcasecmp(opt + 2, option))
    found = negative;
  } else if (!strcasecmp(opt, option))
   found = !negative;
 }
 free(optbuf);
 return (found);
}
