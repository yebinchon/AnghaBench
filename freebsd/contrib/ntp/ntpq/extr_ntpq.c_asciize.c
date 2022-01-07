
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int makeascii (int,char*,int *) ;
 int putc (char,int *) ;

void
asciize(
 int length,
 char *data,
 FILE *fp
 )
{
 makeascii(length, data, fp);
 putc('\n', fp);
}
