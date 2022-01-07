
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tag_entry {char* s; size_t* lines; scalar_t__ maxlines; scalar_t__ nlines; int prio; } ;
struct TYPE_2__ {scalar_t__ tfd; } ;


 int INT_MAX ;
 struct tag_entry* mandoc_malloc (int) ;
 size_t* mandoc_reallocarray (size_t*,scalar_t__,int) ;
 int memcpy (char*,char const*,size_t) ;
 struct tag_entry* ohash_find (int *,unsigned int) ;
 int ohash_insert (int *,unsigned int,struct tag_entry*) ;
 unsigned int ohash_qlookupi (int *,char const*,char const**) ;
 size_t strcspn (char const*,char*) ;
 int tag_data ;
 TYPE_1__ tag_files ;

void
tag_put(const char *s, int prio, size_t line)
{
 struct tag_entry *entry;
 const char *se;
 size_t len;
 unsigned int slot;

 if (tag_files.tfd <= 0)
  return;

 if (s[0] == '\\' && (s[1] == '&' || s[1] == 'e'))
  s += 2;






 len = strcspn(s, " \t\\");
 if (len == 0)
  return;

 se = s + len;
 if (*se != '\0')
  prio = INT_MAX;

 slot = ohash_qlookupi(&tag_data, s, &se);
 entry = ohash_find(&tag_data, slot);

 if (entry == ((void*)0)) {



  entry = mandoc_malloc(sizeof(*entry) + len + 1);
  memcpy(entry->s, s, len);
  entry->s[len] = '\0';
  entry->lines = ((void*)0);
  entry->maxlines = entry->nlines = 0;
  ohash_insert(&tag_data, slot, entry);

 } else {
  if (prio == 0) {
   if (entry->prio == 0)
    entry->prio = -1;
   return;
  }



  if (entry->prio > 0 && entry->prio < prio)
   return;



  if (entry->prio < 1 || entry->prio > prio)
   entry->nlines = 0;
 }



 if (entry->maxlines == entry->nlines) {
  entry->maxlines += 4;
  entry->lines = mandoc_reallocarray(entry->lines,
      entry->maxlines, sizeof(*entry->lines));
 }
 entry->lines[entry->nlines++] = line;
 entry->prio = prio;
}
