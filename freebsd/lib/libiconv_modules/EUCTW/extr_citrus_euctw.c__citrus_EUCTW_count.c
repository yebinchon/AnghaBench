
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;

__attribute__((used)) static __inline int
_citrus_EUCTW_count(int cs)
{

 switch (cs) {
 case 0:

 case 1:

 case 2:
  return (1 << cs);
 case 3:
  abort();

 }
 return (0);
}
