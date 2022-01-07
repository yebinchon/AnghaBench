
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef scalar_t__ BOOL ;


 scalar_t__ DeleteFile (char*) ;
 int EACCES ;
 int ENOENT ;
 scalar_t__ FALSE ;
 scalar_t__ MoveFile (char const*,char const*) ;
 scalar_t__ TRUE ;
 int _S_IREAD ;
 int _S_IWRITE ;
 int _chmod (char const*,int) ;
 int _close (int) ;
 int errno ;
 int mkstemp (char*) ;
 scalar_t__ stat (char const*,struct stat*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;

int
isc_file_safemovefile(const char *oldname, const char *newname) {
 BOOL filestatus;
 char buf[512];
 struct stat sbuf;
 BOOL exists = FALSE;
 int tmpfd;




 if (stat(oldname, &sbuf) != 0) {
  errno = ENOENT;
  return (-1);
 }




 if (stat(newname, &sbuf) == 0) {
  exists = TRUE;
  strcpy(buf, newname);
  strcat(buf, ".XXXXX");
  tmpfd = mkstemp(buf);
  if (tmpfd > 0)
   _close(tmpfd);
  DeleteFile(buf);
  _chmod(newname, _S_IREAD | _S_IWRITE);

  filestatus = MoveFile(newname, buf);
 }


 _chmod(oldname, _S_IREAD | _S_IWRITE);

 filestatus = MoveFile(oldname, newname);
 if (filestatus == 0) {




  if (exists == TRUE) {
   filestatus = MoveFile(buf, newname);
   if (filestatus == 0)
    errno = EACCES;
  }
  return (-1);
 }




 if (exists == TRUE)
  filestatus = DeleteFile(buf);
 return (0);
}
