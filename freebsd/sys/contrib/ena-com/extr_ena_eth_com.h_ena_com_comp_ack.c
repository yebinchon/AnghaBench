
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct ena_com_io_sq {int next_to_comp; } ;



__attribute__((used)) static inline void ena_com_comp_ack(struct ena_com_io_sq *io_sq, u16 elem)
{
 io_sq->next_to_comp += elem;
}
