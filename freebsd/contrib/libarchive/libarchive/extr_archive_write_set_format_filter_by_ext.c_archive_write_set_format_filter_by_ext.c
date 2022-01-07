
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive {int state; } ;
struct TYPE_2__ {int (* format ) (struct archive*) ;int (* filter ) (struct archive*) ;} ;


 int ARCHIVE_FATAL ;
 int ARCHIVE_OK ;
 int ARCHIVE_STATE_FATAL ;
 int EINVAL ;
 int archive_set_error (struct archive*,int ,char*,char const*) ;
 int get_array_index (char const*) ;
 TYPE_1__* names ;
 int stub1 (struct archive*) ;
 int stub2 (struct archive*) ;

int
archive_write_set_format_filter_by_ext(struct archive *a, const char *filename)
{
  int names_index = get_array_index(filename);

  if (names_index >= 0)
  {
    int format_state = (names[names_index].format)(a);
    if (format_state == ARCHIVE_OK)
      return ((names[names_index].filter)(a));
    else
      return format_state;
  }

  archive_set_error(a, EINVAL, "No such format '%s'", filename);
  a->state = ARCHIVE_STATE_FATAL;
  return (ARCHIVE_FATAL);
}
