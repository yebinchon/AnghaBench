
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pwd ;
typedef int conn_t ;


 int DEBUGF (char*,int,char const*,char const*) ;
 int FTP_FILE_ACTION_OK ;
 int FTP_OK ;
 int FTP_WORKING_DIRECTORY ;
 int PATH_MAX ;
 int ftp_cmd (int *,char*,...) ;
 int ftp_pwd (int *,char*,int) ;
 int ftp_seterr (int) ;
 int strlen (char*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
ftp_cwd(conn_t *conn, const char *file)
{
 const char *beg, *end;
 char pwd[PATH_MAX];
 int e, i, len;


 if ((end = strrchr(file, '/')) == ((void*)0))
  return (0);
 if ((e = ftp_cmd(conn, "PWD")) != FTP_WORKING_DIRECTORY ||
     (e = ftp_pwd(conn, pwd, sizeof(pwd))) != FTP_OK) {
  ftp_seterr(e);
  return (-1);
 }
 for (;;) {
  len = strlen(pwd);


  for (i = 0; i <= len && i <= end - file; ++i)
   if (pwd[i] != file[i])
    break;





  if (pwd[i] == '\0' && (file[i - 1] == '/' || file[i] == '/'))
   break;
  if ((e = ftp_cmd(conn, "CDUP")) != FTP_FILE_ACTION_OK ||
      (e = ftp_cmd(conn, "PWD")) != FTP_WORKING_DIRECTORY ||
      (e = ftp_pwd(conn, pwd, sizeof(pwd))) != FTP_OK) {
   ftp_seterr(e);
   return (-1);
  }
 }
 for (beg = file + i; beg < end; beg = file + i + 1) {
  while (*beg == '/')
   ++beg, ++i;
  for (++i; file + i < end && file[i] != '/'; ++i)
                 ;
  e = ftp_cmd(conn, "CWD %.*s", file + i - beg, beg);
  if (e != FTP_FILE_ACTION_OK) {
   ftp_seterr(e);
   return (-1);
  }
 }
 return (0);
}
