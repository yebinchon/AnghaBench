
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct str {int mask; struct mpage const* mpage; int key; } ;
struct ohash {int dummy; } ;
struct mpage {TYPE_1__* mlinks; } ;
struct TYPE_2__ {int file; } ;


 int KEY_MAX ;
 int NAME_FIRST ;
 int TYPE_Nm ;
 int debug ;
 int free (char*) ;
 struct str* mandoc_calloc (int,int) ;
 int * mansearch_keynames ;
 int memcpy (int ,char*,size_t) ;
 int name_mask ;
 struct ohash names ;
 struct str* ohash_find (struct ohash*,unsigned int) ;
 int ohash_insert (struct ohash*,unsigned int,struct str*) ;
 unsigned int ohash_qlookupi (struct ohash*,char*,char const**) ;
 int render_string (char**,size_t*) ;
 int say (int ,char*,int,...) ;
 struct ohash strings ;

__attribute__((used)) static void
putkeys(const struct mpage *mpage, char *cp, size_t sz, uint64_t v)
{
 struct ohash *htab;
 struct str *s;
 const char *end;
 unsigned int slot;
 int i, mustfree;

 if (0 == sz)
  return;

 mustfree = render_string(&cp, &sz);

 if (TYPE_Nm & v) {
  htab = &names;
  v &= name_mask;
  if (v & NAME_FIRST)
   name_mask &= ~NAME_FIRST;
  if (debug > 1)
   say(mpage->mlinks->file,
       "Adding name %*s, bits=0x%llx", (int)sz, cp,
       (unsigned long long)v);
 } else {
  htab = &strings;
  if (debug > 1)
      for (i = 0; i < KEY_MAX; i++)
   if ((uint64_t)1 << i & v)
       say(mpage->mlinks->file,
    "Adding key %s=%*s",
    mansearch_keynames[i], (int)sz, cp);
 }

 end = cp + sz;
 slot = ohash_qlookupi(htab, cp, &end);
 s = ohash_find(htab, slot);

 if (((void*)0) != s && mpage == s->mpage) {
  s->mask |= v;
  return;
 } else if (((void*)0) == s) {
  s = mandoc_calloc(1, sizeof(struct str) + sz + 1);
  memcpy(s->key, cp, sz);
  ohash_insert(htab, slot, s);
 }
 s->mpage = mpage;
 s->mask = v;

 if (mustfree)
  free(cp);
}
