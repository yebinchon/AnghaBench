
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int exit (int) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*) ;
 int malloc (scalar_t__) ;
 int set_thres (char*,int) ;
 int snprintf (char*,int,char*) ;
 int stderr ;
 int strcpy (int ,char*) ;
 char* strerror (int ) ;
 scalar_t__ strlen (char*) ;
 char* strtok_r (char*,char*,char**) ;
 int strtoul (char*,int *,int ) ;
 int threshold_str ;

__attribute__((used)) static void set_thresholds(char *threshold_file)
{
 char buf[1024];
 int val = 0;
 FILE *thresf = fopen(threshold_file, "r");
 char *p_prefix, *p_last;
 char *name;
 char *val_str;
 char str[64];

 if (!thresf)
  return;

 snprintf(str, 63, "Thresholds: ");
 threshold_str = malloc(strlen(str)+1);
 if (!threshold_str) {
  fprintf(stderr, "Failed to allocate memory: %s\n",
   strerror(errno));
  exit(1);
 }
 strcpy(threshold_str, str);
 while (fgets(buf, sizeof buf, thresf) != ((void*)0)) {
  p_prefix = strtok_r(buf, "\n", &p_last);
  if (!p_prefix)
   continue;

  if (*p_prefix == '#')
   continue;

  name = strtok_r(p_prefix, "=", &p_last);
  val_str = strtok_r(((void*)0), "\n", &p_last);

  val = strtoul(val_str, ((void*)0), 0);
  set_thres(name, val);
 }

 fclose(thresf);
}
