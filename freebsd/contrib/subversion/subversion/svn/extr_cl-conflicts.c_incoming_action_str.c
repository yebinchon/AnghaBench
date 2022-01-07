
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_conflict_action_t ;
typedef int svn_node_kind_t ;


 char const* _ (char*) ;
__attribute__((used)) static const char *
incoming_action_str(svn_node_kind_t kind, svn_wc_conflict_action_t action)
{
  switch (kind)
    {
      case 135:
      case 133:
        switch (action)
          {
            case 129:
              return _("incoming file edit");
            case 131:
              return _("incoming file add");
            case 130:
              return _("incoming file delete or move");
            case 128:
              return _("incoming replace with file");
          }
        break;
      case 136:
        switch (action)
          {
            case 129:
              return _("incoming dir edit");
            case 131:
              return _("incoming dir add");
            case 130:
              return _("incoming dir delete or move");
            case 128:
              return _("incoming replace with dir");
          }
        break;
      case 134:
      case 132:
        switch (action)
          {
            case 129:
              return _("incoming edit");
            case 131:
              return _("incoming add");
            case 130:
              return _("incoming delete or move");
            case 128:
              return _("incoming replace");
          }
        break;
    }
  return ((void*)0);
}
