
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ti_chip ;

__attribute__((used)) static __inline bool ti_soc_is_supported(void)
{

 return (_ti_chip != -1);
}
