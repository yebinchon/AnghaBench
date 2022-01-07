
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_write {int dummy; } ;


 int ARCHIVE_OK ;

__attribute__((used)) static int
zisofs_finish_entry(struct archive_write *a)
{
 (void)a;
 return (ARCHIVE_OK);
}
