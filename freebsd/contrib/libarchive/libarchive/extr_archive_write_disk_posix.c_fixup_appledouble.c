
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write_disk {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
fixup_appledouble(struct archive_write_disk *a, const char *pathname)
{
 (void)a;
 (void)pathname;
 return (ARCHIVE_OK);
}
