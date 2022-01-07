
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_tree_node {scalar_t__ dclass; int labs; int name; } ;


 int dname_lab_cmp (int ,int ,int ,int ,int*) ;

int name_tree_compare(const void* k1, const void* k2)
{
        struct name_tree_node* x = (struct name_tree_node*)k1;
        struct name_tree_node* y = (struct name_tree_node*)k2;
        int m;
        if(x->dclass != y->dclass) {
                if(x->dclass < y->dclass)
                        return -1;
                return 1;
        }
        return dname_lab_cmp(x->name, x->labs, y->name, y->labs, &m);
}
