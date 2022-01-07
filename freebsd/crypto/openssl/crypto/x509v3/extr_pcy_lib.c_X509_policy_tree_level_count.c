
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nlevel; } ;
typedef TYPE_1__ X509_POLICY_TREE ;



int X509_policy_tree_level_count(const X509_POLICY_TREE *tree)
{
    if (!tree)
        return 0;
    return tree->nlevel;
}
