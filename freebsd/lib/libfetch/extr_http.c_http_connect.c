
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int val ;
struct url {int scheme; int port; int host; } ;
typedef int http_headerbuf_t ;
typedef scalar_t__ hdr_t ;
struct TYPE_10__ {int sd; int err; } ;
typedef TYPE_1__ conn_t ;


 int AF_INET ;
 int AF_INET6 ;
 int AF_UNSPEC ;
 int CHECK_FLAG (char) ;
 int EAUTH ;
 scalar_t__ HTTP_OK ;
 int HTTP_PROTOCOL_ERROR ;
 int IPPROTO_TCP ;
 int SCHEME_HTTPS ;
 int TCP_NOPUSH ;
 int clean_http_headerbuf (int *) ;
 int errno ;
 int fetch_close (TYPE_1__*) ;
 TYPE_1__* fetch_connect (int ,int ,int,int) ;
 scalar_t__ fetch_getln (TYPE_1__*) ;
 int fetch_ssl (TYPE_1__*,struct url*,int) ;
 int fetch_syserr () ;
 scalar_t__ hdr_end ;


 int http_cmd (TYPE_1__*,char*,...) ;
 scalar_t__ http_get_reply (TYPE_1__*) ;
 scalar_t__ http_next_header (TYPE_1__*,int *,char const**) ;
 int http_seterr (int ) ;
 int init_http_headerbuf (int *) ;
 int setsockopt (int ,int ,int ,int*,int) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static conn_t *
http_connect(struct url *URL, struct url *purl, const char *flags)
{
 struct url *curl;
 conn_t *conn;
 hdr_t h;
 http_headerbuf_t headerbuf;
 const char *p;
 int verbose;
 int af, val;
 int serrno;




 af = AF_INET;


 verbose = CHECK_FLAG('v');
 if (CHECK_FLAG('4'))
  af = AF_INET;





 curl = (purl != ((void*)0)) ? purl : URL;

 if ((conn = fetch_connect(curl->host, curl->port, af, verbose)) == ((void*)0))

  return (((void*)0));
 init_http_headerbuf(&headerbuf);
 if (strcmp(URL->scheme, SCHEME_HTTPS) == 0 && purl) {
  http_cmd(conn, "CONNECT %s:%d HTTP/1.1",
      URL->host, URL->port);
  http_cmd(conn, "Host: %s:%d",
      URL->host, URL->port);
  http_cmd(conn, "");
  if (http_get_reply(conn) != HTTP_OK) {
   http_seterr(conn->err);
   goto ouch;
  }

  if (fetch_getln(conn) < 0) {
   fetch_syserr();
   goto ouch;
  }
  do {
   switch ((h = http_next_header(conn, &headerbuf, &p))) {
   case 128:
    fetch_syserr();
    goto ouch;
   case 129:
    http_seterr(HTTP_PROTOCOL_ERROR);
    goto ouch;
   default:
                 ;
   }
  } while (h > hdr_end);
 }
 if (strcmp(URL->scheme, SCHEME_HTTPS) == 0 &&
     fetch_ssl(conn, URL, verbose) == -1) {

  errno = EAUTH;
  fetch_syserr();
  goto ouch;
 }

 val = 1;
 setsockopt(conn->sd, IPPROTO_TCP, TCP_NOPUSH, &val, sizeof(val));

 clean_http_headerbuf(&headerbuf);
 return (conn);
ouch:
 serrno = errno;
 clean_http_headerbuf(&headerbuf);
 fetch_close(conn);
 errno = serrno;
 return (((void*)0));
}
