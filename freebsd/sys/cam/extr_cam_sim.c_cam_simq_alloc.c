
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct cam_devq {int dummy; } ;


 struct cam_devq* cam_devq_alloc (int ,int ) ;

struct cam_devq *
cam_simq_alloc(u_int32_t max_sim_transactions)
{
 return (cam_devq_alloc( 0, max_sim_transactions));
}
