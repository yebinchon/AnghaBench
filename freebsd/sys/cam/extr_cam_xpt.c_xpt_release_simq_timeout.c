
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;


 int TRUE ;
 int xpt_release_simq (struct cam_sim*,int ) ;

__attribute__((used)) static void
xpt_release_simq_timeout(void *arg)
{
 struct cam_sim *sim;

 sim = (struct cam_sim *)arg;
 xpt_release_simq(sim, TRUE);
}
