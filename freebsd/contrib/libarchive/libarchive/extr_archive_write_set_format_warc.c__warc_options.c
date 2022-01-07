
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct warc_s {unsigned int omit_warcinfo; } ;
struct archive_write {struct warc_s* format_data; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
_warc_options(struct archive_write *a, const char *key, const char *val)
{
 struct warc_s *w = a->format_data;

 if (strcmp(key, "omit-warcinfo") == 0) {
  if (val == ((void*)0) || strcmp(val, "true") == 0) {

   w->omit_warcinfo = 1U;
   return (ARCHIVE_OK);
  }
 }




 return (ARCHIVE_WARN);
}
