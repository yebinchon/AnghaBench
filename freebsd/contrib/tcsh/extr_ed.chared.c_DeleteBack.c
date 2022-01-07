
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * Cursor ;
 int * InputBuf ;
 int c_delbefore (int) ;

void
DeleteBack(int n)
{
    if (n <= 0)
 return;
    if (Cursor >= &InputBuf[n]) {
 c_delbefore(n);
    }
}
