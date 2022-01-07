
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {scalar_t__ name_len; int utf16name; } ;
struct archive_rb_node {int dummy; } ;


 int memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
file_cmp_node(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct file *f1 = (const struct file *)n1;
 const struct file *f2 = (const struct file *)n2;

 if (f1->name_len == f2->name_len)
  return (memcmp(f1->utf16name, f2->utf16name, f1->name_len));
 return (f1->name_len > f2->name_len)?1:-1;
}
