
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_node_kind_t ;
const char *
svn_node_kind_to_word(svn_node_kind_t kind)
{
  switch (kind)
    {
    case 130:
      return "none";
    case 131:
      return "file";
    case 132:
      return "dir";
    case 129:
      return "symlink";
    case 128:
    default:
      return "unknown";
    }
}
