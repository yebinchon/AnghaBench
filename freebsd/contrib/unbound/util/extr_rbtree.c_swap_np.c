
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rbnode_type ;



__attribute__((used)) static void swap_np(rbnode_type** x, rbnode_type** y)
{
 rbnode_type* t = *x; *x = *y; *y = t;
}
