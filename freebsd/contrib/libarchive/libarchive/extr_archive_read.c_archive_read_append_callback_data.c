
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nodes; } ;
struct archive_read {TYPE_1__ client; } ;
struct archive {int dummy; } ;


 int archive_read_add_callback_data (struct archive*,void*,int ) ;

int
archive_read_append_callback_data(struct archive *_a, void *client_data)
{
 struct archive_read *a = (struct archive_read *)_a;
 return archive_read_add_callback_data(_a, client_data, a->client.nodes);
}
