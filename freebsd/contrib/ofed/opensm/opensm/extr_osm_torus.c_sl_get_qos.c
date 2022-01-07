
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TORUS_MAX_DIM ;

__attribute__((used)) static inline
unsigned sl_get_qos(unsigned sl)
{
 return (sl >> TORUS_MAX_DIM) & 0x1;
}
