
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_TIME_DEFAULT ;
 int * SmDebugOutput ;
 int sm_io_close (int *,int ) ;
 int * smioout ;

void
sm_debug_close()
{
 if (SmDebugOutput != ((void*)0) && SmDebugOutput != smioout)
 {
  sm_io_close(SmDebugOutput, SM_TIME_DEFAULT);
  SmDebugOutput = ((void*)0);
 }
}
