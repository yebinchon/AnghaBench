
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isoent {int dummy; } ;
struct idrent {int isoent; } ;
struct archive_rb_node {int dummy; } ;


 int isoent_cmp_iso9660_identifier (struct isoent const*,int ) ;

__attribute__((used)) static int
isoent_cmp_key_iso9660(const struct archive_rb_node *node, const void *key)
{
 const struct isoent *isoent = (const struct isoent *)key;
 const struct idrent *idrent = (const struct idrent *)node;

 return (isoent_cmp_iso9660_identifier(isoent, idrent->isoent));
}
