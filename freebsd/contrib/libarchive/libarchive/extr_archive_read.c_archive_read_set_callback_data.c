
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int archive_read_set_callback_data2 (struct archive*,void*,int ) ;

int
archive_read_set_callback_data(struct archive *_a, void *client_data)
{
 return archive_read_set_callback_data2(_a, client_data, 0);
}
