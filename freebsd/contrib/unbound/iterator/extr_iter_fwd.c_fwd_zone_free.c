
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_forward_zone {struct iter_forward_zone* name; int dp; } ;


 int delegpt_free_mlc (int ) ;
 int free (struct iter_forward_zone*) ;

__attribute__((used)) static void fwd_zone_free(struct iter_forward_zone* n)
{
 if(!n) return;
 delegpt_free_mlc(n->dp);
 free(n->name);
 free(n);
}
