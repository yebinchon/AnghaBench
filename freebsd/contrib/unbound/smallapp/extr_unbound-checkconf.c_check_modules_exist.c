
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int n ;


 int fatal_exit (char*,char*) ;
 scalar_t__ isspace (unsigned char) ;
 char** module_list_avail () ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int ) ;

__attribute__((used)) static void
check_modules_exist(const char* module_conf)
{
 const char** names = module_list_avail();
 const char* s = module_conf;
 while(*s) {
  int i = 0;
  int is_ok = 0;
  while(*s && isspace((unsigned char)*s))
   s++;
  if(!*s) break;
  while(names[i]) {
   if(strncmp(names[i], s, strlen(names[i])) == 0) {
    is_ok = 1;
    break;
   }
   i++;
  }
  if(is_ok == 0) {
   char n[64];
   size_t j;
   n[0]=0;
   n[sizeof(n)-1]=0;
   for(j=0; j<sizeof(n)-1; j++) {
    if(!s[j] || isspace((unsigned char)s[j])) {
     n[j] = 0;
     break;
    }
    n[j] = s[j];
   }
   fatal_exit("module_conf lists module '%s' but that "
    "module is not available.", n);
  }
  s += strlen(names[i]);
 }
}
