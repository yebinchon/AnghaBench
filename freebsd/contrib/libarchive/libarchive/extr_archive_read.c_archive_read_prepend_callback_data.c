
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_add_callback_data (struct archive*,void*,int ) ;

int
archive_read_prepend_callback_data(struct archive *_a, void *client_data)
{
 return archive_read_add_callback_data(_a, client_data, 0);
}
