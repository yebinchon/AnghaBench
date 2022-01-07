
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {char* hdr; } ;


 char* os_strchr (char*,char) ;
 int os_strlen (char const*) ;
 int os_strncasecmp (char*,char const*,int) ;

char * httpread_hdr_line_get(struct httpread *h, const char *tag)
{
 int tag_len = os_strlen(tag);
 char *hdr = h->hdr;
 hdr = os_strchr(hdr, '\n');
 if (hdr == ((void*)0))
  return ((void*)0);
 hdr++;
 for (;;) {
  if (!os_strncasecmp(hdr, tag, tag_len)) {
   hdr += tag_len;
   while (*hdr == ' ' || *hdr == '\t')
    hdr++;
   return hdr;
  }
  hdr = os_strchr(hdr, '\n');
  if (hdr == ((void*)0))
   return ((void*)0);
  hdr++;
 }
}
