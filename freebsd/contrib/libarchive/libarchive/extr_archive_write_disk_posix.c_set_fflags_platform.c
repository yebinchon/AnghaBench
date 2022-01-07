
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int dummy; } ;
typedef int mode_t ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
set_fflags_platform(struct archive_write_disk *a, int fd, const char *name,
    mode_t mode, unsigned long set, unsigned long clear)
{
 (void)a;
 (void)fd;
 (void)name;
 (void)mode;
 (void)set;
 (void)clear;
 return (ARCHIVE_OK);
}
