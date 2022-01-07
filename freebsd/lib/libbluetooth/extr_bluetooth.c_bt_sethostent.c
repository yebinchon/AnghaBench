
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_BT_HOSTS ;
 int * fopen (int ,char*) ;
 int host_stayopen ;
 int * hostf ;
 int rewind (int *) ;

void
bt_sethostent(int stayopen)
{
 if (hostf == ((void*)0))
  hostf = fopen(_PATH_BT_HOSTS, "r");
 else
  rewind(hostf);

 host_stayopen = stayopen;
}
