
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct pt_section {char* filename; struct pt_file_status* status; scalar_t__ mapping; scalar_t__ mcount; } ;
struct pt_file_status {long size; } ;
typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 int pt_sec_file_map (struct pt_section*,int *) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_map_success (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_bad_image ;
 int pte_internal ;

int pt_section_map(struct pt_section *section)
{
 struct pt_file_status *status;
 const char *filename;
 uint16_t mcount;
 FILE *file;
 long size;
 int errcode;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 mcount = section->mcount;
 if (mcount)
  return pt_section_map_success(section);

 if (section->mapping)
  goto out_unlock;

 filename = section->filename;
 if (!filename)
  goto out_unlock;

 status = section->status;
 if (!status)
  goto out_unlock;

 errcode = -pte_bad_image;
 file = fopen(filename, "rb");
 if (!file)
  goto out_unlock;

 errcode = fseek(file, 0, SEEK_END);
 if (errcode) {
  errcode = -pte_bad_image;
  goto out_file;
 }

 errcode = -pte_bad_image;
 size = ftell(file);
 if (size < 0)
  goto out_file;

 if (size != status->size)
  goto out_file;




 errcode = pt_sec_file_map(section, file);
 if (!errcode)
  return pt_section_map_success(section);

out_file:
 fclose(file);

out_unlock:
 (void) pt_section_unlock(section);
 return errcode;
}
