
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;


 int ARCHIVE_ERRNO_FILE_FORMAT ;
 int ARCHIVE_FATAL ;
 int archive_set_error (int *,int ,char*) ;

__attribute__((used)) static int
truncated_error(struct archive_read *a)
{
 archive_set_error(&a->archive, ARCHIVE_ERRNO_FILE_FORMAT,
     "Truncated LHa header");
 return (ARCHIVE_FATAL);
}
