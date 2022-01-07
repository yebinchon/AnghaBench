
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct mandoc_xr {char* sec; char* hashkey; char* name; int line; int pos; int count; struct mandoc_xr* next; } ;


 int free (struct mandoc_xr*) ;
 struct mandoc_xr* mandoc_malloc (int) ;
 int memcpy (char*,char const*,size_t) ;
 struct mandoc_xr* ohash_find (int *,unsigned int) ;
 int ohash_insert (int *,unsigned int,struct mandoc_xr*) ;
 int ohash_interval (char*,char const**) ;
 unsigned int ohash_lookup_memory (int *,char*,size_t,int ) ;
 int strlen (char const*) ;
 struct mandoc_xr* xr_first ;
 int * xr_hash ;
 struct mandoc_xr* xr_last ;

int
mandoc_xr_add(const char *sec, const char *name, int line, int pos)
{
 struct mandoc_xr *xr, *oxr;
 const char *pend;
 size_t ssz, nsz, tsz;
 unsigned int slot;
 int ret;
 uint32_t hv;

 if (xr_hash == ((void*)0))
  return 0;

 ssz = strlen(sec) + 1;
 nsz = strlen(name) + 1;
 tsz = ssz + nsz;
 xr = mandoc_malloc(sizeof(*xr) + tsz);
 xr->next = ((void*)0);
 xr->sec = xr->hashkey;
 xr->name = xr->hashkey + ssz;
 xr->line = line;
 xr->pos = pos;
 xr->count = 1;
 memcpy(xr->sec, sec, ssz);
 memcpy(xr->name, name, nsz);

 pend = xr->hashkey + tsz;
 hv = ohash_interval(xr->hashkey, &pend);
 slot = ohash_lookup_memory(xr_hash, xr->hashkey, tsz, hv);
 if ((oxr = ohash_find(xr_hash, slot)) == ((void*)0)) {
  ohash_insert(xr_hash, slot, xr);
  if (xr_first == ((void*)0))
   xr_first = xr;
  else
   xr_last->next = xr;
  xr_last = xr;
  return 0;
 }

 oxr->count++;
 ret = (oxr->line == -1) ^ (xr->line == -1);
 if (xr->line == -1)
  oxr->line = -1;
 free(xr);
 return ret;
}
