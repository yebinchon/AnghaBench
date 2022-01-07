
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct part_conf {int indx0; TYPE_2__* p_subn; int p_log; } ;
typedef int osm_prtn_t ;
typedef scalar_t__ membership_t ;
struct TYPE_3__ {scalar_t__ allow_both_pkeys; } ;
struct TYPE_4__ {TYPE_1__ opt; } ;


 scalar_t__ BOTH ;
 int FALSE ;
 scalar_t__ IB_SUCCESS ;
 scalar_t__ LIMITED ;
 int TRUE ;
 int manage_membership_change (struct part_conf*,int *,unsigned int,scalar_t__,int ) ;
 scalar_t__ osm_prtn_add_all (int ,TYPE_2__*,int *,unsigned int,int ,int ) ;

__attribute__((used)) static int partition_add_all(struct part_conf *conf, osm_prtn_t * p,
        unsigned type, membership_t membership)
{
 manage_membership_change(conf, p, type, membership, 0);

 if (membership != LIMITED &&
     osm_prtn_add_all(conf->p_log, conf->p_subn, p, type, TRUE, conf->indx0) != IB_SUCCESS)
  return -1;
 if ((membership == LIMITED ||
      (membership == BOTH && conf->p_subn->opt.allow_both_pkeys)) &&
     osm_prtn_add_all(conf->p_log, conf->p_subn, p, type, FALSE, conf->indx0) != IB_SUCCESS)
  return -1;
 return 0;
}
