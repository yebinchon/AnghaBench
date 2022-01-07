
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct url_stat {int dummy; } ;
struct url {char const* scheme; int offset; int doc; } ;
struct TYPE_7__ {int ref; } ;
typedef TYPE_1__ conn_t ;
typedef int FILE ;


 scalar_t__ FETCH_PROTO ;
 scalar_t__ FETCH_UNAVAIL ;
 int O_RDONLY ;
 int O_WRONLY ;
 char* SCHEME_HTTP ;
 char* SCHEME_HTTPS ;
 int fetchFreeURL (struct url*) ;
 scalar_t__ fetchLastErrCode ;
 TYPE_1__* ftp_cached_connect (struct url*,struct url*,char const*) ;
 int ftp_cwd (TYPE_1__*,int ) ;
 int ftp_disconnect (TYPE_1__*) ;
 int ftp_stat (TYPE_1__*,int ,struct url_stat*) ;
 int * ftp_transfer (TYPE_1__*,char const*,int ,int,int ,char const*) ;
 int * http_request (struct url*,char*,struct url_stat*,struct url*,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

FILE *
ftp_request(struct url *url, const char *op, struct url_stat *us,
    struct url *purl, const char *flags)
{
 conn_t *conn;
 int oflag;


 if (purl && (strcmp(purl->scheme, SCHEME_HTTP) == 0 ||
     strcmp(purl->scheme, SCHEME_HTTPS) == 0)) {
  if (strcmp(op, "STAT") == 0)
   return (http_request(url, "HEAD", us, purl, flags));
  else if (strcmp(op, "RETR") == 0)
   return (http_request(url, "GET", us, purl, flags));




 }


 conn = ftp_cached_connect(url, purl, flags);
 if (purl)
  fetchFreeURL(purl);
 if (conn == ((void*)0))
  return (((void*)0));


 if (ftp_cwd(conn, url->doc) == -1)
  goto errsock;


 if (us && ftp_stat(conn, url->doc, us) == -1
     && fetchLastErrCode != FETCH_PROTO
     && fetchLastErrCode != FETCH_UNAVAIL)
  goto errsock;


 if (strcmp(op, "STAT") == 0) {
  --conn->ref;
  ftp_disconnect(conn);
  return (FILE *)1;
 }
 if (strcmp(op, "STOR") == 0 || strcmp(op, "APPE") == 0)
  oflag = O_WRONLY;
 else
  oflag = O_RDONLY;


 return (ftp_transfer(conn, op, url->doc, oflag, url->offset, flags));

errsock:
 ftp_disconnect(conn);
 return (((void*)0));
}
