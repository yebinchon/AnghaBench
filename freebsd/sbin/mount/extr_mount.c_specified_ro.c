
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,int *) ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char const*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static int
specified_ro(const char *arg)
{
 char *optbuf, *opt;
 int ret = 0;

 optbuf = strdup(arg);
 if (optbuf == ((void*)0))
   err(1, ((void*)0));

 for (opt = optbuf; (opt = strtok(opt, ",")) != ((void*)0); opt = ((void*)0)) {
  if (strcmp(opt, "ro") == 0) {
   ret = 1;
   break;
  }
 }
 free(optbuf);
 return (ret);
}
