
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int svn_element__payload_t ;
struct TYPE_4__ {int parent_eid; int payload; int name; } ;
typedef TYPE_1__ svn_element__content_t ;
typedef int apr_pool_t ;


 TYPE_1__* apr_palloc (int *,int) ;
 int apr_pstrdup (int *,char const*) ;
 int svn_element__payload_dup (int const*,int *) ;

svn_element__content_t *
svn_element__content_create(int parent_eid,
                            const char *name,
                            const svn_element__payload_t *payload,
                            apr_pool_t *result_pool)
{
  svn_element__content_t *content
     = apr_palloc(result_pool, sizeof(*content));

  content->parent_eid = parent_eid;
  content->name = apr_pstrdup(result_pool, name);
  content->payload = svn_element__payload_dup(payload, result_pool);
  return content;
}
