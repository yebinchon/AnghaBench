
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARCHIVE_ENTRY_ACL_EXECUTE ;
 int ARCHIVE_ENTRY_ACL_READ ;
 int ARCHIVE_ENTRY_ACL_WRITE ;

__attribute__((used)) static int
ismode(const char *start, const char *end, int *permset)
{
 const char *p;

 if (start >= end)
  return (0);
 p = start;
 *permset = 0;
 while (p < end) {
  switch (*p++) {
  case 'r': case 'R':
   *permset |= ARCHIVE_ENTRY_ACL_READ;
   break;
  case 'w': case 'W':
   *permset |= ARCHIVE_ENTRY_ACL_WRITE;
   break;
  case 'x': case 'X':
   *permset |= ARCHIVE_ENTRY_ACL_EXECUTE;
   break;
  case '-':
   break;
  default:
   return (0);
  }
 }
 return (1);
}
