
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct event_signal_map {int * entries; scalar_t__ nentries; } ;



void
evmap_signal_initmap_(struct event_signal_map *ctx)
{
 ctx->nentries = 0;
 ctx->entries = ((void*)0);
}
