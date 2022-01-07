
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int state; int state_pool; int * attrs; struct TYPE_4__* prev; } ;
typedef TYPE_1__ svn_ra_serf__xml_estate_t ;


 int SVN_ERR_ASSERT_NO_RETURN (int ) ;
 int * apr_hash_make (int ) ;
 int apr_pstrdup (int ,char const*) ;
 int ensure_pool (TYPE_1__*) ;
 int svn_hash_sets (int *,int ,int ) ;

void
svn_ra_serf__xml_note(svn_ra_serf__xml_estate_t *xes,
                      int state,
                      const char *name,
                      const char *value)
{
  svn_ra_serf__xml_estate_t *scan;

  for (scan = xes; scan != ((void*)0) && scan->state != state; scan = scan->prev)
               ;

  SVN_ERR_ASSERT_NO_RETURN(scan != ((void*)0));


  ensure_pool(scan);


  if (scan->attrs == ((void*)0))
    scan->attrs = apr_hash_make(scan->state_pool);




  svn_hash_sets(scan->attrs,
                apr_pstrdup(scan->state_pool, name),
                apr_pstrdup(scan->state_pool, value));
}
