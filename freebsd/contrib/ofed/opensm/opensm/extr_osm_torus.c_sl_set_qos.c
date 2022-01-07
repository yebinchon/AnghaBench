
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int TORUS_MAX_DIM ;

__attribute__((used)) static inline
unsigned sl_set_qos(unsigned qos)
{
 return (unsigned)(!!qos) << TORUS_MAX_DIM;
}
