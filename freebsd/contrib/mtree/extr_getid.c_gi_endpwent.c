
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ _pw_filesdone ;
 int * _pw_fp ;
 int fclose (int *) ;

__attribute__((used)) static void
gi_endpwent(void)
{

 _pw_filesdone = 0;
 if (_pw_fp) {
  (void)fclose(_pw_fp);
  _pw_fp = ((void*)0);
 }
}
