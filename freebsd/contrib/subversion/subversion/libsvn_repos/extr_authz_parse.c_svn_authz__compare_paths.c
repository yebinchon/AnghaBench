
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int len; TYPE_2__* path; } ;
typedef TYPE_3__ authz_rule_t ;
struct TYPE_6__ {char* data; } ;
struct TYPE_7__ {int kind; TYPE_1__ pattern; } ;


 int strcmp (char const* const,char const* const) ;

int
svn_authz__compare_paths(const authz_rule_t *a, const authz_rule_t *b)
{
  const int min_len = (a->len > b->len ? b->len : a->len);
  int i;

  for (i = 0; i < min_len; ++i)
    {
      int cmp = a->path[i].kind - b->path[i].kind;
      if (0 == cmp)
        {
          const char *const aseg = a->path[i].pattern.data;
          const char *const bseg = b->path[i].pattern.data;


          if (aseg != bseg)
            cmp = strcmp(aseg, bseg);
          else
            cmp = 0;
        }
      if (0 != cmp)
        return cmp;
    }


  if (a->len != b->len)
    return a->len - b->len;

  return 0;
}
