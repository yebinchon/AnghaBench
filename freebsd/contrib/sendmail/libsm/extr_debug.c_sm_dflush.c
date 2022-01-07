
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_TIME_DEFAULT ;
 int SmDebugOutput ;
 int sm_io_flush (int ,int ) ;

void
sm_dflush()
{
 sm_io_flush(SmDebugOutput, SM_TIME_DEFAULT);
}
