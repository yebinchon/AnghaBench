
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
typedef TYPE_1__ svn_string_t ;
typedef int svn_ra_session_t ;
typedef int svn_ra_callbacks2_t ;
typedef int svn_error_t ;
typedef int apr_pool_t ;
typedef int apr_hash_t ;


 int APR_EINVAL ;
 int SVNSYNC_PROP_FROM_URL ;
 int SVNSYNC_PROP_FROM_UUID ;
 int SVNSYNC_PROP_LAST_MERGED_REV ;
 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int _ (char*) ;
 int * svn_error_create (int ,int *,int ) ;
 TYPE_1__* svn_hash_gets (int *,int ) ;
 int svn_opt__arg_canonicalize_url (char const**,int ,int *) ;
 int svn_ra_open4 (int **,int *,char const*,int ,int *,void*,int *,int *) ;
 int svn_ra_rev_proplist (int *,int ,int **,int *) ;

__attribute__((used)) static svn_error_t *
open_source_session(svn_ra_session_t **from_session,
                    svn_string_t **last_merged_rev,
                    const char *from_url,
                    svn_ra_session_t *to_session,
                    svn_ra_callbacks2_t *callbacks,
                    apr_hash_t *config,
                    void *baton,
                    apr_pool_t *pool)
{
  apr_hash_t *props;
  svn_string_t *from_url_str, *from_uuid_str;

  SVN_ERR(svn_ra_rev_proplist(to_session, 0, &props, pool));

  from_url_str = svn_hash_gets(props, SVNSYNC_PROP_FROM_URL);
  from_uuid_str = svn_hash_gets(props, SVNSYNC_PROP_FROM_UUID);
  *last_merged_rev = svn_hash_gets(props, SVNSYNC_PROP_LAST_MERGED_REV);

  if (! from_url_str || ! from_uuid_str || ! *last_merged_rev)
    return svn_error_create
      (APR_EINVAL, ((void*)0),
       _("Destination repository has not been initialized"));



  if (! from_url)
    SVN_ERR(svn_opt__arg_canonicalize_url(&from_url, from_url_str->data,
                                          pool));


  SVN_ERR(svn_ra_open4(from_session, ((void*)0), from_url, from_uuid_str->data,
                       callbacks, baton, config, pool));

  return SVN_NO_ERROR;
}
