
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;
typedef enum nss_lookup_type { ____Placeholder_nss_lookup_type } nss_lookup_type ;


 int NS_NOTFOUND ;
 int NS_SUCCESS ;
 scalar_t__ is_comment_line (char const*,size_t) ;
 int memcmp (char const*,char const*,size_t) ;



 size_t strlen (char const*) ;
 unsigned long strtoul (char const*,char**,int) ;

int
__gr_match_entry(const char *line, size_t linesize, enum nss_lookup_type how,
    const char *name, gid_t gid)
{
 size_t namesize;
 const char *p, *eol;
 char *q;
 unsigned long n;
 int i, needed;

 if (linesize == 0 || is_comment_line(line, linesize))
  return (NS_NOTFOUND);
 switch (how) {
 case 128: needed = 1; break;
 case 129: needed = 2; break;
 default: needed = 2; break;
 }
 eol = &line[linesize];
 for (p = line, i = 0; i < needed && p < eol; p++)
  if (*p == ':')
   i++;
 if (i < needed)
  return (NS_NOTFOUND);
 switch (how) {
 case 128:
  namesize = strlen(name);
  if (namesize + 1 == (size_t)(p - line) &&
      memcmp(line, name, namesize) == 0)
   return (NS_SUCCESS);
  break;
 case 129:
  n = strtoul(p, &q, 10);
  if (q < eol && *q == ':' && gid == (gid_t)n)
   return (NS_SUCCESS);
  break;
 case 130:
  return (NS_SUCCESS);
 default:
  break;
 }
 return (NS_NOTFOUND);
}
