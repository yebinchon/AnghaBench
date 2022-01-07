
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;


 int tpc_done (union ctl_io*) ;

__attribute__((used)) static void
tpcl_done(union ctl_io *io)
{

 tpc_done(io);
}
