
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


 int strcmp (int ,char const*) ;

__attribute__((used)) static int
isoent_cmp_key(const struct archive_rb_node *n, const void *key)
{
 const struct isoent *e = (const struct isoent *)n;

 return (strcmp(e->file->basename.s, (const char *)key));
}
