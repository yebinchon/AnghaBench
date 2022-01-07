
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int MLX5_IB_MMAP_CMD_SHIFT ;

__attribute__((used)) static inline void set_command(int command, off_t *offset)
{
 *offset |= (command << MLX5_IB_MMAP_CMD_SHIFT);
}
