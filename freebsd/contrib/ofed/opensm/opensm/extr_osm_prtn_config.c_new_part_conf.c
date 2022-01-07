
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mtu; int rate; int sl; } ;
struct part_conf {int indx0; int membership; TYPE_1__ flags; scalar_t__ is_ipoib; int * p_prtn; int * p_subn; int * p_log; } ;
typedef int osm_subn_t ;
typedef int osm_log_t ;


 int FALSE ;
 int LIMITED ;
 int OSM_DEFAULT_MGRP_MTU ;
 int OSM_DEFAULT_MGRP_RATE ;
 int OSM_DEFAULT_SL ;
 int memset (struct part_conf*,int ,int) ;

__attribute__((used)) static struct part_conf *new_part_conf(osm_log_t * p_log, osm_subn_t * p_subn)
{
 static struct part_conf part;
 struct part_conf *conf = &part;

 memset(conf, 0, sizeof(*conf));
 conf->p_log = p_log;
 conf->p_subn = p_subn;
 conf->p_prtn = ((void*)0);
 conf->is_ipoib = 0;
 conf->flags.sl = OSM_DEFAULT_SL;
 conf->flags.rate = OSM_DEFAULT_MGRP_RATE;
 conf->flags.mtu = OSM_DEFAULT_MGRP_MTU;
 conf->membership = LIMITED;
 conf->indx0 = FALSE;
 return conf;
}
