
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; } ;
struct mtree_entry {TYPE_1__ basename; } ;
struct archive_rb_node {int dummy; } ;


 int strcmp (char const*,int ) ;

__attribute__((used)) static int
mtree_entry_cmp_key(const struct archive_rb_node *n, const void *key)
{
 const struct mtree_entry *e = (const struct mtree_entry *)n;

 return (strcmp((const char *)key, e->basename.s));
}
