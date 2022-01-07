
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zip {scalar_t__ unconsumed; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
archive_read_format_zip_read_data_skip_seekable(struct archive_read *a)
{
 struct zip *zip;
 zip = (struct zip *)(a->format->data);

 zip->unconsumed = 0;
 return (ARCHIVE_OK);
}
