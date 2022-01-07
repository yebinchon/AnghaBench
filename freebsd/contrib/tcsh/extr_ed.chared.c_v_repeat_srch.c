
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s; scalar_t__ len; } ;
typedef scalar_t__ KEYCMD ;
typedef int CCRETVAL ;


 int CC_ERROR ;


 int InputBuf ;
 int LastChar ;
 scalar_t__ LastCmd ;
 int e_down_search_hist (int ) ;
 int e_up_search_hist (int ) ;
 TYPE_1__ patbuf ;
 int xprintf (char*,int,int,int ) ;

__attribute__((used)) static CCRETVAL
v_repeat_srch(int c)
{
    CCRETVAL rv = CC_ERROR;





    LastCmd = (KEYCMD) c;
    LastChar = InputBuf;
    switch (c) {
    case 129:
 rv = e_down_search_hist(0);
 break;
    case 128:
 rv = e_up_search_hist(0);
 break;
    default:
 break;
    }
    return rv;
}
