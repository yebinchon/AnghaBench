
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;
typedef scalar_t__ apr_uint64_t ;


 int * SVN_NO_ERROR ;
 scalar_t__ uniqiue_counter ;

__attribute__((used)) static svn_error_t *
read_unique_counter(apr_uint64_t *value)
{
  *value = ++uniqiue_counter;
  return SVN_NO_ERROR;
}
