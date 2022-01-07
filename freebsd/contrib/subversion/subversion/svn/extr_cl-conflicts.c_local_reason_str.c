
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_reason_t ;
typedef int svn_node_kind_t ;


 char const* _ (char*) ;
 int svn_wc_operation_merge ;

__attribute__((used)) static const char *
local_reason_str(svn_node_kind_t kind, svn_wc_conflict_reason_t reason,
                 svn_wc_operation_t operation)
{
  switch (kind)
    {
      case 140:
      case 138:
        switch (reason)
          {
          case 134:
            return _("local file edit");
          case 130:
            return _("local file obstruction");
          case 135:
            return _("local file delete");
          case 133:
            if (operation == svn_wc_operation_merge)
              return _("local file missing or deleted or moved away");
            else
              return _("local file missing");
          case 128:
            return _("local file unversioned");
          case 136:
            return _("local file add");
          case 129:
            return _("local file replace");
          case 132:
            return _("local file moved away");
          case 131:
            return _("local file moved here");
          }
        break;
      case 141:
        switch (reason)
          {
          case 134:
            return _("local dir edit");
          case 130:
            return _("local dir obstruction");
          case 135:
            return _("local dir delete");
          case 133:
            if (operation == svn_wc_operation_merge)
              return _("local dir missing or deleted or moved away");
            else
              return _("local dir missing");
          case 128:
            return _("local dir unversioned");
          case 136:
            return _("local dir add");
          case 129:
            return _("local dir replace");
          case 132:
            return _("local dir moved away");
          case 131:
            return _("local dir moved here");
          }
        break;
      case 139:
      case 137:
        switch (reason)
          {
          case 134:
            return _("local edit");
          case 130:
            return _("local obstruction");
          case 135:
            return _("local delete");
          case 133:
            if (operation == svn_wc_operation_merge)
              return _("local missing or deleted or moved away");
            else
              return _("local missing");
          case 128:
            return _("local unversioned");
          case 136:
            return _("local add");
          case 129:
            return _("local replace");
          case 132:
            return _("local moved away");
          case 131:
            return _("local moved here");
          }
        break;
    }
  return ((void*)0);
}
