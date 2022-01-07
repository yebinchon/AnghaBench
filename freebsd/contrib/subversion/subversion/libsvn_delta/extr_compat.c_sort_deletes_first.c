
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* key; struct change_node* value; } ;
typedef TYPE_1__ svn_sort__item_t ;
struct change_node {scalar_t__ action; } ;
typedef int ptrdiff_t ;


 scalar_t__ RESTRUCTURE_DELETE ;
 int count_components (char const*) ;
 scalar_t__ memcmp (char const*,char const*,int) ;
 char* strrchr (char const*,char) ;
 int svn_path_compare_paths (char const*,char const*) ;

__attribute__((used)) static int
sort_deletes_first(const svn_sort__item_t *item1,
                   const svn_sort__item_t *item2)
{
  const char *relpath1 = item1->key;
  const char *relpath2 = item2->key;
  const struct change_node *change1 = item1->value;
  const struct change_node *change2 = item2->value;
  const char *slash1;
  const char *slash2;
  ptrdiff_t len1;
  ptrdiff_t len2;




  if (*relpath1 == '\0')
    return -1;
  if (*relpath2 == '\0')
    return 1;





  slash1 = strrchr(relpath1, '/');
  slash2 = strrchr(relpath2, '/');
  if ((slash1 == ((void*)0) && slash2 == ((void*)0))
      || (slash1 != ((void*)0)
          && slash2 != ((void*)0)
          && (len1 = slash1 - relpath1) == (len2 = slash2 - relpath2)
          && memcmp(relpath1, relpath2, len1) == 0))
    {
      if (change1->action == RESTRUCTURE_DELETE)
        {
          if (change2->action == RESTRUCTURE_DELETE)
            {


              return 0;
            }


          return -1;
        }
      if (change2->action == RESTRUCTURE_DELETE)

        return 1;
    }
  if (change1->action == RESTRUCTURE_DELETE
      || change2->action == RESTRUCTURE_DELETE)
    {
      int count1 = count_components(relpath1);
      int count2 = count_components(relpath2);

      if (count1 < count2 && change1->action == RESTRUCTURE_DELETE)
        return -1;
      if (count1 > count2 && change2->action == RESTRUCTURE_DELETE)
        return 1;
    }


  return svn_path_compare_paths(relpath1, relpath2);
}
