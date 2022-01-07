
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct isoent {TYPE_2__* file; } ;
struct archive_rb_node {int dummy; } ;
struct TYPE_3__ {int s; } ;
struct TYPE_4__ {TYPE_1__ basename; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
isoent_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct isoent *e1 = (const struct isoent *)n1;
 const struct isoent *e2 = (const struct isoent *)n2;

 return (strcmp(e1->file->basename.s, e2->file->basename.s));
}
