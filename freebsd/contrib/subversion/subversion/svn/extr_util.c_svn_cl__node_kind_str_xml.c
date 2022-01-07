
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;


 int map_node_kind_xml ;
 char const* svn_token__to_word (int ,int ) ;

const char *
svn_cl__node_kind_str_xml(svn_node_kind_t kind)
{
  return svn_token__to_word(map_node_kind_xml, kind);
}
