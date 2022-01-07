
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int kind; int digest; } ;
typedef TYPE_1__ svn_checksum_t ;
typedef int svn_boolean_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int TRUE ;
 int * digest_sizes ;
 int svn__digests_match (int ,int ,int ) ;
 int svn__empty_string_digest (int) ;





svn_boolean_t
svn_checksum_is_empty_checksum(svn_checksum_t *checksum)
{


  if (!checksum)
    return TRUE;

  switch (checksum->kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        return svn__digests_match(checksum->digest,
                                  svn__empty_string_digest(checksum->kind),
                                  digest_sizes[checksum->kind]);

      default:

        SVN_ERR_MALFUNCTION_NO_RETURN();
    }
}
