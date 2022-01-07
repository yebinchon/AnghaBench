
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtree_option {char* value; struct mtree_option* next; } ;
struct archive_read {int archive; } ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 int free (struct mtree_option*) ;
 void* malloc (size_t) ;
 int memcpy (char*,char const*,size_t) ;

__attribute__((used)) static int
add_option(struct archive_read *a, struct mtree_option **global,
    const char *value, size_t len)
{
 struct mtree_option *opt;

 if ((opt = malloc(sizeof(*opt))) == ((void*)0)) {
  archive_set_error(&a->archive, errno, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 if ((opt->value = malloc(len + 1)) == ((void*)0)) {
  free(opt);
  archive_set_error(&a->archive, errno, "Can't allocate memory");
  return (ARCHIVE_FATAL);
 }
 memcpy(opt->value, value, len);
 opt->value[len] = '\0';
 opt->next = *global;
 *global = opt;
 return (ARCHIVE_OK);
}
