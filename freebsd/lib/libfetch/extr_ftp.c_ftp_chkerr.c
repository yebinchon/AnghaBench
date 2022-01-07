
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* buf; int buflen; int err; } ;
typedef TYPE_1__ conn_t ;


 int FTP_PROTOCOL_ERROR ;
 int fetch_getln (TYPE_1__*) ;
 int fetch_syserr () ;
 int ftp_seterr (int ) ;
 scalar_t__ isftpinfo (char*) ;
 int isftpreply (char*) ;
 scalar_t__ isspace (unsigned char) ;

__attribute__((used)) static int
ftp_chkerr(conn_t *conn)
{
 if (fetch_getln(conn) == -1) {
  fetch_syserr();
  return (-1);
 }
 if (isftpinfo(conn->buf)) {
  while (conn->buflen && !isftpreply(conn->buf)) {
   if (fetch_getln(conn) == -1) {
    fetch_syserr();
    return (-1);
   }
  }
 }

 while (conn->buflen &&
     isspace((unsigned char)conn->buf[conn->buflen - 1]))
  conn->buflen--;
 conn->buf[conn->buflen] = '\0';

 if (!isftpreply(conn->buf)) {
  ftp_seterr(FTP_PROTOCOL_ERROR);
  return (-1);
 }

 conn->err = (conn->buf[0] - '0') * 100
     + (conn->buf[1] - '0') * 10
     + (conn->buf[2] - '0');

 return (conn->err);
}
