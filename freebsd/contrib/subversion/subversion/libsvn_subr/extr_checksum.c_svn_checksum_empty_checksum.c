
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_checksum_t ;
typedef int svn_checksum_kind_t ;
typedef int apr_pool_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 int * checksum_create (int,int ,int *) ;
 int * empty_string_digests ;





svn_checksum_t *
svn_checksum_empty_checksum(svn_checksum_kind_t kind,
                            apr_pool_t *pool)
{
  switch (kind)
    {
      case 129:
      case 128:
      case 131:
      case 130:
        return checksum_create(kind, empty_string_digests[kind], pool);

      default:

        SVN_ERR_MALFUNCTION_NO_RETURN();
    }
}
