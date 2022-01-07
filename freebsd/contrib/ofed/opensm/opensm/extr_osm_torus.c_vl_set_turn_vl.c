
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TORUS_MAX_DIM ;

__attribute__((used)) static inline
unsigned vl_set_turn_vl(unsigned in_coord_dir, unsigned out_coord_dir)
{
 unsigned vl = 0;

 if (in_coord_dir != TORUS_MAX_DIM &&
     out_coord_dir != TORUS_MAX_DIM)
  vl = (in_coord_dir > out_coord_dir)
   ? 0x1 << 1 : 0;

 return vl;
}
