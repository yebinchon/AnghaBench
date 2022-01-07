
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int dummy; } ;
typedef int ssize_t ;


 int write_data_block (struct archive_write_disk*,char const*,size_t) ;

__attribute__((used)) static ssize_t
hfs_write_data_block(struct archive_write_disk *a, const char *buff,
    size_t size)
{
 return (write_data_block(a, buff, size));
}
