
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fileargs_t ;
typedef int cap_channel_t ;


 int * fileargs_create (int *,int) ;

fileargs_t *
fileargs_wrap(cap_channel_t *chan, int fdflags)
{

 if (chan == ((void*)0)) {
  return (((void*)0));
 }

 return (fileargs_create(chan, fdflags));
}
