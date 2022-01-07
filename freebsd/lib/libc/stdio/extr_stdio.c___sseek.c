
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
typedef scalar_t__ fpos_t ;
struct TYPE_2__ {int _file; } ;
typedef TYPE_1__ FILE ;


 scalar_t__ lseek (int ,int ,int) ;

fpos_t
__sseek(void *cookie, fpos_t offset, int whence)
{
 FILE *fp = cookie;

 return (lseek(fp->_file, (off_t)offset, whence));
}
