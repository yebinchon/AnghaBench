
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ccb_trans_settings {int dummy; } ;
struct ccb_scsiio {int dummy; } ;
struct ccb_pathinq {int dummy; } ;
struct ccb_getdev {int dummy; } ;
struct ac_contract {int dummy; } ;
__attribute__((used)) static int
xpt_async_size(u_int32_t async_code)
{

 switch (async_code) {
 case 140: return (0);
 case 128: return (0);
 case 132: return (0);
 case 131: return (0);
 case 133: return (sizeof(struct ccb_pathinq));
 case 134: return (0);
 case 138: return (sizeof(struct ccb_getdev));
 case 135: return (0);
 case 130: return (sizeof(struct ccb_trans_settings));
 case 136: return (0);
 case 137: return (0);
 case 139: return (sizeof(struct ac_contract));
 case 141: return (-1);
 case 129: return (sizeof(struct ccb_scsiio));
 }
 return (0);
}
