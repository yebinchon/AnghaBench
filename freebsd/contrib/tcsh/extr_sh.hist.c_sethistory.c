
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int discardExcess (int) ;
 int histlen ;

void
sethistory(int n)
{
    histlen = n;
    discardExcess(histlen);
}
