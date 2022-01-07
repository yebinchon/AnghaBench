
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int putc (int,int ) ;
 int stderr ;

__attribute__((used)) static int
outc(int c)
{
    return putc(c, stderr);
}
