
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_tristate_t ;
typedef scalar_t__ apr_uint64_t ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int svn_tristate_false ;
 int svn_tristate_true ;
 int svn_tristate_unknown ;

__attribute__((used)) static svn_tristate_t
optbool_to_tristate(apr_uint64_t v)
{
  if (v == TRUE)
    return svn_tristate_true;
  if (v == FALSE)
    return svn_tristate_false;

  return svn_tristate_unknown;
}
