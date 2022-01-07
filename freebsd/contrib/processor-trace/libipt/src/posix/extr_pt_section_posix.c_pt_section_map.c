
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {char* filename; scalar_t__ mapping; scalar_t__ mcount; } ;
typedef int FILE ;


 int O_RDONLY ;
 int check_file_status (struct pt_section*,int) ;
 int close (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int open (char const*,int ) ;
 int pt_sec_file_map (struct pt_section*,int *) ;
 int pt_sec_posix_map (struct pt_section*,int) ;
 int pt_sec_posix_map_success (struct pt_section*) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_bad_file ;
 int pte_internal ;

int pt_section_map(struct pt_section *section)
{
 const char *filename;
 FILE *file;
 int fd, errcode;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 if (section->mcount)
  return pt_sec_posix_map_success(section);

 if (section->mapping)
  goto out_unlock;

 filename = section->filename;
 if (!filename)
  goto out_unlock;

 errcode = -pte_bad_file;
 fd = open(filename, O_RDONLY);
 if (fd == -1)
  goto out_unlock;

 errcode = check_file_status(section, fd);
 if (errcode < 0)
  goto out_fd;


 errcode = pt_sec_posix_map(section, fd);
 if (!errcode) {
  close(fd);

  return pt_sec_posix_map_success(section);
 }




 file = fdopen(fd, "rb");
 if (!file) {
  errcode = -pte_bad_file;
  goto out_fd;
 }




 errcode = pt_sec_file_map(section, file);
 if (!errcode)
  return pt_sec_posix_map_success(section);

 fclose(file);
 goto out_unlock;

out_fd:
 close(fd);

out_unlock:
 (void) pt_section_unlock(section);
 return errcode;
}
