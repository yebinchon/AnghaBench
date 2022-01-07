
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_template {size_t offset; } ;



__attribute__((used)) static size_t
sizeofType(const struct asn1_template *t)
{
    return t->offset;
}
