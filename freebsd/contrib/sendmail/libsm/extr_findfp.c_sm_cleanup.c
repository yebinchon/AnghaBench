
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SM_TIME_DEFAULT ;
 int sm_flush ;
 int sm_fwalk (int ,int*) ;

void
sm_cleanup()
{
 int timeout = SM_TIME_DEFAULT;

 (void) sm_fwalk(sm_flush, &timeout);
}
