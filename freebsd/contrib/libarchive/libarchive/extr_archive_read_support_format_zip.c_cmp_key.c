
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_rb_node {int dummy; } ;



__attribute__((used)) static int
cmp_key(const struct archive_rb_node *n, const void *key)
{

 (void)n;
 (void)key;
 return 1;
}
