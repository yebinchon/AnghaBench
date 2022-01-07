
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshauthopt {int force_tun_device; } ;


 struct sshauthopt* calloc (int,int) ;

struct sshauthopt *
sshauthopt_new(void)
{
 struct sshauthopt *ret;

 if ((ret = calloc(1, sizeof(*ret))) == ((void*)0))
  return ((void*)0);
 ret->force_tun_device = -1;
 return ret;
}
