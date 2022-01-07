
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef void* uint64_t ;
struct pt_section {char const* filename; int ucount; int* content; int lock; int alock; void* size; void* offset; } ;


 int free (struct pt_section*) ;
 struct pt_section* malloc (int) ;
 int memset (struct pt_section*,int ,int) ;
 int mtx_destroy (int *) ;
 int mtx_init (int *,int ) ;
 int mtx_plain ;
 int pte_bad_lock ;
 int pte_nomem ;
 int thrd_success ;

int pt_mk_section(struct pt_section **psection, const char *filename,
    uint64_t offset, uint64_t size)
{
 struct pt_section *section;
 uint8_t idx;

 section = malloc(sizeof(*section));
 if (!section)
  return -pte_nomem;

 memset(section, 0, sizeof(*section));
 section->filename = filename;
 section->offset = offset;
 section->size = size;
 section->ucount = 1;

 for (idx = 0; idx < sizeof(section->content); ++idx)
  section->content[idx] = idx;
 *psection = section;

 return 0;
}
