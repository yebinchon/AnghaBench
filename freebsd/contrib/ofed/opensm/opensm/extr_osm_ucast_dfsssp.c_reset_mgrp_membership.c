
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sw; scalar_t__ dropped; } ;
typedef TYPE_2__ vertex_t ;
typedef size_t uint32_t ;
struct TYPE_4__ {scalar_t__ num_of_mcm; scalar_t__ is_mc_member; } ;



__attribute__((used)) static void reset_mgrp_membership(vertex_t * adj_list, uint32_t adj_list_size)
{
 uint32_t i = 0;

 for (i = 1; i < adj_list_size; i++) {
  if (adj_list[i].dropped)
   continue;

  adj_list[i].sw->is_mc_member = 0;
  adj_list[i].sw->num_of_mcm = 0;
 }
}
