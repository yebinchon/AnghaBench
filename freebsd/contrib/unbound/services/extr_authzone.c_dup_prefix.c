
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_err (char*) ;
 scalar_t__ malloc (size_t) ;
 int memmove (char*,char*,size_t) ;
 size_t strlen (char*) ;

__attribute__((used)) static char*
dup_prefix(char* str, size_t num)
{
 char* result;
 size_t len = strlen(str);
 if(len < num) num = len;
 result = (char*)malloc(num+1);
 if(!result) {
  log_err("malloc failure");
  return result;
 }
 memmove(result, str, num);
 result[num] = 0;
 return result;
}
