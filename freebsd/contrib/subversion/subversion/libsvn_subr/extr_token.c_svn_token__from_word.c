
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int val; int * str; } ;
typedef TYPE_1__ svn_token_map_t ;


 int SVN_TOKEN_UNKNOWN ;
 scalar_t__ strcmp (int *,char const*) ;

int
svn_token__from_word(const svn_token_map_t *map,
                     const char *word)
{
  if (word == ((void*)0))
    return SVN_TOKEN_UNKNOWN;

  for (; map->str != ((void*)0); ++map)
    if (strcmp(map->str, word) == 0)
      return map->val;

  return SVN_TOKEN_UNKNOWN;
}
