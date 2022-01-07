
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct std_metadata {int md_version; int md_magic; } ;


 int bcopy (unsigned char const*,int ,int) ;
 int le32dec (unsigned char const*) ;

__attribute__((used)) static void
std_metadata_decode(const unsigned char *data, struct std_metadata *md)
{

        bcopy(data, md->md_magic, sizeof(md->md_magic));
        md->md_version = le32dec(data + 16);
}
