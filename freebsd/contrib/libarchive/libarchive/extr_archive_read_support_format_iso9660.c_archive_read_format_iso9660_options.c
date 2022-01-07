
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct iso9660 {int opt_support_joliet; int opt_support_rockridge; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
archive_read_format_iso9660_options(struct archive_read *a,
  const char *key, const char *val)
{
 struct iso9660 *iso9660;

 iso9660 = (struct iso9660 *)(a->format->data);

 if (strcmp(key, "joliet") == 0) {
  if (val == ((void*)0) || strcmp(val, "off") == 0 ||
    strcmp(val, "ignore") == 0 ||
    strcmp(val, "disable") == 0 ||
    strcmp(val, "0") == 0)
   iso9660->opt_support_joliet = 0;
  else
   iso9660->opt_support_joliet = 1;
  return (ARCHIVE_OK);
 }
 if (strcmp(key, "rockridge") == 0 ||
     strcmp(key, "Rockridge") == 0) {
  iso9660->opt_support_rockridge = val != ((void*)0);
  return (ARCHIVE_OK);
 }




 return (ARCHIVE_WARN);
}
