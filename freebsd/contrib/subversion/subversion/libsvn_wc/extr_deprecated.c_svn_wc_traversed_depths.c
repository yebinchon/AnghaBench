
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * depths; } ;
typedef TYPE_1__ svn_wc_traversal_info_t ;
typedef int apr_hash_t ;



void
svn_wc_traversed_depths(apr_hash_t **depths,
                        svn_wc_traversal_info_t *traversal_info)
{
  *depths = traversal_info->depths;
}
