
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_boolean_t ;


 int SVN_FS__PROP_TXN_CHECK_LOCKS ;
 int SVN_FS__PROP_TXN_CHECK_OOD ;
 int SVN_FS__PROP_TXN_CLIENT_DATE ;
 scalar_t__ strcmp (char const*,int ) ;

__attribute__((used)) static svn_boolean_t
is_internal_txn_prop(const char *name)
{
  return strcmp(name, SVN_FS__PROP_TXN_CHECK_LOCKS) == 0 ||
         strcmp(name, SVN_FS__PROP_TXN_CHECK_OOD) == 0 ||
         strcmp(name, SVN_FS__PROP_TXN_CLIENT_DATE) == 0;
}
