
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_2__ {int tf_pc; int tf_svc_lr; int tf_svc_sp; int tf_r12; int tf_r11; int tf_r10; int tf_r9; int tf_r8; int tf_r7; int tf_r6; int tf_r5; int tf_r4; int tf_r3; int tf_r2; int tf_r1; int tf_r0; } ;


 TYPE_1__* kdb_frame ;
 int panic (char*) ;

__attribute__((used)) static u_int
db_fetch_reg(int reg)
{

 switch (reg) {
 case 0:
  return (kdb_frame->tf_r0);
 case 1:
  return (kdb_frame->tf_r1);
 case 2:
  return (kdb_frame->tf_r2);
 case 3:
  return (kdb_frame->tf_r3);
 case 4:
  return (kdb_frame->tf_r4);
 case 5:
  return (kdb_frame->tf_r5);
 case 6:
  return (kdb_frame->tf_r6);
 case 7:
  return (kdb_frame->tf_r7);
 case 8:
  return (kdb_frame->tf_r8);
 case 9:
  return (kdb_frame->tf_r9);
 case 10:
  return (kdb_frame->tf_r10);
 case 11:
  return (kdb_frame->tf_r11);
 case 12:
  return (kdb_frame->tf_r12);
 case 13:
  return (kdb_frame->tf_svc_sp);
 case 14:
  return (kdb_frame->tf_svc_lr);
 case 15:
  return (kdb_frame->tf_pc);
 default:
  panic("db_fetch_reg: botch");
 }
}
