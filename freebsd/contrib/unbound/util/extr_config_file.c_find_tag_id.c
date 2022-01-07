
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int num_tags; int * tagname; } ;


 scalar_t__ strcmp (int ,char const*) ;

int
find_tag_id(struct config_file* cfg, const char* tag)
{
 int i;
 for(i=0; i<cfg->num_tags; i++) {
  if(strcmp(cfg->tagname[i], tag) == 0)
   return i;
 }
 return -1;
}
