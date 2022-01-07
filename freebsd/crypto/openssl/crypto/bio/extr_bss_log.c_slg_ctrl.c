
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;



 int xcloselog (int *) ;
 int xopenlog (int *,void*,long) ;

__attribute__((used)) static long slg_ctrl(BIO *b, int cmd, long num, void *ptr)
{
    switch (cmd) {
    case 128:
        xcloselog(b);
        xopenlog(b, ptr, num);
        break;
    default:
        break;
    }
    return 0;
}
