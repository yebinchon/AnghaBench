
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* vtable; } ;
typedef TYPE_2__ svn_fs_t ;
typedef int svn_error_t ;
typedef int apr_uuid_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
struct TYPE_5__ {int (* set_uuid ) (TYPE_2__*,char const*,int *) ;} ;


 int SVN_ERR_BAD_UUID ;
 int _ (char*) ;
 scalar_t__ apr_uuid_parse (int *,char const*) ;
 int stub1 (TYPE_2__*,char const*,int *) ;
 int * svn_error_createf (int ,int *,int ,char const*) ;
 int * svn_error_trace (int ) ;
 char* svn_uuid_generate (int *) ;

svn_error_t *
svn_fs_set_uuid(svn_fs_t *fs, const char *uuid, apr_pool_t *pool)
{
  if (! uuid)
    {
      uuid = svn_uuid_generate(pool);
    }
  else
    {
      apr_uuid_t parsed_uuid;
      apr_status_t apr_err = apr_uuid_parse(&parsed_uuid, uuid);
      if (apr_err)
        return svn_error_createf(SVN_ERR_BAD_UUID, ((void*)0),
                                 _("Malformed UUID '%s'"), uuid);
    }
  return svn_error_trace(fs->vtable->set_uuid(fs, uuid, pool));
}
