
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int time_t ;
typedef int line ;
typedef int int32_t ;
typedef int FILE ;


 char* ctime (unsigned int*) ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 int printf (char*,...) ;
 char* strerror (int ) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strtol (char*,char**,int) ;
 scalar_t__ verb ;

__attribute__((used)) static int32_t
read_last_success_time(const char* file)
{
 FILE* in = fopen(file, "r");
 char line[1024];
 if(!in) {
  if(verb) printf("%s: %s\n", file, strerror(errno));
  return 0;
 }
 while(fgets(line, (int)sizeof(line), in)) {
  if(strncmp(line, ";;last_success: ", 16) == 0) {
   char* e;
   time_t x = (unsigned int)strtol(line+16, &e, 10);
   fclose(in);
   if(line+16 == e) {
    if(verb) printf("failed to parse "
     "last_success probe time\n");
    return 0;
   }
   if(verb) printf("last successful probe: %s", ctime(&x));
   return (int32_t)x;
  }
 }
 fclose(in);
 if(verb) printf("no last_success probe time in anchor file\n");
 return 0;
}
