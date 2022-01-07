
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symbol {int dummy; } ;
struct ref_map {char* stabs; int value; struct symbol* sym; } ;
typedef int CORE_ADDR ;


 int MAX_CHUNK_REFS ;
 int REF_CHUNK_SIZE ;
 int REF_MAP_SIZE (int) ;
 int memset (struct ref_map*,int ,int) ;
 int ref_chunk ;
 int ref_count ;
 struct ref_map* ref_map ;
 scalar_t__ xrealloc (struct ref_map*,int ) ;

void
ref_add (int refnum, struct symbol *sym, char *stabs, CORE_ADDR value)
{
  if (ref_count == 0)
    ref_chunk = 0;
  if (refnum >= ref_count)
    ref_count = refnum + 1;
  if (ref_count > ref_chunk * MAX_CHUNK_REFS)
    {
      int new_slots = ref_count - ref_chunk * MAX_CHUNK_REFS;
      int new_chunks = new_slots / MAX_CHUNK_REFS + 1;
      ref_map = (struct ref_map *)
 xrealloc (ref_map, REF_MAP_SIZE (ref_chunk + new_chunks));
      memset (ref_map + ref_chunk * MAX_CHUNK_REFS, 0, new_chunks * REF_CHUNK_SIZE);
      ref_chunk += new_chunks;
    }
  ref_map[refnum].stabs = stabs;
  ref_map[refnum].sym = sym;
  ref_map[refnum].value = value;
}
