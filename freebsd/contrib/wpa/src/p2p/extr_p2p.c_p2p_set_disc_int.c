
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p2p_data {int min_disc_int; int max_disc_int; int max_disc_tu; } ;


 int p2p_dbg (struct p2p_data*,char*,int,int,int) ;

int p2p_set_disc_int(struct p2p_data *p2p, int min_disc_int, int max_disc_int,
       int max_disc_tu)
{
 if (min_disc_int > max_disc_int || min_disc_int < 0 || max_disc_int < 0)
  return -1;

 p2p->min_disc_int = min_disc_int;
 p2p->max_disc_int = max_disc_int;
 p2p->max_disc_tu = max_disc_tu;
 p2p_dbg(p2p, "Set discoverable interval: min=%d max=%d max_tu=%d",
  min_disc_int, max_disc_int, max_disc_tu);

 return 0;
}
