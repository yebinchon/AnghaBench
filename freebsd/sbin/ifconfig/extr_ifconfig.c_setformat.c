
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* f_addr ;
 void* f_ether ;
 void* f_inet ;
 void* f_inet6 ;
 int free (char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 void* strdup (char*) ;
 char* strsep (char**,char*) ;
 int warnx (char*,char*) ;

__attribute__((used)) static void setformat(char *input)
{
 char *formatstr, *category, *modifier;

 formatstr = strdup(input);
 while ((category = strsep(&formatstr, ",")) != ((void*)0)) {
  modifier = strchr(category, ':');
  if (modifier == ((void*)0) || modifier[1] == '\0') {
   warnx("Skipping invalid format specification: %s\n",
       category);
   continue;
  }


  modifier[0] = '\0';
  modifier++;

  if (strcmp(category, "addr") == 0)
   f_addr = strdup(modifier);
  else if (strcmp(category, "ether") == 0)
   f_ether = strdup(modifier);
  else if (strcmp(category, "inet") == 0)
   f_inet = strdup(modifier);
  else if (strcmp(category, "inet6") == 0)
   f_inet6 = strdup(modifier);
 }
 free(formatstr);
}
