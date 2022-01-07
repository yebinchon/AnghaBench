
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idrent {int isoent; } ;
struct archive_rb_node {int dummy; } ;


 int isoent_cmp_joliet_identifier (int ,int ) ;

__attribute__((used)) static int
isoent_cmp_node_joliet(const struct archive_rb_node *n1,
    const struct archive_rb_node *n2)
{
 const struct idrent *e1 = (const struct idrent *)n1;
 const struct idrent *e2 = (const struct idrent *)n2;

 return (isoent_cmp_joliet_identifier(e2->isoent, e1->isoent));
}
