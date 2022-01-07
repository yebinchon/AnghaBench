
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _fs_fp ;
 int fclose (int *) ;
 scalar_t__ fsp_set ;

void
endfsent(void)
{

 if (_fs_fp) {
  (void)fclose(_fs_fp);
  _fs_fp = ((void*)0);
 }

 fsp_set = 0;
}
