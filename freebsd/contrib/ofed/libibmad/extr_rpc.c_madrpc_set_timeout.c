
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int madrpc_timeout ;

int madrpc_set_timeout(int timeout)
{
 madrpc_timeout = timeout;
 return 0;
}
