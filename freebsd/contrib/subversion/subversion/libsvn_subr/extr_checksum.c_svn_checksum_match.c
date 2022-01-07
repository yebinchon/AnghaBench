
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int kind; int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_boolean_t ;


 int FALSE ;
 int TRUE ;
 int * digest_sizes ;
 int svn__digests_match (int ,int ,int ) ;





svn_boolean_t
svn_checksum_match(const svn_checksum_t *checksum1,
                   const svn_checksum_t *checksum2)
{
  if (checksum1 == ((void*)0) || checksum2 == ((void*)0))
    return TRUE;

  if (checksum1->kind != checksum2->kind)
    return FALSE;

  switch (checksum1->kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        return svn__digests_match(checksum1->digest,
                                  checksum2->digest,
                                  digest_sizes[checksum1->kind]);

      default:

        return FALSE;
    }
}
