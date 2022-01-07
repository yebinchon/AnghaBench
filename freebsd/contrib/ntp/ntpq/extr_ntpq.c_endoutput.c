
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ out_chars ;
 int putc (char,int *) ;

__attribute__((used)) static void
endoutput(
 FILE *fp
 )
{
 if (out_chars != 0)
  putc('\n', fp);
}
