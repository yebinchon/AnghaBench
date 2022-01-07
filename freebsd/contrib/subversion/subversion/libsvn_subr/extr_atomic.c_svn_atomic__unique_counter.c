
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef int apr_uint64_t ;


 int SVN_ERR (int ) ;
 int SVN_MUTEX__WITH_LOCK (int ,int ) ;
 int * SVN_NO_ERROR ;
 int counter_mutex ;
 int counter_status ;
 int init_unique_counter ;
 int read_unique_counter (int *) ;
 int svn_atomic__init_once (int *,int ,int *,int *) ;

svn_error_t *
svn_atomic__unique_counter(apr_uint64_t *value)
{
  SVN_ERR(svn_atomic__init_once(&counter_status, init_unique_counter, ((void*)0),
                                ((void*)0)));
  SVN_MUTEX__WITH_LOCK(counter_mutex, read_unique_counter(value));
  return SVN_NO_ERROR;
}
