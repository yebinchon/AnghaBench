
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ena_com_dev {int adaptive_coalescing; } ;



__attribute__((used)) static inline bool ena_com_get_adaptive_moderation_enabled(struct ena_com_dev *ena_dev)
{
 return ena_dev->adaptive_coalescing;
}
