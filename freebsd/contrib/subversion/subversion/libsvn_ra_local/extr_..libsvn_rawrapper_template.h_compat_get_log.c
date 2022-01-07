
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_revnum_t ;
typedef int svn_log_message_receiver_t ;
typedef int svn_log_entry_receiver_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;
typedef int apr_pool_t ;
typedef int apr_array_header_t ;
struct TYPE_2__ {int * (* get_log ) (void*,int const*,int ,int ,int ,int ,int ,int ,int ,int ,void*,int *) ;} ;


 int FALSE ;
 TYPE_1__ VTBL ;
 int * stub1 (void*,int const*,int ,int ,int ,int ,int ,int ,int ,int ,void*,int *) ;
 int svn_compat_log_revprops_in (int *) ;
 int svn_compat_wrap_log_receiver (int *,void**,int ,void*,int *) ;

__attribute__((used)) static svn_error_t *compat_get_log(void *session_baton,
                                   const apr_array_header_t *paths,
                                   svn_revnum_t start,
                                   svn_revnum_t end,
                                   svn_boolean_t discover_changed_paths,
                                   svn_boolean_t strict_node_history,
                                   svn_log_message_receiver_t receiver,
                                   void *receiver_baton,
                                   apr_pool_t *pool)
{
  svn_log_entry_receiver_t receiver2;
  void *receiver2_baton;

  svn_compat_wrap_log_receiver(&receiver2, &receiver2_baton,
                               receiver, receiver_baton,
                               pool);

  return VTBL.get_log(session_baton, paths, start, end, 0,
                      discover_changed_paths, strict_node_history,
                      FALSE,
                      svn_compat_log_revprops_in(pool),
                      receiver2, receiver2_baton, pool);
}
