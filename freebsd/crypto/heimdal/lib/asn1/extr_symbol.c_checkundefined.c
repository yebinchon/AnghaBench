
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int checkfunc ;
 int hashtabforeach (int ,int ,int*) ;
 int htab ;

int
checkundefined(void)
{
    int f = 0;
    hashtabforeach(htab, checkfunc, &f);
    return f;
}
