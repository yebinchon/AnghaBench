
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int got_hdr; scalar_t__ body_nbytes; int content_length; int got_body; char* hdr; int hdr_nbytes; scalar_t__ max_bytes; scalar_t__ body_alloc_nbytes; char* body; int in_chunk_data; int chunk_start; scalar_t__ chunk_size; int in_trailer; int trailer_state; scalar_t__ hdr_type; int got_file; int cookie; int (* cb ) (struct httpread*,int ,int ) ;int sd; scalar_t__ chunked; scalar_t__ got_content_length; } ;
typedef int readbuf ;


 int EVENT_TYPE_READ ;
 int HTTPREAD_BODYBUF_DELTA ;
 int HTTPREAD_EVENT_ERROR ;
 int HTTPREAD_EVENT_FILE_READY ;
 int HTTPREAD_HEADER_MAX_SIZE ;
 int HTTPREAD_READBUF_SIZE ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int eloop_cancel_timeout (int ,int *,struct httpread*) ;
 int eloop_unregister_sock (int ,int ) ;
 int errno ;
 scalar_t__ httpread_hdr_analyze (struct httpread*) ;
 int httpread_timeout_handler ;
 int isxdigit (char) ;
 int os_memcpy (char*,char*,int) ;
 char* os_realloc (char*,int) ;
 int os_strncasecmp (char*,char*,int) ;
 int read (int ,char*,int) ;
 int strerror (int ) ;
 scalar_t__ strtoul (char*,int *,int) ;
 int stub1 (struct httpread*,int ,int ) ;
 int stub2 (struct httpread*,int ,int ) ;




 int wpa_hexdump_ascii (int ,char*,char*,int) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void httpread_read_handler(int sd, void *eloop_ctx, void *sock_ctx)
{
 struct httpread *h = sock_ctx;
 int nread;
 char *rbp;
 char *hbp;
 char *bbp;
 char readbuf[HTTPREAD_READBUF_SIZE];




 wpa_printf(MSG_DEBUG, "httpread: Trying to read more data(%p)", h);
 nread = read(h->sd, readbuf, sizeof(readbuf));
 if (nread < 0) {
  wpa_printf(MSG_DEBUG, "httpread failed: %s", strerror(errno));
  goto bad;
 }
 wpa_hexdump_ascii(MSG_MSGDUMP, "httpread - read", readbuf, nread);
 if (nread == 0) {




  if (!h->got_hdr) {

   wpa_printf(MSG_DEBUG, "httpread premature eof(%p)", h);
   goto bad;
  }
  if (h->chunked || h->got_content_length) {

   wpa_printf(MSG_DEBUG,
       "httpread premature eof(%p) %d/%d",
       h, h->body_nbytes,
       h->content_length);
   goto bad;
  }




  wpa_printf(MSG_DEBUG, "httpread ok eof(%p)", h);
  h->got_body = 1;
  goto got_file;
 }
 rbp = readbuf;




 if (!h->got_hdr) {
  hbp = h->hdr + h->hdr_nbytes;





  for (;;) {
   if (nread == 0)
    goto get_more;
   if (h->hdr_nbytes == HTTPREAD_HEADER_MAX_SIZE) {
    wpa_printf(MSG_DEBUG,
        "httpread: Too long header");
    goto bad;
   }
   *hbp++ = *rbp++;
   nread--;
   h->hdr_nbytes++;
   if (h->hdr_nbytes >= 4 &&
       hbp[-1] == '\n' &&
       hbp[-2] == '\r' &&
       hbp[-3] == '\n' &&
       hbp[-4] == '\r' ) {
    h->got_hdr = 1;
    *hbp = 0;
    break;
   }
  }

  if (httpread_hdr_analyze(h)) {
   wpa_printf(MSG_DEBUG, "httpread bad hdr(%p)", h);
   goto bad;
  }
  if (h->max_bytes == 0) {
   wpa_printf(MSG_DEBUG, "httpread no body hdr end(%p)",
       h);
   goto got_file;
  }
  if (h->got_content_length && h->content_length == 0) {
   wpa_printf(MSG_DEBUG,
       "httpread zero content length(%p)", h);
   goto got_file;
  }
 }




 if (!os_strncasecmp(h->hdr, "SUBSCRIBE", 9) ||
     !os_strncasecmp(h->hdr, "UNSUBSCRIBE", 11) ||
     !os_strncasecmp(h->hdr, "HEAD", 4) ||
     !os_strncasecmp(h->hdr, "GET", 3)) {
  if (!h->got_body) {
   wpa_printf(MSG_DEBUG, "httpread NO BODY for sp. type");
  }
  h->got_body = 1;
  goto got_file;
 }





 if (nread == 0)
  goto get_more;
 if (!h->got_body) {




  if (h->body_alloc_nbytes < (h->body_nbytes + nread + 1)) {
   char *new_body;
   int new_alloc_nbytes;

   if (h->body_nbytes >= h->max_bytes) {
    wpa_printf(MSG_DEBUG,
        "httpread: body_nbytes=%d >= max_bytes=%d",
        h->body_nbytes, h->max_bytes);
    goto bad;
   }
   new_alloc_nbytes = h->body_alloc_nbytes +
    HTTPREAD_BODYBUF_DELTA;




   if (h->got_content_length &&
       new_alloc_nbytes < (h->content_length + 1))
    new_alloc_nbytes = h->content_length + 1;
   if (new_alloc_nbytes < h->body_alloc_nbytes ||
       new_alloc_nbytes > h->max_bytes +
       HTTPREAD_BODYBUF_DELTA) {
    wpa_printf(MSG_DEBUG,
        "httpread: Unacceptable body length %d (body_alloc_nbytes=%u max_bytes=%u)",
        new_alloc_nbytes,
        h->body_alloc_nbytes,
        h->max_bytes);
    goto bad;
   }
   if ((new_body = os_realloc(h->body, new_alloc_nbytes))
       == ((void*)0)) {
    wpa_printf(MSG_DEBUG,
        "httpread: Failed to reallocate buffer (len=%d)",
        new_alloc_nbytes);
    goto bad;
   }

   h->body = new_body;
   h->body_alloc_nbytes = new_alloc_nbytes;
  }

  bbp = h->body + h->body_nbytes;
  for (;;) {
   int ncopy;

   if (h->chunked && h->in_chunk_data == 0) {

    char *cbp = h->body + h->chunk_start;
    if (bbp-cbp >= 2 && bbp[-2] == '\r' &&
        bbp[-1] == '\n') {




     if (!isxdigit(*cbp)) {
      wpa_printf(MSG_DEBUG,
          "httpread: Unexpected chunk header value (not a hex digit)");
      goto bad;
     }
     h->chunk_size = strtoul(cbp, ((void*)0), 16);
     if (h->chunk_size < 0 ||
         h->chunk_size > h->max_bytes) {
      wpa_printf(MSG_DEBUG,
          "httpread: Invalid chunk size %d",
          h->chunk_size);
      goto bad;
     }



     h->body_nbytes = h->chunk_start;
     bbp = cbp;
     if (h->chunk_size == 0) {


      h->in_trailer = 1;
      wpa_printf(MSG_DEBUG,
          "httpread end chunks(%p)",
          h);
      break;
     }
     h->in_chunk_data = 1;

    }
   } else if (h->chunked) {

    if ((h->body_nbytes - h->chunk_start) ==
        (h->chunk_size + 2)) {






     if (bbp[-1] == '\n' &&
         bbp[-2] == '\r') {
     } else {
      wpa_printf(MSG_DEBUG,
          "httpread: Invalid chunk end");
      goto bad;
     }
     h->body_nbytes -= 2;
     bbp -= 2;
     h->chunk_start = h->body_nbytes;
     h->in_chunk_data = 0;
     h->chunk_size = 0;
    }
   } else if (h->got_content_length &&
       h->body_nbytes >= h->content_length) {
    h->got_body = 1;
    wpa_printf(MSG_DEBUG,
        "httpread got content(%p)", h);
    goto got_file;
   }
   if (nread <= 0)
    break;

   if (h->chunked && h->in_chunk_data) {



    ncopy = (h->chunk_start + h->chunk_size + 2) -
     h->body_nbytes;
   } else if (h->chunked) {

    *bbp++ = *rbp++;
    nread--;
    h->body_nbytes++;
    continue;
   } else if (h->got_content_length) {
    ncopy = h->content_length - h->body_nbytes;
   } else {
    ncopy = nread;
   }

   if (ncopy < 0) {
    wpa_printf(MSG_DEBUG,
        "httpread: Invalid ncopy=%d", ncopy);
    goto bad;
   }
   if (ncopy > nread)
    ncopy = nread;
   os_memcpy(bbp, rbp, ncopy);
   bbp += ncopy;
   h->body_nbytes += ncopy;
   rbp += ncopy;
   nread -= ncopy;
  }
 }
 if (h->chunked && h->in_trailer) {






  for (;;) {
   int c;
   if (nread <= 0)
    break;
   c = *rbp++;
   nread--;
   switch (h->trailer_state) {
   case 130:
    if (c == '\r')
     h->trailer_state = 131;
    else
     h->trailer_state = 129;
    break;
   case 131:

    if (c == '\n') {
     h->trailer_state = 130;
     h->in_trailer = 0;
     wpa_printf(MSG_DEBUG,
         "httpread got content(%p)",
         h);
     h->got_body = 1;
     goto got_file;
    }
    h->trailer_state = 129;
    break;
   case 129:
    if (c == '\r')
     h->trailer_state = 128;
    break;
   case 128:
    if (c == '\n')
     h->trailer_state = 130;
    else
     h->trailer_state = 129;
    break;
   }
  }
 }
 goto get_more;

bad:

 wpa_printf(MSG_DEBUG, "httpread read/parse failure (%p)", h);
 (*h->cb)(h, h->cookie, HTTPREAD_EVENT_ERROR);
 return;

get_more:
 wpa_printf(MSG_DEBUG, "httpread: get more (%p)", h);
 return;

got_file:
 wpa_printf(MSG_DEBUG, "httpread got file %d bytes type %d",
     h->body_nbytes, h->hdr_type);
 wpa_hexdump_ascii(MSG_MSGDUMP, "httpread: body",
     h->body, h->body_nbytes);

 if (h->body)
  h->body[h->body_nbytes] = 0;
 h->got_file = 1;




 eloop_unregister_sock(h->sd, EVENT_TYPE_READ);



 eloop_cancel_timeout(httpread_timeout_handler, ((void*)0), h);
 (*h->cb)(h, h->cookie, HTTPREAD_EVENT_FILE_READY);
}
