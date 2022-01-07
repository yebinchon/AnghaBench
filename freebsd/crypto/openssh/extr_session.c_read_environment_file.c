
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int FILE ;


 int child_set_env (char***,int*,char*,char*) ;
 int fatal (char*,char const*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,int,char const*) ;
 int free (char*) ;
 int getline (char**,size_t*,int *) ;
 int match_pattern_list (char*,char const*,int ) ;
 int stderr ;
 char* strchr (char*,char) ;
 size_t strcspn (char*,char*) ;

__attribute__((used)) static void
read_environment_file(char ***env, u_int *envsize,
 const char *filename, const char *whitelist)
{
 FILE *f;
 char *line = ((void*)0), *cp, *value;
 size_t linesize = 0;
 u_int lineno = 0;

 f = fopen(filename, "r");
 if (!f)
  return;

 while (getline(&line, &linesize, f) != -1) {
  if (++lineno > 1000)
   fatal("Too many lines in environment file %s", filename);
  for (cp = line; *cp == ' ' || *cp == '\t'; cp++)
   ;
  if (!*cp || *cp == '#' || *cp == '\n')
   continue;

  cp[strcspn(cp, "\n")] = '\0';

  value = strchr(cp, '=');
  if (value == ((void*)0)) {
   fprintf(stderr, "Bad line %u in %.100s\n", lineno,
       filename);
   continue;
  }




  *value = '\0';
  value++;
  if (whitelist != ((void*)0) &&
      match_pattern_list(cp, whitelist, 0) != 1)
   continue;
  child_set_env(env, envsize, cp, value);
 }
 free(line);
 fclose(f);
}
