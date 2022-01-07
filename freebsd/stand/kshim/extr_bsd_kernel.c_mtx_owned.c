
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {scalar_t__ owned; struct mtx* parent; } ;



int
mtx_owned(struct mtx *mtx)
{
 mtx = mtx->parent;
 return (mtx->owned != 0);
}
