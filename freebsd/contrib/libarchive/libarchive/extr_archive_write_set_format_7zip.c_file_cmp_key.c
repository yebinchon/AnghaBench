
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int name_len; } ;
struct archive_rb_node {int dummy; } ;



__attribute__((used)) static int
file_cmp_key(const struct archive_rb_node *n, const void *key)
{
 const struct file *f = (const struct file *)n;

 return (f->name_len - *(const char *)key);
}
