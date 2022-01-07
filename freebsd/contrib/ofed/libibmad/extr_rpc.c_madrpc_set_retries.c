
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int madrpc_retries ;

int madrpc_set_retries(int retries)
{
 if (retries > 0)
  madrpc_retries = retries;
 return madrpc_retries;
}
