
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evutil_weakrand_ (int *) ;
 int weakrand_state ;

__attribute__((used)) static int
rand_int(int n)
{
 return evutil_weakrand_(&weakrand_state) % n;
}
