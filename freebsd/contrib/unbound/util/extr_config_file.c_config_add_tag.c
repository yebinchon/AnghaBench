
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_file {int num_tags; char** tagname; } ;


 int find_tag_id (struct config_file*,char const*) ;
 int free (char**) ;
 scalar_t__ malloc (int) ;
 int memcpy (char**,char**,int) ;
 char* strdup (char const*) ;

int
config_add_tag(struct config_file* cfg, const char* tag)
{
 char** newarray;
 char* newtag;
 if(find_tag_id(cfg, tag) != -1)
  return 1;
 newarray = (char**)malloc(sizeof(char*)*(cfg->num_tags+1));
 if(!newarray)
  return 0;
 newtag = strdup(tag);
 if(!newtag) {
  free(newarray);
  return 0;
 }
 if(cfg->tagname) {
  memcpy(newarray, cfg->tagname, sizeof(char*)*cfg->num_tags);
  free(cfg->tagname);
 }
 newarray[cfg->num_tags++] = newtag;
 cfg->tagname = newarray;
 return 1;
}
