
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int _file; } ;
typedef TYPE_1__ FILE ;


 int _read (int ,char*,size_t) ;

int
__sread(void *cookie, char *buf, int n)
{
 FILE *fp = cookie;

 return(_read(fp->_file, buf, (size_t)n));
}
