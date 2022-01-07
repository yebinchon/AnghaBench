
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IDR_BITS ;
 int IDR_MASK ;

__attribute__((used)) static inline int
idr_pos(int id, int layer)
{
 return (id >> (IDR_BITS * layer)) & IDR_MASK;
}
