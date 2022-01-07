
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct algo_needs {size_t num; } ;



size_t algo_needs_num_missing(struct algo_needs* n)
{
 return n->num;
}
