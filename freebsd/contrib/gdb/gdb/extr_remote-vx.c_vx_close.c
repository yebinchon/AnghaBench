
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clnt_destroy (scalar_t__) ;
 scalar_t__ pClient ;
 scalar_t__ vx_host ;
 int xfree (scalar_t__) ;

__attribute__((used)) static void
vx_close (int quitting)
{
  if (pClient)
    clnt_destroy (pClient);
  pClient = 0;

  if (vx_host)
    xfree (vx_host);
  vx_host = 0;
}
