
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int list; int word; int number; int * string; } ;
struct TYPE_11__ {int kind; TYPE_3__ u; } ;
typedef TYPE_4__ svn_ra_svn_item_t ;
struct TYPE_8__ {int len; int data; } ;
struct TYPE_9__ {int list; TYPE_1__ word; int number; int string; } ;
struct TYPE_12__ {int kind; TYPE_2__ u; } ;
typedef TYPE_5__ svn_ra_svn__item_t ;
typedef int apr_pool_t ;






 int strlen (int ) ;
 int * svn_ra_svn__to_private_array (int ,int *) ;

void
svn_ra_svn__to_private_item(svn_ra_svn__item_t *target,
                            const svn_ra_svn_item_t *source,
                            apr_pool_t *result_pool)
{
  target->kind = source->kind;
  switch (source->kind)
    {
      case 129:
        target->u.string = *source->u.string;
        break;
      case 130:
        target->u.number = source->u.number;
        break;
      case 128:
        target->u.word.data = source->u.word;
        target->u.word.len = strlen(source->u.word);
        break;
      case 131:
        target->u.list = *svn_ra_svn__to_private_array(source->u.list,
                                                       result_pool);
        break;
    }
}
