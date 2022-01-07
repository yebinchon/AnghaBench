
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct pt_section {int dummy; } ;


 int pt_section_lock (struct pt_section*) ;
 int pt_section_memsize_locked (struct pt_section*,int *) ;
 int pt_section_unlock (struct pt_section*) ;

int pt_section_memsize(struct pt_section *section, uint64_t *size)
{
 int errcode, status;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 status = pt_section_memsize_locked(section, size);

 errcode = pt_section_unlock(section);
 if (errcode < 0)
  return errcode;

 return status;
}
