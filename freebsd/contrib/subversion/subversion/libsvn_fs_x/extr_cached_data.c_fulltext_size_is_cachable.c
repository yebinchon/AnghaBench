
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fulltext_cache; } ;
typedef TYPE_1__ svn_fs_x__data_t ;
typedef scalar_t__ svn_filesize_t ;
typedef int svn_boolean_t ;
typedef int apr_size_t ;


 scalar_t__ APR_SIZE_MAX ;
 scalar_t__ svn_cache__is_cachable (int ,int ) ;

__attribute__((used)) static svn_boolean_t
fulltext_size_is_cachable(svn_fs_x__data_t *ffd,
                          svn_filesize_t size)
{
  return (size < APR_SIZE_MAX)
      && svn_cache__is_cachable(ffd->fulltext_cache, (apr_size_t)size);
}
