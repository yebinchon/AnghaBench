
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_strlist {char* str; struct config_strlist* next; } ;


 int free (char*) ;
 char* malloc (size_t) ;
 int snprintf (char*,size_t,char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;

char*
config_collate_cat(struct config_strlist* list)
{
 size_t total = 0, left;
 struct config_strlist* s;
 char *r, *w;
 if(!list)
  return strdup("");
 if(list->next == ((void*)0))
  return strdup(list->str);

 for(s=list; s; s=s->next)
  total += strlen(s->str) + 1;
 left = total+1;
 r = malloc(left);
 if(!r)
  return ((void*)0);
 w = r;
 for(s=list; s; s=s->next) {
  size_t this = strlen(s->str);
  if(this+2 > left) {
   free(r);
   return ((void*)0);
  }
  snprintf(w, left, "%s\n", s->str);
  this = strlen(w);
  w += this;
  left -= this;
 }
 return r;
}
