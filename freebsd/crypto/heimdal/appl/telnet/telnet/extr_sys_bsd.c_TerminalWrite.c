
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tout ;
 int write (int ,char*,int) ;

int
TerminalWrite(char *buf, int n)
{
    return write(tout, buf, n);
}
