
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section_list {int isid; int section; } ;
struct pt_section {int dummy; } ;
struct pt_asid {int dummy; } ;


 int free (struct pt_section_list*) ;
 struct pt_section_list* malloc (int) ;
 int memset (struct pt_section_list*,int ,int) ;
 int pt_msec_init (int *,struct pt_section*,struct pt_asid const*,int ,int ,int ) ;
 int pt_section_get (struct pt_section*) ;

__attribute__((used)) static struct pt_section_list *pt_mk_section_list(struct pt_section *section,
        const struct pt_asid *asid,
        uint64_t vaddr,
        uint64_t offset,
        uint64_t size, int isid)
{
 struct pt_section_list *list;
 int errcode;

 list = malloc(sizeof(*list));
 if (!list)
  return ((void*)0);

 memset(list, 0, sizeof(*list));

 errcode = pt_section_get(section);
 if (errcode < 0)
  goto out_mem;

 pt_msec_init(&list->section, section, asid, vaddr, offset, size);
 list->isid = isid;

 return list;

out_mem:
 free(list);
 return ((void*)0);
}
