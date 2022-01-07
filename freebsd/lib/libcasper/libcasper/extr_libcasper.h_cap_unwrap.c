
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cch_fd; } ;
typedef TYPE_1__ cap_channel_t ;


 int free (TYPE_1__*) ;

__attribute__((used)) static inline int
cap_unwrap(cap_channel_t *chan)
{
 int fd;

 fd = chan->cch_fd;
 free(chan);
 return (fd);
}
