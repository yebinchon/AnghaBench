
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int h4; int h3; int h2; int h1; int h0; } ;
typedef TYPE_1__ SHA_CTX ;


 int INIT_DATA_h0 ;
 int INIT_DATA_h1 ;
 int INIT_DATA_h2 ;
 int INIT_DATA_h3 ;
 int INIT_DATA_h4 ;
 int memset (TYPE_1__*,int ,int) ;

int HASH_INIT(SHA_CTX *c)
{
    memset(c, 0, sizeof(*c));
    c->h0 = INIT_DATA_h0;
    c->h1 = INIT_DATA_h1;
    c->h2 = INIT_DATA_h2;
    c->h3 = INIT_DATA_h3;
    c->h4 = INIT_DATA_h4;
    return 1;
}
