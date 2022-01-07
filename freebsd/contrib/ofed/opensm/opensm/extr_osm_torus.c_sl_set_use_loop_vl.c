
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TORUS_MAX_DIM ;

__attribute__((used)) static inline
unsigned sl_set_use_loop_vl(bool use_loop_vl, unsigned coord_dir)
{
 return (coord_dir < TORUS_MAX_DIM)
  ? ((unsigned)use_loop_vl << coord_dir) : 0;
}
