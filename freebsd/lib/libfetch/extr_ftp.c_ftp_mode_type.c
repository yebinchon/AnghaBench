
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int conn_t ;


 int FTP_OK ;
 int FTP_PROTOCOL_ERROR ;
 int ftp_cmd (int *,char*,int) ;

__attribute__((used)) static int
ftp_mode_type(conn_t *conn, int mode, int type)
{
 int e;

 switch (mode) {
 case 0:
 case 's':
  mode = 'S';
 case 'S':
  break;
 default:
  return (FTP_PROTOCOL_ERROR);
 }
 if ((e = ftp_cmd(conn, "MODE %c", mode)) != FTP_OK) {
  if (mode == 'S') {
  } else {
   return (e);
  }
 }

 switch (type) {
 case 0:
 case 'i':
  type = 'I';
 case 'I':
  break;
 case 'a':
  type = 'A';
 case 'A':
  break;
 case 'd':
  type = 'D';
 case 'D':

 default:
  return (FTP_PROTOCOL_ERROR);
 }
 if ((e = ftp_cmd(conn, "TYPE %c", type)) != FTP_OK)
  return (e);

 return (FTP_OK);
}
