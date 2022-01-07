
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {struct TYPE_11__* children; } ;
typedef TYPE_1__ svn_skel_t ;
typedef int apr_pool_t ;


 scalar_t__ SVN_WC__SINGLE_WORK_ITEM (TYPE_1__*) ;
 int svn_skel__append (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* svn_skel__make_empty_list (int *) ;
 int svn_skel__prepend (TYPE_1__*,TYPE_1__*) ;

svn_skel_t *
svn_wc__wq_merge(svn_skel_t *work_item1,
                 svn_skel_t *work_item2,
                 apr_pool_t *result_pool)
{

  if (work_item1 == ((void*)0))
    return work_item2;
  if (work_item2 == ((void*)0))
    return work_item1;


  if (SVN_WC__SINGLE_WORK_ITEM(work_item1))
    {
      if (SVN_WC__SINGLE_WORK_ITEM(work_item2))
        {



          svn_skel_t *result = svn_skel__make_empty_list(result_pool);

          svn_skel__prepend(work_item2, result);
          svn_skel__prepend(work_item1, result);
          return result;
        }



      svn_skel__prepend(work_item1, work_item2);
      return work_item2;
    }


  if (SVN_WC__SINGLE_WORK_ITEM(work_item2))
    {

      svn_skel__append(work_item1, work_item2);
      return work_item1;
    }




  svn_skel__append(work_item1, work_item2->children);
  return work_item1;
}
