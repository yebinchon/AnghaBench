
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int dummy; } ;
struct archive_string {char* s; size_t length; } ;
struct archive_read {int archive; } ;
struct archive_entry_header_ustar {int size; } ;
typedef int int64_t ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int EINVAL ;
 int ENOMEM ;
 void* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 int archive_set_error (int *,int ,char*) ;
 int * archive_string_ensure (struct archive_string*,size_t) ;
 int memcpy (char*,void const*,size_t) ;
 int tar_atol (int ,int) ;
 int tar_flush_unconsumed (struct archive_read*,size_t*) ;

__attribute__((used)) static int
read_body_to_string(struct archive_read *a, struct tar *tar,
    struct archive_string *as, const void *h, size_t *unconsumed)
{
 int64_t size;
 const struct archive_entry_header_ustar *header;
 const void *src;

 (void)tar;
 header = (const struct archive_entry_header_ustar *)h;
 size = tar_atol(header->size, sizeof(header->size));
 if ((size > 1048576) || (size < 0)) {
  archive_set_error(&a->archive, EINVAL,
      "Special header too large");
  return (ARCHIVE_FATAL);
 }


 if (archive_string_ensure(as, (size_t)size+1) == ((void*)0)) {
  archive_set_error(&a->archive, ENOMEM,
      "No memory");
  return (ARCHIVE_FATAL);
 }

 tar_flush_unconsumed(a, unconsumed);


 *unconsumed = (size_t)((size + 511) & ~ 511);
 src = __archive_read_ahead(a, *unconsumed, ((void*)0));
 if (src == ((void*)0)) {
  *unconsumed = 0;
  return (ARCHIVE_FATAL);
 }
 memcpy(as->s, src, (size_t)size);
 as->s[size] = '\0';
 as->length = (size_t)size;
 return (ARCHIVE_OK);
}
