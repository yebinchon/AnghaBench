
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int owned; struct mtx* parent; } ;



void
mtx_lock(struct mtx *mtx)
{
 mtx = mtx->parent;
 mtx->owned++;
}
