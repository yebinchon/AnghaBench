
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {struct mtx* parent; scalar_t__ owned; } ;



void
mtx_init(struct mtx *mtx, const char *name, const char *type, int opt)
{
 mtx->owned = 0;
 mtx->parent = mtx;
}
