
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* save_mad ;
 int save_mad_len ;

void madrpc_save_mad(void *madbuf, int len)
{
 save_mad = madbuf;
 save_mad_len = len;
}
