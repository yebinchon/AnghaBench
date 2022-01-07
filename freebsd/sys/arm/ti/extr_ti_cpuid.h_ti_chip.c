
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KASSERT (int,char*) ;
 int _ti_chip ;

__attribute__((used)) static __inline int ti_chip(void)
{
 KASSERT(_ti_chip != -1, ("Can't determine TI Chip"));
 return _ti_chip;
}
