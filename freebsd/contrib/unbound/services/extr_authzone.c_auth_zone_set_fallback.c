
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_zone {int fallback_enabled; } ;


 int log_err (char*,char*) ;
 scalar_t__ strcmp (char*,char*) ;

int
auth_zone_set_fallback(struct auth_zone* z, char* fallbackstr)
{
 if(strcmp(fallbackstr, "yes") != 0 && strcmp(fallbackstr, "no") != 0){
  log_err("auth zone fallback, expected yes or no, got %s",
   fallbackstr);
  return 0;
 }
 z->fallback_enabled = (strcmp(fallbackstr, "yes")==0);
 return 1;
}
