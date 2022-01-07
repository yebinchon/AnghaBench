
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xpt_opcode ;
typedef union ccb {int dummy; } ccb ;
struct ccb_scsiio {int dummy; } ;
struct ccb_relsim {int dummy; } ;
struct ccb_pathinq {int dummy; } ;
struct ccb_immediate_notify {int dummy; } ;
struct ccb_immed_notify {int dummy; } ;
struct ccb_en_lun {int dummy; } ;
struct ccb_debug {int dummy; } ;
struct ccb_accept_tio {int dummy; } ;
struct ccb_abort {int dummy; } ;
__attribute__((used)) static size_t
targccblen(xpt_opcode func_code)
{
 int len;


 switch (func_code) {
 case 135:
 case 128:
  len = sizeof(struct ccb_scsiio);
  break;
 case 136:
  len = sizeof(struct ccb_accept_tio);
  break;
 case 131:
  len = sizeof(struct ccb_immed_notify);
  break;
 case 132:
  len = sizeof(struct ccb_immediate_notify);
  break;
 case 129:
  len = sizeof(struct ccb_relsim);
  break;
 case 130:
  len = sizeof(struct ccb_pathinq);
  break;
 case 134:
  len = sizeof(struct ccb_debug);
  break;
 case 137:
  len = sizeof(struct ccb_abort);
  break;
 case 133:
  len = sizeof(struct ccb_en_lun);
  break;
 default:
  len = sizeof(union ccb);
  break;
 }

 return (len);
}
