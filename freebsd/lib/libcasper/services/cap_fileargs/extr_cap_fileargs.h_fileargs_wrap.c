
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int cap_channel_t ;


 int cap_close (int *) ;
 int * fileargs_init (int ,int *,int,int ,int *,int ) ;

__attribute__((used)) static inline fileargs_t *
fileargs_wrap(cap_channel_t *chan, int fdflags)
{

 cap_close(chan);
 return (fileargs_init(0, ((void*)0), fdflags, 0, ((void*)0), 0));
}
