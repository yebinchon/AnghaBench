
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigev_node {int sn_id; int sn_type; } ;


 int HASH (int ,int ) ;
 int LIST_INSERT_HEAD (int *,struct sigev_node*,int ) ;
 int * sigev_hash ;
 int sn_link ;

int
__sigev_register(struct sigev_node *sn)
{
 int chain = HASH(sn->sn_type, sn->sn_id);

 LIST_INSERT_HEAD(&sigev_hash[chain], sn, sn_link);
 return (0);
}
