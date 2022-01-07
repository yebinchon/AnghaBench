
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CREATE_ALWAYS ;
 scalar_t__ CreateFileA (char*,int,int ,int *,int ,int ,int *) ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GetTempFileNameA (char*,char*,int ,char*) ;
 int GetTempPathA (int,char*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int SEEK_SET ;
 int WriteFile (scalar_t__,void const*,int,int*,int *) ;
 int _O_RDONLY ;
 int _open_osfhandle (intptr_t,int ) ;
 int close (int) ;
 int lseek (int,int ,int ) ;
 int mkstemp (char*) ;
 int strcpy (char*,char*) ;
 char* strdup (char*) ;
 int umask (int) ;
 int unlink (char*) ;
 int write (int,void const*,size_t) ;

int
regress_make_tmpfile(const void *data, size_t datalen, char **filename_out)
{

 char tmpfilename[32];
 int fd;
 *filename_out = ((void*)0);
 strcpy(tmpfilename, "/tmp/eventtmp.XXXXXX");



 fd = mkstemp(tmpfilename);
 if (fd == -1)
  return (-1);
 if (write(fd, data, datalen) != (int)datalen) {
  close(fd);
  return (-1);
 }
 lseek(fd, 0, SEEK_SET);

 unlink(tmpfilename);
 return (fd);
}
