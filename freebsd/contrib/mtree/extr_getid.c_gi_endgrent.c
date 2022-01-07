
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _gr_filesdone ;
 int * _gr_fp ;
 int fclose (int *) ;

__attribute__((used)) static void
gi_endgrent(void)
{

 _gr_filesdone = 0;
 if (_gr_fp) {
  (void)fclose(_gr_fp);
  _gr_fp = ((void*)0);
 }
}
