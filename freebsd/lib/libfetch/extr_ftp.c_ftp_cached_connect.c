
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct url {int scheme; scalar_t__ port; } ;
typedef int conn_t ;


 int FTP_OK ;
 int FTP_SYNTAX_ERROR ;
 int * cached_connection ;
 int cached_host ;
 scalar_t__ fetch_default_port (int ) ;
 int * fetch_ref (int *) ;
 int ftp_cmd (int *,char*) ;
 int * ftp_connect (struct url*,struct url*,char const*) ;
 int ftp_disconnect (int *) ;
 scalar_t__ ftp_isconnected (struct url*) ;
 int memcpy (int *,struct url*,int) ;

__attribute__((used)) static conn_t *
ftp_cached_connect(struct url *url, struct url *purl, const char *flags)
{
 conn_t *conn;
 int e;


 if (!url->port)
  url->port = fetch_default_port(url->scheme);


 if (ftp_isconnected(url)) {
  e = ftp_cmd(cached_connection, "NOOP");
  if (e == FTP_OK || e == FTP_SYNTAX_ERROR)
   return (fetch_ref(cached_connection));
 }


 if ((conn = ftp_connect(url, purl, flags)) == ((void*)0))
  return (((void*)0));
 if (cached_connection)
  ftp_disconnect(cached_connection);
 cached_connection = fetch_ref(conn);
 memcpy(&cached_host, url, sizeof(*url));
 return (conn);
}
