
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;


 char const* _ (int ) ;
 int map_node_kind_human ;
 int svn_token__to_word (int ,int ) ;

const char *
svn_cl__node_kind_str_human_readable(svn_node_kind_t kind)
{
  return _(svn_token__to_word(map_node_kind_human, kind));
}
