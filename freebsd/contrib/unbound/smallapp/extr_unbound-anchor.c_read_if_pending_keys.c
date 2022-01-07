
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int printf (char*,...) ;
 char* strerror (int ) ;
 scalar_t__ strstr (char*,char*) ;
 int verb ;

__attribute__((used)) static int
read_if_pending_keys(const char* file)
{
 FILE* in = fopen(file, "r");
 char line[8192];
 if(!in) {
  if(verb>=2) printf("%s: %s\n", file, strerror(errno));
  return 0;
 }
 while(fgets(line, (int)sizeof(line), in)) {
  if(line[0]==';') continue;
  if(strstr(line, "[ ADDPEND ]")) {
   fclose(in);
   if(verb) printf("RFC5011-state has ADDPEND keys\n");
   return 1;
  }
 }
 fclose(in);
 return 0;
}
