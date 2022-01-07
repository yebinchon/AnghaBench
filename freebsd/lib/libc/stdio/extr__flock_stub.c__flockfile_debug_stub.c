
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int _flockfile (int *) ;

void
_flockfile_debug_stub(FILE *fp, char *fname, int lineno)
{
 _flockfile(fp);
}
