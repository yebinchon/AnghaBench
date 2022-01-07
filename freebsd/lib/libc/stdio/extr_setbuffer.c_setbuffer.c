
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _IOFBF ;
 int _IONBF ;
 int setvbuf (int *,char*,int ,size_t) ;

void
setbuffer(FILE *fp, char *buf, int size)
{

 (void)setvbuf(fp, buf, buf ? _IOFBF : _IONBF, (size_t)size);
}
