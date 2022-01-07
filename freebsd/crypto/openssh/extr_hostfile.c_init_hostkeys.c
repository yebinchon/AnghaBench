
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostkeys {int * entries; } ;


 struct hostkeys* xcalloc (int,int) ;

struct hostkeys *
init_hostkeys(void)
{
 struct hostkeys *ret = xcalloc(1, sizeof(*ret));

 ret->entries = ((void*)0);
 return ret;
}
