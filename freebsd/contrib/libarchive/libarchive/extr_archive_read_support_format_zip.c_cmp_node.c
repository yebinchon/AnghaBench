
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zip_entry {scalar_t__ local_header_offset; } ;
struct archive_rb_node {int dummy; } ;



__attribute__((used)) static int
cmp_node(const struct archive_rb_node *n1, const struct archive_rb_node *n2)
{
 const struct zip_entry *e1 = (const struct zip_entry *)n1;
 const struct zip_entry *e2 = (const struct zip_entry *)n2;

 if (e1->local_header_offset > e2->local_header_offset)
  return -1;
 if (e1->local_header_offset < e2->local_header_offset)
  return 1;
 return 0;
}
