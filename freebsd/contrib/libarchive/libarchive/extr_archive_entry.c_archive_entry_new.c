
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;


 struct archive_entry* archive_entry_new2 (int *) ;

struct archive_entry *
archive_entry_new(void)
{
 return archive_entry_new2(((void*)0));
}
