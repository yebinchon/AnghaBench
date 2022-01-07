
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ oid_len; scalar_t__ oid; } ;
typedef TYPE_1__ asn1_oid ;
typedef scalar_t__ apr_size_t ;


 TYPE_1__* asn1_oids ;
 scalar_t__ memcmp (unsigned char*,scalar_t__,scalar_t__) ;

__attribute__((used)) static const asn1_oid *oid_to_asn1_oid(unsigned char *oid, apr_size_t oid_len)
{
  const asn1_oid *entry;

  for (entry = asn1_oids; entry->oid; entry++)
    {
      if (oid_len == entry->oid_len &&
          memcmp(oid, entry->oid, oid_len) == 0)
        return entry;
    }

  return ((void*)0);
}
