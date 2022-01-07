
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c4iw_dev {scalar_t__ chip_version; } ;


 scalar_t__ CHELSIO_T6 ;

__attribute__((used)) static inline int dev_is_t6(struct c4iw_dev *dev)
{
 return dev->chip_version == CHELSIO_T6;
}
