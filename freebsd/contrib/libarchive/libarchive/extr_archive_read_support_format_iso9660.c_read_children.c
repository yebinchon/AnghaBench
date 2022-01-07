
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct iso9660 {size_t entry_bytes_unconsumed; scalar_t__ current_position; scalar_t__ volume_size; int logical_block_size; } ;
struct TYPE_6__ {struct content** last; struct content* first; } ;
struct TYPE_5__ {int s; } ;
struct file_info {scalar_t__ offset; int size; scalar_t__ cl_offset; scalar_t__ multi_extent; TYPE_3__ contents; TYPE_2__ name; } ;
struct content {scalar_t__ offset; int size; struct content* next; } ;
struct archive_read {int archive; TYPE_1__* format; } ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;
struct TYPE_4__ {scalar_t__ data; } ;


 int ARCHIVE_ERRNO_MISC ;
 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 int ARCHIVE_WARN ;
 int DR_name_len_offset ;
 int DR_name_offset ;
 int ENOMEM ;
 unsigned char* __archive_read_ahead (struct archive_read*,size_t,int *) ;
 scalar_t__ __archive_read_consume (struct archive_read*,size_t) ;
 scalar_t__ add_entry (struct archive_read*,struct iso9660*,struct file_info*) ;
 int archive_set_error (int *,int ,char*,...) ;
 struct content* malloc (int) ;
 struct file_info* parse_file_info (struct archive_read*,struct file_info*,unsigned char const*,int) ;
 scalar_t__ read_CE (struct archive_read*,struct iso9660*) ;

__attribute__((used)) static int
read_children(struct archive_read *a, struct file_info *parent)
{
 struct iso9660 *iso9660;
 const unsigned char *b, *p;
 struct file_info *multi;
 size_t step, skip_size;

 iso9660 = (struct iso9660 *)(a->format->data);


 if (iso9660->entry_bytes_unconsumed) {
  __archive_read_consume(a, iso9660->entry_bytes_unconsumed);
  iso9660->entry_bytes_unconsumed = 0;
 }
 if (iso9660->current_position > parent->offset) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Ignoring out-of-order directory (%s) %jd > %jd",
      parent->name.s,
      (intmax_t)iso9660->current_position,
      (intmax_t)parent->offset);
  return (ARCHIVE_WARN);
 }
 if (parent->offset + parent->size > iso9660->volume_size) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Directory is beyond end-of-media: %s",
      parent->name.s);
  return (ARCHIVE_WARN);
 }
 if (iso9660->current_position < parent->offset) {
  int64_t skipsize;

  skipsize = parent->offset - iso9660->current_position;
  skipsize = __archive_read_consume(a, skipsize);
  if (skipsize < 0)
   return ((int)skipsize);
  iso9660->current_position = parent->offset;
 }

 step = (size_t)(((parent->size + iso9660->logical_block_size -1) /
     iso9660->logical_block_size) * iso9660->logical_block_size);
 b = __archive_read_ahead(a, step, ((void*)0));
 if (b == ((void*)0)) {
  archive_set_error(&a->archive, ARCHIVE_ERRNO_MISC,
      "Failed to read full block when scanning "
      "ISO9660 directory list");
  return (ARCHIVE_FATAL);
 }
 iso9660->current_position += step;
 multi = ((void*)0);
 skip_size = step;
 while (step) {
  p = b;
  b += iso9660->logical_block_size;
  step -= iso9660->logical_block_size;
  for (; *p != 0 && p < b && p + *p <= b; p += *p) {
   struct file_info *child;







   if (*(p + DR_name_len_offset) == 1
       && *(p + DR_name_offset) == '\0')
    continue;

   if (*(p + DR_name_len_offset) == 1
       && *(p + DR_name_offset) == '\001')
    continue;
   child = parse_file_info(a, parent, p, b - p);
   if (child == ((void*)0)) {
    __archive_read_consume(a, skip_size);
    return (ARCHIVE_FATAL);
   }
   if (child->cl_offset == 0 &&
       (child->multi_extent || multi != ((void*)0))) {
    struct content *con;

    if (multi == ((void*)0)) {
     multi = child;
     multi->contents.first = ((void*)0);
     multi->contents.last =
         &(multi->contents.first);
    }
    con = malloc(sizeof(struct content));
    if (con == ((void*)0)) {
     archive_set_error(
         &a->archive, ENOMEM,
         "No memory for multi extent");
     __archive_read_consume(a, skip_size);
     return (ARCHIVE_FATAL);
    }
    con->offset = child->offset;
    con->size = child->size;
    con->next = ((void*)0);
    *multi->contents.last = con;
    multi->contents.last = &(con->next);
    if (multi == child) {
     if (add_entry(a, iso9660, child)
         != ARCHIVE_OK)
      return (ARCHIVE_FATAL);
    } else {
     multi->size += child->size;
     if (!child->multi_extent)
      multi = ((void*)0);
    }
   } else
    if (add_entry(a, iso9660, child) != ARCHIVE_OK)
     return (ARCHIVE_FATAL);
  }
 }

 __archive_read_consume(a, skip_size);


 if (read_CE(a, iso9660) != ARCHIVE_OK)
  return (ARCHIVE_FATAL);

 return (ARCHIVE_OK);
}
