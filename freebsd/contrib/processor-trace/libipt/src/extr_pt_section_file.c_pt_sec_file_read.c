
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int uint16_t ;
struct pt_section {struct pt_sec_file_mapping* mapping; } ;
struct pt_sec_file_mapping {long begin; int * file; } ;
typedef int FILE ;


 int SEEK_SET ;
 int fmap_lock (struct pt_sec_file_mapping*) ;
 int fmap_unlock (struct pt_sec_file_mapping*) ;
 size_t fread (int *,int,int ,int *) ;
 int fseek (int *,long,int ) ;
 int pte_internal ;
 int pte_nomap ;

int pt_sec_file_read(const struct pt_section *section, uint8_t *buffer,
       uint16_t size, uint64_t offset)
{
 struct pt_sec_file_mapping *mapping;
 FILE *file;
 long begin;
 size_t read;
 int errcode;

 if (!buffer || !section)
  return -pte_internal;

 mapping = section->mapping;
 if (!mapping)
  return -pte_internal;

 file = mapping->file;







 begin = mapping->begin + (long) offset;

 errcode = fmap_lock(mapping);
 if (errcode < 0)
  return errcode;

 errcode = fseek(file, begin, SEEK_SET);
 if (errcode)
  goto out_unlock;

 read = fread(buffer, 1, size, file);

 errcode = fmap_unlock(mapping);
 if (errcode < 0)
  return errcode;

 return (int) read;

out_unlock:
 (void) fmap_unlock(mapping);
 return -pte_nomap;
}
