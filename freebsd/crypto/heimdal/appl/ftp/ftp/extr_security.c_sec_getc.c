
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 scalar_t__ data_prot ;
 int fileno (int *) ;
 int getc (int *) ;
 scalar_t__ sec_complete ;
 scalar_t__ sec_read (int ,char*,int) ;

int
sec_getc(FILE *F)
{
    if(sec_complete && data_prot) {
 char c;
 if(sec_read(fileno(F), &c, 1) <= 0)
     return EOF;
 return c;
    } else
 return getc(F);
}
