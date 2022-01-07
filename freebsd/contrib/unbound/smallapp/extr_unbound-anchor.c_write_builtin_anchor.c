
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char const*,int ,int,int *) ;
 char* get_builtin_ds () ;
 int printf (char*,...) ;
 char* strerror (int ) ;
 int strlen (char const*) ;
 scalar_t__ verb ;

__attribute__((used)) static void
write_builtin_anchor(const char* file)
{
 const char* builtin_root_anchor = get_builtin_ds();
 FILE* out = fopen(file, "w");
 if(!out) {
  if(verb) printf("%s: %s\n", file, strerror(errno));
  if(verb) printf("  could not write builtin anchor\n");
  return;
 }
 if(!fwrite(builtin_root_anchor, strlen(builtin_root_anchor), 1, out)) {
  if(verb) printf("%s: %s\n", file, strerror(errno));
  if(verb) printf("  could not complete write builtin anchor\n");
 }
 fclose(out);
}
