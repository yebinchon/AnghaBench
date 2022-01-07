
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_unwind {int dummy; } ;
struct frame_info {int dummy; } ;


 struct frame_unwind const sparc32_frame_unwind ;

__attribute__((used)) static const struct frame_unwind *
sparc32_frame_sniffer (struct frame_info *next_frame)
{
  return &sparc32_frame_unwind;
}
