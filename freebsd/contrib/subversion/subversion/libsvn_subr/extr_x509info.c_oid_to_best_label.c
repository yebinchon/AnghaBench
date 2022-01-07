
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* short_label; char const* long_label; } ;
typedef TYPE_1__ asn1_oid ;
typedef int apr_size_t ;
typedef int apr_pool_t ;


 TYPE_1__* oid_to_asn1_oid (unsigned char*,int ) ;
 char* svn_x509_oid_to_string (unsigned char*,int ,int *,int *) ;

__attribute__((used)) static const char *oid_to_best_label(unsigned char *oid, apr_size_t oid_len,
                                     apr_pool_t *result_pool)
{
  const asn1_oid *entry = oid_to_asn1_oid(oid, oid_len);

  if (entry)
    {
      if (entry->short_label)
        return entry->short_label;

      if (entry->long_label)
        return entry->long_label;
    }
  else
    {
      const char *oid_string = svn_x509_oid_to_string(oid, oid_len,
                                                      result_pool, result_pool);
      if (oid_string)
        return oid_string;
    }

  return "??";
}
