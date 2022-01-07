
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;


 int free (char*) ;
 int getuid () ;
 char* tilde_expand_filename (char*,int ) ;

__attribute__((used)) static void
tilde_expand_paths(char **paths, u_int num_paths)
{
 u_int i;
 char *cp;

 for (i = 0; i < num_paths; i++) {
  cp = tilde_expand_filename(paths[i], getuid());
  free(paths[i]);
  paths[i] = cp;
 }
}
