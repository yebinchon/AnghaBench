
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* first; } ;
struct hardlink {TYPE_2__ file_list; } ;
struct archive_rb_node {int dummy; } ;
struct TYPE_3__ {int entry; } ;


 int archive_entry_pathname (int ) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
isofile_hd_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct hardlink *h1 = (const struct hardlink *)n1;
 const struct hardlink *h2 = (const struct hardlink *)n2;

 return (strcmp(archive_entry_pathname(h1->file_list.first->entry),
         archive_entry_pathname(h2->file_list.first->entry)));
}
