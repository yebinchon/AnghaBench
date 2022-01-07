
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CHAR ;
 int flush () ;
 int * linbuf ;
 int * linp ;

int
putpure(int c)
{
    c &= CHAR;

    *linp++ = (char) c;
    if (linp >= &linbuf[sizeof linbuf - 10])
 flush();
    return (1);
}
