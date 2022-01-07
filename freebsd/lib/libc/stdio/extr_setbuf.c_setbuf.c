
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int BUFSIZ ;
 int _IOFBF ;
 int _IONBF ;
 int setvbuf (int *,char*,int ,int ) ;

void
setbuf(FILE * __restrict fp, char * __restrict buf)
{
 (void) setvbuf(fp, buf, buf ? _IOFBF : _IONBF, BUFSIZ);
}
