
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int s; } ;
struct archive {TYPE_1__ error_string; int error; int archive_error_number; } ;


 int archive_string_copy (TYPE_1__*,TYPE_1__*) ;

void
archive_copy_error(struct archive *dest, struct archive *src)
{
 dest->archive_error_number = src->archive_error_number;

 archive_string_copy(&dest->error_string, &src->error_string);
 dest->error = dest->error_string.s;
}
