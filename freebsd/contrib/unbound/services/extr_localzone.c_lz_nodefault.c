
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {char const* str; struct config_strlist* next; } ;
struct config_file {struct config_strlist* local_zones_nodefault; } ;


 size_t strlen (char const*) ;
 scalar_t__ strncasecmp (char const*,char const*,size_t) ;

__attribute__((used)) static int
lz_nodefault(struct config_file* cfg, const char* name)
{
 struct config_strlist* p;
 size_t len = strlen(name);
 if(len == 0) return 0;
 if(name[len-1] == '.') len--;

 for(p = cfg->local_zones_nodefault; p; p = p->next) {

  if(strncasecmp(p->str, name, len) == 0 &&
   (strlen(p->str) == len || (strlen(p->str)==len+1 &&
   p->str[len] == '.')))
   return 1;
 }
 return 0;
}
