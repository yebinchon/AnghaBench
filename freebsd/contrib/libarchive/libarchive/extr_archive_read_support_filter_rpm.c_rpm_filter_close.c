
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpm {int dummy; } ;
struct archive_read_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int free (struct rpm*) ;

__attribute__((used)) static int
rpm_filter_close(struct archive_read_filter *self)
{
 struct rpm *rpm;

 rpm = (struct rpm *)self->data;
 free(rpm);

 return (ARCHIVE_OK);
}
