
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_ild {scalar_t__ mode; } ;


 scalar_t__ ptem_32bit ;

__attribute__((used)) static inline int mode_32b(const struct pt_ild *ild)
{
 return ild->mode == ptem_32bit;
}
