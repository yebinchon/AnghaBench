
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (int *) ;
 scalar_t__ host_stayopen ;
 int * hostf ;

void
bt_endhostent(void)
{
 if (hostf != ((void*)0) && host_stayopen == 0) {
  (void) fclose(hostf);
  hostf = ((void*)0);
 }
}
