
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int port; int host; } ;
typedef int conn_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int CHECK_FLAG (char) ;
 int FTP_LOGGED_IN ;
 int FTP_SERVICE_READY ;
 int fetch_close (int *) ;
 int * fetch_connect (int ,int ,int,int) ;
 int ftp_authenticate (int *,struct url*,struct url*) ;
 int ftp_chkerr (int *) ;
 int ftp_seterr (int) ;

__attribute__((used)) static conn_t *
ftp_connect(struct url *url, struct url *purl, const char *flags)
{
 conn_t *conn;
 int e, direct, verbose;



 int af = AF_INET;


 direct = CHECK_FLAG('d');
 verbose = CHECK_FLAG('v');
 if (CHECK_FLAG('4'))
  af = AF_INET;
 else if (CHECK_FLAG('6'))
  af = AF_INET6;

 if (direct)
  purl = ((void*)0);


 if (purl) {

  conn = fetch_connect(purl->host, purl->port, af, verbose);
 } else {

  conn = fetch_connect(url->host, url->port, af, verbose);
  purl = ((void*)0);
 }


 if (conn == ((void*)0))

  return (((void*)0));


 if ((e = ftp_chkerr(conn)) != FTP_SERVICE_READY)
  goto fouch;


 if ((e = ftp_authenticate(conn, url, purl)) != FTP_LOGGED_IN)
  goto fouch;




 return (conn);

fouch:
 if (e != -1)
  ftp_seterr(e);
 fetch_close(conn);
 return (((void*)0));
}
