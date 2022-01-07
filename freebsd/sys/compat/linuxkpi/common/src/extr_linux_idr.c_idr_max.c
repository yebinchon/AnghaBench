
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int layers; } ;


 int IDR_BITS ;

__attribute__((used)) static inline int
idr_max(struct idr *idr)
{
 return (1 << (idr->layers * IDR_BITS)) - 1;
}
