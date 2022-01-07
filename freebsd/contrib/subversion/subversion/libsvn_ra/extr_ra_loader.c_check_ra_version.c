
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int tag; int patch; int minor; int major; } ;
typedef TYPE_1__ svn_version_t ;
typedef int svn_error_t ;


 int SVN_ERR_VERSION_MISMATCH ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_createf (int ,int *,int ,char const*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* svn_ra_version () ;
 int svn_ver_equal (TYPE_1__ const*,TYPE_1__ const*) ;

__attribute__((used)) static svn_error_t *
check_ra_version(const svn_version_t *ra_version, const char *scheme)
{
  const svn_version_t *my_version = svn_ra_version();
  if (!svn_ver_equal(my_version, ra_version))
    return svn_error_createf(SVN_ERR_VERSION_MISMATCH, ((void*)0),
                             _("Mismatched RA version for '%s':"
                               " found %d.%d.%d%s,"
                               " expected %d.%d.%d%s"),
                             scheme,
                             my_version->major, my_version->minor,
                             my_version->patch, my_version->tag,
                             ra_version->major, ra_version->minor,
                             ra_version->patch, ra_version->tag);

  return SVN_NO_ERROR;
}
