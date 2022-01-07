
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int log_err (char*) ;
 char* strdup (char*) ;

__attribute__((used)) static char*
dup_all(char* str)
{
 char* result = strdup(str);
 if(!result) {
  log_err("malloc failure");
  return ((void*)0);
 }
 return result;
}
