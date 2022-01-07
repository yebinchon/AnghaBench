
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {int dummy; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*) ;
 int free_options (struct mtree_option*) ;
 int remove_option (struct mtree_option**,char const*,size_t) ;
 int * strchr (char const*,char) ;
 size_t strcspn (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int strspn (char const*,char*) ;

__attribute__((used)) static int
process_global_unset(struct archive_read *a,
    struct mtree_option **global, const char *line)
{
 const char *next;
 size_t len;

 line += 6;
 if (strchr(line, '=') != ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "/unset shall not contain `='");
  return ARCHIVE_FATAL;
 }

 for (;;) {
  next = line + strspn(line, " \t\r\n");
  if (*next == '\0')
   return (ARCHIVE_OK);
  line = next;
  len = strcspn(line, " \t\r\n");

  if (len == 3 && strncmp(line, "all", 3) == 0) {
   free_options(*global);
   *global = ((void*)0);
  } else {
   remove_option(global, line, len);
  }

  line += len;
 }
}
