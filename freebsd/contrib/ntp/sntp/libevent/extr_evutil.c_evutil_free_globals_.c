
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int evutil_free_secure_rng_globals_ () ;
 int evutil_free_sock_err_globals () ;

void
evutil_free_globals_(void)
{
 evutil_free_secure_rng_globals_();
 evutil_free_sock_err_globals();
}
