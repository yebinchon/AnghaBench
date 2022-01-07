
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_BT_PROTOCOLS ;
 int * fopen (int ,char*) ;
 int proto_stayopen ;
 int * protof ;
 int rewind (int *) ;

void
bt_setprotoent(int stayopen)
{
 if (protof == ((void*)0))
  protof = fopen(_PATH_BT_PROTOCOLS, "r");
 else
  rewind(protof);

 proto_stayopen = stayopen;
}
