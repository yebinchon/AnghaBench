
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc_operation_t ;
typedef int svn_wc_conflict_action_t ;
typedef int svn_node_kind_t ;


 char const* _ (char*) ;
 int svn_wc_operation_merge ;
 int svn_wc_operation_switch ;
 int svn_wc_operation_update ;

__attribute__((used)) static const char *
describe_incoming_change(svn_node_kind_t kind, svn_wc_conflict_action_t action,
                         svn_wc_operation_t operation)
{
  switch (kind)
    {
      case 135:
      case 133:
        if (operation == svn_wc_operation_update)
          {
            switch (action)
              {
                case 129:
                  return _("An update operation tried to edit a file.");
                case 131:
                  return _("An update operation tried to add a file.");
                case 130:
                  return _("An update operation tried to delete or move "
                           "a file.");
                case 128:
                  return _("An update operation tried to replace a file.");
              }
          }
        else if (operation == svn_wc_operation_switch)
          {
            switch (action)
              {
                case 129:
                  return _("A switch operation tried to edit a file.");
                case 131:
                  return _("A switch operation tried to add a file.");
                case 130:
                  return _("A switch operation tried to delete or move "
                           "a file.");
                case 128:
                  return _("A switch operation tried to replace a file.");
              }
          }
        else if (operation == svn_wc_operation_merge)
          {
            switch (action)
              {
                case 129:
                  return _("A merge operation tried to edit a file.");
                case 131:
                  return _("A merge operation tried to add a file.");
                case 130:
                  return _("A merge operation tried to delete or move "
                           "a file.");
                case 128:
                  return _("A merge operation tried to replace a file.");
            }
          }
        break;
      case 136:
        if (operation == svn_wc_operation_update)
          {
            switch (action)
              {
                case 129:
                  return _("An update operation tried to change a directory.");
                case 131:
                  return _("An update operation tried to add a directory.");
                case 130:
                  return _("An update operation tried to delete or move "
                           "a directory.");
                case 128:
                  return _("An update operation tried to replace a directory.");
              }
          }
        else if (operation == svn_wc_operation_switch)
          {
            switch (action)
              {
                case 129:
                  return _("A switch operation tried to edit a directory.");
                case 131:
                  return _("A switch operation tried to add a directory.");
                case 130:
                  return _("A switch operation tried to delete or move "
                           "a directory.");
                case 128:
                  return _("A switch operation tried to replace a directory.");
              }
          }
        else if (operation == svn_wc_operation_merge)
          {
            switch (action)
              {
                case 129:
                  return _("A merge operation tried to edit a directory.");
                case 131:
                  return _("A merge operation tried to add a directory.");
                case 130:
                  return _("A merge operation tried to delete or move "
                           "a directory.");
                case 128:
                  return _("A merge operation tried to replace a directory.");
            }
          }
        break;
      case 134:
      case 132:
        if (operation == svn_wc_operation_update)
          {
            switch (action)
              {
                case 129:
                  return _("An update operation tried to edit an item.");
                case 131:
                  return _("An update operation tried to add an item.");
                case 130:
                  return _("An update operation tried to delete or move "
                           "an item.");
                case 128:
                  return _("An update operation tried to replace an item.");
              }
          }
        else if (operation == svn_wc_operation_switch)
          {
            switch (action)
              {
                case 129:
                  return _("A switch operation tried to edit an item.");
                case 131:
                  return _("A switch operation tried to add an item.");
                case 130:
                  return _("A switch operation tried to delete or move "
                           "an item.");
                case 128:
                  return _("A switch operation tried to replace an item.");
              }
          }
        else if (operation == svn_wc_operation_merge)
          {
            switch (action)
              {
                case 129:
                  return _("A merge operation tried to edit an item.");
                case 131:
                  return _("A merge operation tried to add an item.");
                case 130:
                  return _("A merge operation tried to delete or move "
                           "an item.");
                case 128:
                  return _("A merge operation tried to replace an item.");
              }
          }
        break;
    }

  return ((void*)0);
}
