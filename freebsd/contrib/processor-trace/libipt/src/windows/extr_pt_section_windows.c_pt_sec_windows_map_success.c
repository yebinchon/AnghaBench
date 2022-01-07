
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {scalar_t__ mcount; } ;


 int pt_section_on_map (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pt_section_unmap (struct pt_section*) ;
 int pte_internal ;
 int pte_overflow ;

__attribute__((used)) static int pt_sec_windows_map_success(struct pt_section *section)
{
 uint16_t mcount;
 int errcode, status;

 if (!section)
  return -pte_internal;

 mcount = section->mcount + 1;
 if (!mcount) {
  (void) pt_section_unlock(section);
  return -pte_overflow;
 }

 section->mcount = mcount;

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 status = pt_section_on_map(section);
 if (status < 0) {







  (void) pt_section_unmap(section);
  return status;
 }

 return 0;
}
