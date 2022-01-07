
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _stat {int dummy; } ;


 int _O_RDONLY ;
 int _close (int) ;
 int _fstat (int,struct _stat*) ;
 int _open (char const*,int ) ;
 int pte_bad_file ;
 int pte_internal ;

__attribute__((used)) static int pt_sec_windows_fstat(const char *filename, struct _stat *stat)
{
 int fd, errcode;

 if (!filename || !stat)
  return -pte_internal;

 fd = _open(filename, _O_RDONLY);
 if (fd == -1)
  return -pte_bad_file;

 errcode = _fstat(fd, stat);

 _close(fd);

 if (errcode)
  return -pte_bad_file;

 return 0;
}
