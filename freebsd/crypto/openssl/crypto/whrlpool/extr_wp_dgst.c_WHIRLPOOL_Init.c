
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WHIRLPOOL_CTX ;


 int memset (int *,int ,int) ;

int WHIRLPOOL_Init(WHIRLPOOL_CTX *c)
{
    memset(c, 0, sizeof(*c));
    return 1;
}
