
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* str; int val; } ;
typedef TYPE_1__ svn_token_map_t ;


 int SVN_ERR_MALFUNCTION_NO_RETURN () ;

const char *
svn_token__to_word(const svn_token_map_t *map,
                   int value)
{
  for (; map->str != ((void*)0); ++map)
    if (map->val == value)
      return map->str;


  SVN_ERR_MALFUNCTION_NO_RETURN();
}
