
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint16_t ;
struct pt_mapped_section {int dummy; } ;
struct pt_section_list {int isid; struct pt_mapped_section section; } ;
struct pt_section {int dummy; } ;
struct pt_image {struct pt_section_list* sections; } ;
struct pt_asid {int dummy; } ;


 int pt_image_fetch_section (struct pt_image*,struct pt_asid const*,int ) ;
 int pt_image_read_callback (struct pt_image*,int*,int *,int ,struct pt_asid const*,int ) ;
 int pt_msec_read (struct pt_mapped_section*,int *,int ,int ) ;
 struct pt_section* pt_msec_section (struct pt_mapped_section*) ;
 int pt_section_map (struct pt_section*) ;
 int pt_section_unmap (struct pt_section*) ;
 int pte_internal ;
 int pte_nomap ;

int pt_image_read(struct pt_image *image, int *isid, uint8_t *buffer,
    uint16_t size, const struct pt_asid *asid, uint64_t addr)
{
 struct pt_mapped_section *msec;
 struct pt_section_list *slist;
 struct pt_section *section;
 int errcode, status;

 if (!image || !isid)
  return -pte_internal;

 errcode = pt_image_fetch_section(image, asid, addr);
 if (errcode < 0) {
  if (errcode != -pte_nomap)
   return errcode;

  return pt_image_read_callback(image, isid, buffer, size, asid,
           addr);
 }

 slist = image->sections;
 if (!slist)
  return -pte_internal;

 *isid = slist->isid;
 msec = &slist->section;

 section = pt_msec_section(msec);

 errcode = pt_section_map(section);
 if (errcode < 0)
  return errcode;

 status = pt_msec_read(msec, buffer, size, addr);

 errcode = pt_section_unmap(section);
  if (errcode < 0)
   return errcode;

 if (status < 0) {
  if (status != -pte_nomap)
   return status;

  return pt_image_read_callback(image, isid, buffer, size, asid,
           addr);
 }

 return status;
}
