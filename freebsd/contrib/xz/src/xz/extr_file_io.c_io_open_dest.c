
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_pair ;


 int io_open_dest_real (int *) ;
 int signals_block () ;
 int signals_unblock () ;

extern bool
io_open_dest(file_pair *pair)
{
 signals_block();
 const bool ret = io_open_dest_real(pair);
 signals_unblock();
 return ret;
}
