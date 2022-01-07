
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* MOUNT_META_OPTION_CURRENT ;
 char* MOUNT_META_OPTION_FSTAB ;
 char* catopt (char*,char*) ;
 int errx (int,char*) ;
 char* flags2opts (int) ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int remopt (char*,char*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strsep (char**,char*) ;

char *
update_options(char *opts, char *fstab, int curflags)
{
 char *o, *p;
 char *cur;
 char *expopt, *newopt, *tmpopt;

 if (opts == ((void*)0))
  return (strdup(""));


 remopt(fstab, MOUNT_META_OPTION_FSTAB);
 remopt(fstab, MOUNT_META_OPTION_CURRENT);
 cur = flags2opts(curflags);




 expopt = ((void*)0);
 for (p = opts; (o = strsep(&p, ",")) != ((void*)0);) {
  if (strcmp(MOUNT_META_OPTION_FSTAB, o) == 0)
   expopt = catopt(expopt, fstab);
  else if (strcmp(MOUNT_META_OPTION_CURRENT, o) == 0)
   expopt = catopt(expopt, cur);
  else
   expopt = catopt(expopt, o);
 }
 free(cur);
 free(opts);






 newopt = ((void*)0);
 for (p = expopt; (o = strsep(&p, ",")) != ((void*)0);) {
  if ((tmpopt = malloc( strlen(o) + 2 + 1 )) == ((void*)0))
   errx(1, "malloc failed");

  strcpy(tmpopt, "no");
  strcat(tmpopt, o);
  remopt(newopt, tmpopt);
  free(tmpopt);

  if (strncmp("no", o, 2) == 0)
   remopt(newopt, o+2);

  newopt = catopt(newopt, o);
 }
 free(expopt);

 return (newopt);
}
