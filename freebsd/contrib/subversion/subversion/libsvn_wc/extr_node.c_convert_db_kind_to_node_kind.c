
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_wc__db_status_t ;
typedef int svn_node_kind_t ;
typedef int svn_error_t ;
typedef int svn_boolean_t ;


 int * SVN_NO_ERROR ;
 int svn_node_none ;




__attribute__((used)) static svn_error_t *
convert_db_kind_to_node_kind(svn_node_kind_t *node_kind,
                             svn_node_kind_t db_kind,
                             svn_wc__db_status_t db_status,
                             svn_boolean_t show_hidden)
{
  *node_kind = db_kind;


  if (! show_hidden)
    switch (db_status)
      {
        case 129:
        case 128:
        case 130:
          *node_kind = svn_node_none;

        default:
          break;
      }

  return SVN_NO_ERROR;
}
