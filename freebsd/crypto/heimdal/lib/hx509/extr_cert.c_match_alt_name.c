
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ element; } ;
struct TYPE_9__ {scalar_t__ element; } ;
struct TYPE_8__ {size_t len; TYPE_4__* val; } ;
typedef TYPE_1__ GeneralNames ;
typedef TYPE_2__ GeneralName ;
typedef int Certificate ;


 int HX509_EXTENSION_NOT_FOUND ;
 int find_extension_subject_alt_name (int const*,size_t*,TYPE_1__*) ;
 int free_GeneralNames (TYPE_1__*) ;
 int match_general_name (TYPE_2__ const*,TYPE_4__*,int*) ;

__attribute__((used)) static int
match_alt_name(const GeneralName *n, const Certificate *c,
        int *same, int *match)
{
    GeneralNames sa;
    int ret;
    size_t i, j;

    i = 0;
    do {
 ret = find_extension_subject_alt_name(c, &i, &sa);
 if (ret == HX509_EXTENSION_NOT_FOUND) {
     ret = 0;
     break;
 } else if (ret != 0)
     break;

 for (j = 0; j < sa.len; j++) {
     if (n->element == sa.val[j].element) {
  *same = 1;
  ret = match_general_name(n, &sa.val[j], match);
     }
 }
 free_GeneralNames(&sa);
    } while (1);
    return ret;
}
