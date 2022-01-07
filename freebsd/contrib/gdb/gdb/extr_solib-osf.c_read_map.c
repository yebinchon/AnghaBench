
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct so_list {int lm_info; } ;
struct read_map_ctxt {scalar_t__ next; scalar_t__ tail; int proc; } ;
typedef int ldr_region_t ;
struct TYPE_5__ {int mapaddr; int vaddr; int regionname_addr; scalar_t__ lri_mapaddr; scalar_t__ lri_vaddr; int lri_name; } ;
typedef TYPE_1__ ldr_region_info_t ;
struct TYPE_6__ {char* lmi_name; int lmi_nregion; int region_count; scalar_t__ regioninfo_addr; int modinfo_addr; int module_name; scalar_t__ next; } ;
typedef TYPE_2__ ldr_module_info_t ;
typedef int CORE_ADDR ;


 scalar_t__ LDR_NULL_MODULE ;
 int PATH_MAX ;
 int init_sec (struct so_list*,int,int ,int *,int ,int ) ;
 int init_so (struct so_list*,char*,int,int) ;
 scalar_t__ ldr_inq_module (int ,scalar_t__,TYPE_2__*,int,size_t*) ;
 scalar_t__ ldr_inq_region (int ,scalar_t__,int,TYPE_1__*,int,size_t*) ;
 scalar_t__ ldr_next_module (int ,scalar_t__*) ;
 int lm_secs_sort (int ) ;
 int osf_free_so (struct so_list*) ;
 scalar_t__ target_read_memory (scalar_t__,char*,int) ;
 int target_read_string (int ,char**,int ,int*) ;
 int xfree (char*) ;
 int * xstrdup (int ) ;

__attribute__((used)) static int
read_map (struct read_map_ctxt *ctxt, struct so_list *so)
{
  ldr_module_info_t minf;
  ldr_region_info_t rinf;
  char *name;
  int errcode, i;


  if (!ctxt->next)
    return 0;
  if (target_read_memory (ctxt->next, (char *) &minf, sizeof minf) != 0)
    return 0;
  if (ctxt->next == ctxt->tail)
    ctxt->next = 0;
  else
    ctxt->next = minf.next;


  target_read_string (minf.module_name, &name, PATH_MAX, &errcode);
  if (errcode != 0)
    return 0;
  init_so (so, name, !minf.modinfo_addr, minf.region_count);
  xfree (name);


  for (i = 0; i < minf.region_count; i++)
    {
      if (target_read_memory (minf.regioninfo_addr + i * sizeof rinf,
         (char *) &rinf, sizeof rinf) != 0)
 goto err;
      init_sec (so, i, rinf.regionname_addr, ((void*)0), rinf.vaddr, rinf.mapaddr);
    }

  return 1;

 err:
  osf_free_so (so);
  return 0;
}
