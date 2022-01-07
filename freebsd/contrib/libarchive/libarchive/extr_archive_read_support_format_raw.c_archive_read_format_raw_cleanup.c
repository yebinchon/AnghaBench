
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct raw_info {int dummy; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {int * data; } ;


 int ARCHIVE_OK ;
 int free (struct raw_info*) ;

__attribute__((used)) static int
archive_read_format_raw_cleanup(struct archive_read *a)
{
 struct raw_info *info;

 info = (struct raw_info *)(a->format->data);
 free(info);
 a->format->data = ((void*)0);
 return (ARCHIVE_OK);
}
