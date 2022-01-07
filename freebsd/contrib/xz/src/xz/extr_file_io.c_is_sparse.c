
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__* u64; } ;
typedef TYPE_1__ io_buf ;


 size_t ARRAY_SIZE (scalar_t__*) ;
 int IO_BUFFER_SIZE ;
 int assert (int) ;

__attribute__((used)) static bool
is_sparse(const io_buf *buf)
{
 assert(IO_BUFFER_SIZE % sizeof(uint64_t) == 0);

 for (size_t i = 0; i < ARRAY_SIZE(buf->u64); ++i)
  if (buf->u64[i] != 0)
   return 0;

 return 1;
}
