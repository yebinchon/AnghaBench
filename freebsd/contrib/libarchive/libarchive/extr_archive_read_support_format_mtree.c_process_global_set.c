
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {int dummy; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_OK ;
 int add_option (struct archive_read*,struct mtree_option**,char const*,int) ;
 int remove_option (struct mtree_option**,char const*,size_t) ;
 char* strchr (char const*,char) ;
 int strcspn (char const*,char*) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
process_global_set(struct archive_read *a,
    struct mtree_option **global, const char *line)
{
 const char *next, *eq;
 size_t len;
 int r;

 line += 4;
 for (;;) {
  next = line + strspn(line, " \t\r\n");
  if (*next == '\0')
   return (ARCHIVE_OK);
  line = next;
  next = line + strcspn(line, " \t\r\n");
  eq = strchr(line, '=');
  if (eq > next)
   len = next - line;
  else
   len = eq - line;

  remove_option(global, line, len);
  r = add_option(a, global, line, next - line);
  if (r != ARCHIVE_OK)
   return (r);
  line = next;
 }
}
