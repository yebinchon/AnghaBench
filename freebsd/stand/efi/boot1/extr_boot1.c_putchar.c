
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ConOut; } ;
struct TYPE_4__ {int (* OutputString ) (TYPE_1__*,char*) ;} ;
typedef char CHAR16 ;


 TYPE_3__* ST ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;

void
putchar(int c)
{
 CHAR16 buf[2];

 if (c == '\n') {
  buf[0] = '\r';
  buf[1] = 0;
  ST->ConOut->OutputString(ST->ConOut, buf);
 }
 buf[0] = c;
 buf[1] = 0;
 ST->ConOut->OutputString(ST->ConOut, buf);
}
