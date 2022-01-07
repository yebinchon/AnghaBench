
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct section_table {TYPE_2__* the_bfd_section; int bfd; int addr; } ;
struct section_addr_info {TYPE_1__* other; } ;
struct TYPE_5__ {int index; } ;
struct TYPE_4__ {int sectindex; int name; int addr; } ;


 int SEC_ALLOC ;
 int SEC_LOAD ;
 struct section_addr_info* alloc_section_addr_info (int) ;
 int bfd_get_section_flags (int ,TYPE_2__*) ;
 int bfd_section_name (int ,TYPE_2__*) ;
 int xstrdup (int ) ;

extern struct section_addr_info *
build_section_addr_info_from_section_table (const struct section_table *start,
                                            const struct section_table *end)
{
  struct section_addr_info *sap;
  const struct section_table *stp;
  int oidx;

  sap = alloc_section_addr_info (end - start);

  for (stp = start, oidx = 0; stp != end; stp++)
    {
      if (bfd_get_section_flags (stp->bfd,
     stp->the_bfd_section) & (SEC_ALLOC | SEC_LOAD)
   && oidx < end - start)
 {
   sap->other[oidx].addr = stp->addr;
   sap->other[oidx].name
     = xstrdup (bfd_section_name (stp->bfd, stp->the_bfd_section));
   sap->other[oidx].sectindex = stp->the_bfd_section->index;
   oidx++;
 }
    }

  return sap;
}
