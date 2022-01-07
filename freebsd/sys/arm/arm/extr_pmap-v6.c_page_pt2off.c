
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int NB_IN_PT2 ;
 int PT2PG_MASK ;

__attribute__((used)) static __inline u_int
page_pt2off(u_int pt1_idx)
{

 return ((pt1_idx & PT2PG_MASK) * NB_IN_PT2);
}
