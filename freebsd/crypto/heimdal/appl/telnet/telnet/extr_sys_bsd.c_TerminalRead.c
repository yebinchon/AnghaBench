
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int read (int ,unsigned char*,int) ;
 int tin ;

int
TerminalRead(unsigned char *buf, int n)
{
    return read(tin, buf, n);
}
