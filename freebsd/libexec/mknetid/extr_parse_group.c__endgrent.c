
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * _gr_fp ;
 int fclose (int *) ;

void
_endgrent(void)
{
 if (_gr_fp) {
  (void)fclose(_gr_fp);
  _gr_fp = ((void*)0);
 }
}
