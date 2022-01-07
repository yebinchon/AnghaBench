
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;
 char const* _ (char*) ;





__attribute__((used)) static const char *
operation_str(svn_wc_operation_t operation)
{
  switch (operation)
    {
    case 128: return _("upon update");
    case 129: return _("upon switch");
    case 131: return _("upon merge");
    case 130: return _("upon none");
    }
  SVN_ERR_MALFUNCTION_NO_RETURN();
  return ((void*)0);
}
