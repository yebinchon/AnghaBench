
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int message_error (int ) ;

extern bool
is_empty_filename(const char *filename)
{
 if (filename[0] == '\0') {
  message_error(_("Empty filename, skipping"));
  return 1;
 }

 return 0;
}
