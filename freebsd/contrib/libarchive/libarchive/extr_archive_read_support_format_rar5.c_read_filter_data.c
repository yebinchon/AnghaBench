
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int window_mask; int window_buf; } ;
struct rar5 {TYPE_1__ cstate; } ;


 scalar_t__ archive_le32dec (int *) ;
 int circular_memcpy (int *,int ,int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static uint32_t read_filter_data(struct rar5* rar, uint32_t offset) {
 uint8_t linear_buf[4];
 circular_memcpy(linear_buf, rar->cstate.window_buf,
     rar->cstate.window_mask, offset, offset + 4);
 return archive_le32dec(linear_buf);
}
