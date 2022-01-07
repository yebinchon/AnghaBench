
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_section {char* filename; scalar_t__ mapping; scalar_t__ mcount; } ;
typedef scalar_t__ HANDLE ;
typedef int FILE ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFileA (char const*,int ,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int GENERIC_READ ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int OPEN_EXISTING ;
 int _O_RDONLY ;
 int _close (int) ;
 int * _fdopen (int,char*) ;
 int _open_osfhandle (intptr_t,int ) ;
 int check_file_status (struct pt_section*,int) ;
 int fclose (int *) ;
 int pt_sec_file_map (struct pt_section*,int *) ;
 int pt_sec_windows_map (struct pt_section*,int) ;
 int pt_sec_windows_map_success (struct pt_section*) ;
 int pt_section_lock (struct pt_section*) ;
 int pt_section_unlock (struct pt_section*) ;
 int pte_bad_file ;
 int pte_internal ;

int pt_section_map(struct pt_section *section)
{
 const char *filename;
 HANDLE fh;
 FILE *file;
 int fd, errcode;

 if (!section)
  return -pte_internal;

 errcode = pt_section_lock(section);
 if (errcode < 0)
  return errcode;

 if (section->mcount)
  return pt_sec_windows_map_success(section);

 if (section->mapping) {
  errcode = -pte_internal;
  goto out_unlock;
 }

 filename = section->filename;
 if (!filename) {
  errcode = -pte_internal;
  goto out_unlock;
 }

 fh = CreateFileA(filename, GENERIC_READ, FILE_SHARE_READ, ((void*)0),
    OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, ((void*)0));
 if (fh == INVALID_HANDLE_VALUE) {






  fh = CreateFileA(filename, GENERIC_READ, FILE_SHARE_WRITE,
     ((void*)0), OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL,
     ((void*)0));
  if (fh == INVALID_HANDLE_VALUE) {
   errcode = -pte_bad_file;
   goto out_unlock;
  }
 }

 fd = _open_osfhandle((intptr_t) fh, _O_RDONLY);
 if (fd == -1) {
  errcode = -pte_bad_file;
  goto out_fh;
 }

 errcode = check_file_status(section, fd);
 if (errcode < 0)
  goto out_fd;




 errcode = pt_sec_windows_map(section, fd);
 if (!errcode)
  return pt_sec_windows_map_success(section);




 file = _fdopen(fd, "rb");
 if (!file) {
  errcode = -pte_bad_file;
  goto out_fd;
 }




 errcode = pt_sec_file_map(section, file);
 if (!errcode)
  return pt_sec_windows_map_success(section);

 fclose(file);
 goto out_unlock;

out_fd:
 _close(fd);
 return errcode;

out_fh:
 CloseHandle(fh);

out_unlock:
 (void) pt_section_unlock(section);
 return errcode;
}
