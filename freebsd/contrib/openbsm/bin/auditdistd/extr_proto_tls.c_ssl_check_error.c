
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SSL ;


 int EX_OK ;
 int EX_TEMPFAIL ;






 int SSL_get_error (int *,int) ;
 int pjdlog_debug (int,char*) ;
 int pjdlog_exitx (int ,char*,...) ;
 int ssl_log_errors () ;

__attribute__((used)) static int
ssl_check_error(SSL *ssl, int ret)
{
 int error;

 error = SSL_get_error(ssl, ret);

 switch (error) {
 case 133:
  return (0);
 case 130:
  pjdlog_debug(2, "SSL_ERROR_WANT_READ");
  return (-1);
 case 129:
  pjdlog_debug(2, "SSL_ERROR_WANT_WRITE");
  return (-1);
 case 128:
  pjdlog_exitx(EX_OK, "Connection closed.");
 case 131:
  ssl_log_errors();
  pjdlog_exitx(EX_TEMPFAIL, "SSL I/O error.");
 case 132:
  ssl_log_errors();
  pjdlog_exitx(EX_TEMPFAIL, "SSL protocol error.");
 default:
  ssl_log_errors();
  pjdlog_exitx(EX_TEMPFAIL, "Unknown SSL error (%d).", error);
 }
}
