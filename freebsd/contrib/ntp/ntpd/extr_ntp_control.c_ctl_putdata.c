
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* buf; unsigned int len; } ;
typedef TYPE_1__ CtlMemBufT ;


 int ctl_putdata_ex (TYPE_1__*,int,int) ;

__attribute__((used)) static void
ctl_putdata(
 const char *dp,
 unsigned int dlen,
 int bin
 )
{
 CtlMemBufT args[1];

 args[0].buf = dp;
 args[0].len = dlen;
 ctl_putdata_ex(args, 1, bin);
}
