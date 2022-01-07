
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {char* hdr; int hdr_type; int version; int reply_code; char* uri; scalar_t__ chunked; scalar_t__ got_content_length; int max_bytes; } ;
 int HTTPREAD_HDR_TYPE_UNKNOWN ;

 int atol (char*) ;
 int hex2byte (char*) ;
 scalar_t__ httpread_hdr_option_analyze (struct httpread*,char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isgraph (char) ;
 scalar_t__ isxdigit (char) ;
 char* os_malloc (int) ;
 scalar_t__ os_strncmp (char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ word_eq (char*,char*) ;

__attribute__((used)) static int httpread_hdr_analyze(struct httpread *h)
{
 char *hbp = h->hdr;
 int standard_first_line = 1;


 h->hdr_type = HTTPREAD_HDR_TYPE_UNKNOWN;
 if (!isgraph(*hbp))
  goto bad;
 if (os_strncmp(hbp, "HTTP/", 5) == 0) {
  h->hdr_type = 131;
  standard_first_line = 0;
  hbp += 5;
  if (hbp[0] == '1' && hbp[1] == '.' &&
      isdigit(hbp[2]) && hbp[2] != '0')
   h->version = 1;
  while (isgraph(*hbp))
   hbp++;
  while (*hbp == ' ' || *hbp == '\t')
   hbp++;
  if (!isdigit(*hbp))
   goto bad;
  h->reply_code = atol(hbp);
 } else if (word_eq(hbp, "GET"))
  h->hdr_type = 138;
 else if (word_eq(hbp, "HEAD"))
  h->hdr_type = 137;
 else if (word_eq(hbp, "POST"))
  h->hdr_type = 133;
 else if (word_eq(hbp, "PUT"))
  h->hdr_type = 132;
 else if (word_eq(hbp, "DELETE"))
  h->hdr_type = 139;
 else if (word_eq(hbp, "TRACE"))
  h->hdr_type = 129;
 else if (word_eq(hbp, "CONNECT"))
  h->hdr_type = 140;
 else if (word_eq(hbp, "NOTIFY"))
  h->hdr_type = 134;
 else if (word_eq(hbp, "M-SEARCH"))
  h->hdr_type = 135;
 else if (word_eq(hbp, "M-POST"))
  h->hdr_type = 136;
 else if (word_eq(hbp, "SUBSCRIBE"))
  h->hdr_type = 130;
 else if (word_eq(hbp, "UNSUBSCRIBE"))
  h->hdr_type = 128;
 else {
 }

 if (standard_first_line) {
  char *rawuri;
  char *uri;

  while (isgraph(*hbp))
   hbp++;
  while (*hbp == ' ' || *hbp == '\t')
   hbp++;





  rawuri = hbp;
  while (isgraph(*hbp))
   hbp++;
  h->uri = os_malloc((hbp - rawuri) + 1);
  if (h->uri == ((void*)0))
   goto bad;
  uri = h->uri;
  while (rawuri < hbp) {
   int c = *rawuri;
   if (c == '%' &&
       isxdigit(rawuri[1]) && isxdigit(rawuri[2])) {
    *uri++ = hex2byte(rawuri + 1);
    rawuri += 3;
   } else {
    *uri++ = c;
    rawuri++;
   }
  }
  *uri = 0;
  while (*hbp == ' ' || *hbp == '\t')
   hbp++;

  if (0 == strncmp(hbp, "HTTP/", 5)) {
   hbp += 5;
   if (hbp[0] == '1' && hbp[1] == '.' &&
       isdigit(hbp[2]) && hbp[2] != '0')
    h->version = 1;
  }
 }

 while (*hbp)
  if (*hbp++ == '\n')
   break;




 for (;;) {

  if (hbp[0] == '\n' ||
      (hbp[0] == '\r' && hbp[1] == '\n'))
   break;
  if (!isgraph(*hbp))
   goto bad;
  if (httpread_hdr_option_analyze(h, hbp))
   goto bad;

  while (*hbp)
   if (*hbp++ == '\n')
    break;
 }


 if (h->chunked)
  h->got_content_length = 0;





 switch (h->hdr_type) {
 case 131:




  if (h->reply_code != 200)
   h->max_bytes = 0;
  break;
 case 138:
 case 137:



  if (h->chunked == 0 && h->got_content_length == 0)
   h->max_bytes = 0;
  break;
 case 133:
 case 132:
 case 139:
 case 129:
 case 140:
 case 134:
 case 135:
 case 136:
 case 130:
 case 128:
 default:
  break;
 }

 return 0;

bad:

 return -1;
}
