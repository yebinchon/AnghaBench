
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
memory_read_open(struct archive *a, void *client_data)
{
 (void)a;
 (void)client_data;
 return (ARCHIVE_OK);
}
