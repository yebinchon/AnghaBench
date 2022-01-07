
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int recvbuf_t ;


 int ZERO (int ) ;

__attribute__((used)) static inline void
initialise_buffer(recvbuf_t *buff)
{
 ZERO(*buff);
}
