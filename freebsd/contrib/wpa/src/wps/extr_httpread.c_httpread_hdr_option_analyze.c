
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {scalar_t__ content_length; scalar_t__ max_bytes; int got_content_length; int chunked; scalar_t__ in_chunk_data; } ;


 int MSG_DEBUG ;
 scalar_t__ atol (char*) ;
 int isdigit (char) ;
 scalar_t__ isgraph (char) ;
 scalar_t__ word_eq (char*,char*) ;
 int wpa_printf (int ,char*,scalar_t__) ;

__attribute__((used)) static int httpread_hdr_option_analyze(
 struct httpread *h,
 char *hbp
 )
{
 if (word_eq(hbp, "CONTENT-LENGTH:")) {
  while (isgraph(*hbp))
   hbp++;
  while (*hbp == ' ' || *hbp == '\t')
   hbp++;
  if (!isdigit(*hbp))
   return -1;
  h->content_length = atol(hbp);
  if (h->content_length < 0 || h->content_length > h->max_bytes) {
   wpa_printf(MSG_DEBUG,
       "httpread: Unacceptable Content-Length %d",
       h->content_length);
   return -1;
  }
  h->got_content_length = 1;
  return 0;
 }
 if (word_eq(hbp, "TRANSFER_ENCODING:") ||
     word_eq(hbp, "TRANSFER-ENCODING:")) {
  while (isgraph(*hbp))
   hbp++;
  while (*hbp == ' ' || *hbp == '\t')
   hbp++;



  if (word_eq(hbp, "CHUNKED")) {
   h->chunked = 1;
   h->in_chunk_data = 0;

  }
  return 0;
 }

 return 0;
}
