
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct zip_entry {TYPE_1__ rsrcname; } ;
struct archive_rb_node {int dummy; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
rsrc_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct zip_entry *e1 = (const struct zip_entry *)n1;
 const struct zip_entry *e2 = (const struct zip_entry *)n2;

 return (strcmp(e2->rsrcname.s, e1->rsrcname.s));
}
