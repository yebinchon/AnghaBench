
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ svn_checksum_kind_t ;


 int SVN_ERR_BAD_CHECKSUM_KIND ;
 int * SVN_NO_ERROR ;
 scalar_t__ svn_checksum_fnv1a_32x4 ;
 scalar_t__ svn_checksum_md5 ;
 int * svn_error_create (int ,int *,int *) ;

__attribute__((used)) static svn_error_t *
validate_kind(svn_checksum_kind_t kind)
{
  if (kind >= svn_checksum_md5 && kind <= svn_checksum_fnv1a_32x4)
    return SVN_NO_ERROR;
  else
    return svn_error_create(SVN_ERR_BAD_CHECKSUM_KIND, ((void*)0), ((void*)0));
}
