
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int svn_string_t ;
struct TYPE_6__ {TYPE_4__* next; int len; int data; TYPE_1__* children; } ;
typedef TYPE_2__ svn_skel_t ;
typedef int svn_error_t ;
typedef int svn_cancel_func_t ;
typedef int apr_pool_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
struct TYPE_5__ {TYPE_2__* next; } ;


 char* apr_pstrmemdup (int *,int ,int ) ;
 int * maybe_prop_value (TYPE_4__*,int *) ;
 int prop_conflict_new (int const**,char const*,int const*,int const*,int const*,int const*,int ,void*,int *,int *) ;
 int * svn_error_trace (int ) ;

__attribute__((used)) static svn_error_t *
prop_conflict_from_skel(const svn_string_t **conflict_desc,
                        const svn_skel_t *skel,
                        svn_cancel_func_t cancel_func,
                        void *cancel_baton,
                        apr_pool_t *result_pool,
                        apr_pool_t *scratch_pool)
{
  const svn_string_t *original;
  const svn_string_t *mine;
  const svn_string_t *incoming;
  const svn_string_t *incoming_base;
  const char *propname;


  skel = skel->children->next;



  propname = apr_pstrmemdup(scratch_pool, skel->data, skel->len);
  original = maybe_prop_value(skel->next, scratch_pool);
  mine = maybe_prop_value(skel->next->next, scratch_pool);
  incoming = maybe_prop_value(skel->next->next->next, scratch_pool);
  incoming_base = maybe_prop_value(skel->next->next->next->next, scratch_pool);

  return svn_error_trace(prop_conflict_new(conflict_desc,
                                           propname,
                                           original, mine,
                                           incoming, incoming_base,
                                           cancel_func, cancel_baton,
                                           result_pool, scratch_pool));
}
