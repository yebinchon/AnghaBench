
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ bufsize; unsigned int buflen; int * buf; } ;
typedef TYPE_1__ http_headerbuf_t ;
typedef scalar_t__ hdr_t ;
struct TYPE_9__ {scalar_t__ buflen; char* buf; } ;
typedef TYPE_2__ conn_t ;
struct TYPE_10__ {scalar_t__ num; int name; } ;


 unsigned int HTTP_MAX_CONT_LINES ;
 int fetch_getln (TYPE_2__*) ;
 scalar_t__ hdr_end ;
 TYPE_6__* hdr_names ;
 scalar_t__ hdr_syserror ;
 scalar_t__ hdr_unknown ;
 int http_conn_trimright (TYPE_2__*) ;
 char* http_match (int ,int *) ;
 void* realloc (int *,unsigned int) ;
 int strcpy (int *,char*) ;

__attribute__((used)) static hdr_t
http_next_header(conn_t *conn, http_headerbuf_t *hbuf, const char **p)
{
 unsigned int i, len;





 http_conn_trimright(conn);
 if (conn->buflen == 0)
  return (hdr_end);


 if (hbuf->bufsize < conn->buflen + 1) {
  if ((hbuf->buf = realloc(hbuf->buf, conn->buflen + 1)) == ((void*)0))
   return (hdr_syserror);
  hbuf->bufsize = conn->buflen + 1;
 }
 strcpy(hbuf->buf, conn->buf);
 hbuf->buflen = conn->buflen;





 for (i = 0; i < HTTP_MAX_CONT_LINES; i++) {
  if (fetch_getln(conn) == -1)
   return (hdr_syserror);







  http_conn_trimright(conn);
  if (conn->buf[0] != ' ' && conn->buf[0] != "\t"[0])
   break;


  len = hbuf->buflen + conn->buflen;
  if (hbuf->bufsize < len + 1) {
   len *= 2;
   if ((hbuf->buf = realloc(hbuf->buf, len + 1)) == ((void*)0))
    return (hdr_syserror);
   hbuf->bufsize = len + 1;
  }
  strcpy(hbuf->buf + hbuf->buflen, conn->buf);
  hbuf->buflen += conn->buflen;
 }







 for (i = 0; hdr_names[i].num != hdr_unknown; i++)
  if ((*p = http_match(hdr_names[i].name, hbuf->buf)) != ((void*)0))
   return (hdr_names[i].num);

 return (hdr_unknown);
}
