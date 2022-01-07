
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cur_snaplen ;
 scalar_t__ priv_set_snaplen (int) ;
 int purge_buffer () ;

int
set_snaplen(int snap)
{
 if (priv_set_snaplen(snap))
  return (1);

 if (cur_snaplen > snap)
  purge_buffer();

 cur_snaplen = snap;

 return (0);
}
