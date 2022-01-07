
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct config_file {scalar_t__ num_tags; } ;


 int * calloc (int,size_t) ;
 int cfg_set_bit (int *,size_t,int) ;
 int find_tag_id (struct config_file*,char*) ;
 int free (int *) ;
 int log_err (char*,...) ;
 char* strsep (char**,char*) ;

uint8_t* config_parse_taglist(struct config_file* cfg, char* str,
        size_t* listlen)
{
 uint8_t* taglist = ((void*)0);
 size_t len = 0;
 char* p, *s;


 if(cfg->num_tags == 0) {
  log_err("parse taglist, but no tags defined");
  return 0;
 }
 len = (size_t)(cfg->num_tags+7)/8;
 taglist = calloc(1, len);
 if(!taglist) {
  log_err("out of memory");
  return 0;
 }


 s = str;
 while((p=strsep(&s, " \t\n")) != ((void*)0)) {
  if(*p) {
   int id = find_tag_id(cfg, p);

   if(id == -1) {
    log_err("unknown tag: %s", p);
    free(taglist);
    return 0;
   }
   cfg_set_bit(taglist, len, id);
  }
 }

 *listlen = len;
 return taglist;
}
