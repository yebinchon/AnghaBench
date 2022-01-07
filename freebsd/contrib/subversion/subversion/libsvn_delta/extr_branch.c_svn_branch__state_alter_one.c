
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int svn_element__payload_t ;
typedef int svn_element__content_t ;
typedef int svn_branch__state_t ;
typedef int svn_branch__eid_t ;
typedef int apr_pool_t ;


 int SVN_ERR (int ) ;
 int * SVN_NO_ERROR ;
 int svn_branch__state_set_element (int *,int ,int *,int *) ;
 int * svn_element__content_create (int ,char const*,int const*,int *) ;

svn_error_t *
svn_branch__state_alter_one(svn_branch__state_t *branch,
                            svn_branch__eid_t eid,
                            svn_branch__eid_t new_parent_eid,
                            const char *new_name,
                            const svn_element__payload_t *new_payload,
                            apr_pool_t *scratch_pool)
{
  svn_element__content_t *element
    = svn_element__content_create(new_parent_eid, new_name, new_payload,
                                  scratch_pool);

  SVN_ERR(svn_branch__state_set_element(branch, eid, element, scratch_pool));
  return SVN_NO_ERROR;
}
