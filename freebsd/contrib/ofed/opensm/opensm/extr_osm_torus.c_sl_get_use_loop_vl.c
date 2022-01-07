
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TORUS_MAX_DIM ;

__attribute__((used)) static inline
bool sl_get_use_loop_vl(unsigned sl, unsigned coord_dir)
{
 return (coord_dir < TORUS_MAX_DIM)
  ? (sl >> coord_dir) & 0x1 : 0;
}
