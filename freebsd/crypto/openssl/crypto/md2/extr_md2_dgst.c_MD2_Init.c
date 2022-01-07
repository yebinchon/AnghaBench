
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; int cksm; int state; scalar_t__ num; } ;
typedef TYPE_1__ MD2_CTX ;


 int memset (int ,int ,int) ;

int MD2_Init(MD2_CTX *c)
{
    c->num = 0;
    memset(c->state, 0, sizeof(c->state));
    memset(c->cksm, 0, sizeof(c->cksm));
    memset(c->data, 0, sizeof(c->data));
    return 1;
}
