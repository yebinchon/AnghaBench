
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read_filter {TYPE_1__* archive; } ;
typedef int intmax_t ;
typedef scalar_t__ int64_t ;
struct TYPE_2__ {int archive; } ;


 int ARCHIVE_ERRNO_MISC ;
 scalar_t__ ARCHIVE_FATAL ;
 scalar_t__ advance_file_pointer (struct archive_read_filter*,scalar_t__) ;
 int archive_set_error (int *,int ,char*,int ,int ) ;

int64_t
__archive_read_filter_consume(struct archive_read_filter * filter,
    int64_t request)
{
 int64_t skipped;

 if (request < 0)
  return ARCHIVE_FATAL;
 if (request == 0)
  return 0;

 skipped = advance_file_pointer(filter, request);
 if (skipped == request)
  return (skipped);

 if (skipped < 0)
  skipped = 0;
 archive_set_error(&filter->archive->archive,
     ARCHIVE_ERRNO_MISC,
     "Truncated input file (needed %jd bytes, only %jd available)",
     (intmax_t)request, (intmax_t)skipped);
 return (ARCHIVE_FATAL);
}
