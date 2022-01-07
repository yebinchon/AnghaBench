
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int dummy; } ;
struct iso_directory_record {char* name; int name_len; } ;


 size_t isonum_711 (int ) ;
 char* rrip_lookup_name (struct open_file*,struct iso_directory_record*,int,size_t*) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 char toupper (char const) ;

__attribute__((used)) static int
dirmatch(struct open_file *f, const char *path, struct iso_directory_record *dp,
    int use_rrip, int lenskip)
{
 size_t len, plen;
 char *cp, *sep;
 int i, icase;

 if (use_rrip)
  cp = rrip_lookup_name(f, dp, lenskip, &len);
 else
  cp = ((void*)0);
 if (cp == ((void*)0)) {
  len = isonum_711(dp->name_len);
  cp = dp->name;
  icase = 1;
 } else
  icase = 0;

 sep = strchr(path, '/');
 if (sep != ((void*)0)) {
  plen = sep - path;
 } else {
  plen = strlen(path);
 }

 if (plen != len)
  return (0);

 for (i = len; --i >= 0; path++, cp++) {
  if (!*path || *path == '/')
   break;
  if (*path == *cp)
   continue;
  if (!icase && toupper(*path) == *cp)
   continue;
  return 0;
 }
 if (*path && *path != '/')
  return 0;





 if (i >= 0 && (*cp == ';' || *cp == '.')) {

  if (*cp == '.' && cp[1] != ';')
   return 0;
  while (--i >= 0)
   if (*++cp != ';' && (*cp < '0' || *cp > '9'))
    return 0;
 }
 return 1;
}
