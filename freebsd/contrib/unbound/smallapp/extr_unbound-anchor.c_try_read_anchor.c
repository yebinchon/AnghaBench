
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int printf (char*,...) ;
 char* strerror (scalar_t__) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ verb ;

__attribute__((used)) static int
try_read_anchor(const char* file)
{
 int empty = 1;
 char line[10240];
 char* p;
 FILE* in = fopen(file, "r");
 if(!in) {

  if(errno != ENOENT) {
   if(verb) printf("%s: %s\n", file, strerror(errno));
   if(verb) printf("error: cannot access the file\n");
   exit(0);
  }
  if(verb) printf("%s does not exist\n", file);
  return 0;
 }
 while(fgets(line, (int)sizeof(line), in)) {
  line[sizeof(line)-1] = 0;
  if(strncmp(line, ";;REVOKED", 9) == 0) {
   fclose(in);
   if(verb) printf("%s : the trust point is revoked\n"
    "and the zone is considered unsigned.\n"
    "if you wish to re-enable, delete the file\n",
    file);
   return 1;
  }
  p=line;
  while(*p == ' ' || *p == '\t')
   p++;
  if(p[0]==0 || p[0]=='\n' || p[0]==';') continue;

  empty = 0;
 }
 fclose(in);
 if(empty) {
  if(verb) printf("%s is empty\n", file);
  return 0;
 }
 if(verb) printf("%s has content\n", file);
 return 2;
}
