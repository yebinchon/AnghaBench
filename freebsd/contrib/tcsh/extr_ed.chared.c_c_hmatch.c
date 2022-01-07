
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; int len; } ;
typedef int Char ;


 int Gmatch (int *,int ) ;
 scalar_t__ Strncmp (int ,int *,int ) ;
 TYPE_1__ patbuf ;

__attribute__((used)) static int
c_hmatch(Char *str)
{
    if (Strncmp(patbuf.s, str, patbuf.len) == 0)
 return 1;
    return Gmatch(str, patbuf.s);
}
