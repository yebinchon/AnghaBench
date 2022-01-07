
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline
unsigned vl_set_qos_vl(unsigned qos)
{
 return (qos & 0x1) << 2;
}
