
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int target_async_mask_value ;

int
target_async_mask (int mask)
{
  int saved_async_masked_status = target_async_mask_value;
  target_async_mask_value = mask;
  return saved_async_masked_status;
}
