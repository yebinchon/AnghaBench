
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int EINVAL ;
 int VMCS_GUEST_CS_ACCESS_RIGHTS ;
 int VMCS_GUEST_CS_BASE ;
 int VMCS_GUEST_CS_LIMIT ;
 int VMCS_GUEST_DS_ACCESS_RIGHTS ;
 int VMCS_GUEST_DS_BASE ;
 int VMCS_GUEST_DS_LIMIT ;
 int VMCS_GUEST_ES_ACCESS_RIGHTS ;
 int VMCS_GUEST_ES_BASE ;
 int VMCS_GUEST_ES_LIMIT ;
 int VMCS_GUEST_FS_ACCESS_RIGHTS ;
 int VMCS_GUEST_FS_BASE ;
 int VMCS_GUEST_FS_LIMIT ;
 int VMCS_GUEST_GDTR_BASE ;
 int VMCS_GUEST_GDTR_LIMIT ;
 int VMCS_GUEST_GS_ACCESS_RIGHTS ;
 int VMCS_GUEST_GS_BASE ;
 int VMCS_GUEST_GS_LIMIT ;
 int VMCS_GUEST_IDTR_BASE ;
 int VMCS_GUEST_IDTR_LIMIT ;
 int VMCS_GUEST_LDTR_ACCESS_RIGHTS ;
 int VMCS_GUEST_LDTR_BASE ;
 int VMCS_GUEST_LDTR_LIMIT ;
 int VMCS_GUEST_SS_ACCESS_RIGHTS ;
 int VMCS_GUEST_SS_BASE ;
 int VMCS_GUEST_SS_LIMIT ;
 int VMCS_GUEST_TR_ACCESS_RIGHTS ;
 int VMCS_GUEST_TR_BASE ;
 int VMCS_GUEST_TR_LIMIT ;
 int VMCS_INVALID_ENCODING ;
__attribute__((used)) static int
vmcs_seg_desc_encoding(int seg, uint32_t *base, uint32_t *lim, uint32_t *acc)
{

 switch (seg) {
 case 135:
  *base = VMCS_GUEST_ES_BASE;
  *lim = VMCS_GUEST_ES_LIMIT;
  *acc = VMCS_GUEST_ES_ACCESS_RIGHTS;
  break;
 case 137:
  *base = VMCS_GUEST_CS_BASE;
  *lim = VMCS_GUEST_CS_LIMIT;
  *acc = VMCS_GUEST_CS_ACCESS_RIGHTS;
  break;
 case 129:
  *base = VMCS_GUEST_SS_BASE;
  *lim = VMCS_GUEST_SS_LIMIT;
  *acc = VMCS_GUEST_SS_ACCESS_RIGHTS;
  break;
 case 136:
  *base = VMCS_GUEST_DS_BASE;
  *lim = VMCS_GUEST_DS_LIMIT;
  *acc = VMCS_GUEST_DS_ACCESS_RIGHTS;
  break;
 case 134:
  *base = VMCS_GUEST_FS_BASE;
  *lim = VMCS_GUEST_FS_LIMIT;
  *acc = VMCS_GUEST_FS_ACCESS_RIGHTS;
  break;
 case 132:
  *base = VMCS_GUEST_GS_BASE;
  *lim = VMCS_GUEST_GS_LIMIT;
  *acc = VMCS_GUEST_GS_ACCESS_RIGHTS;
  break;
 case 128:
  *base = VMCS_GUEST_TR_BASE;
  *lim = VMCS_GUEST_TR_LIMIT;
  *acc = VMCS_GUEST_TR_ACCESS_RIGHTS;
  break;
 case 130:
  *base = VMCS_GUEST_LDTR_BASE;
  *lim = VMCS_GUEST_LDTR_LIMIT;
  *acc = VMCS_GUEST_LDTR_ACCESS_RIGHTS;
  break;
 case 131:
  *base = VMCS_GUEST_IDTR_BASE;
  *lim = VMCS_GUEST_IDTR_LIMIT;
  *acc = VMCS_INVALID_ENCODING;
  break;
 case 133:
  *base = VMCS_GUEST_GDTR_BASE;
  *lim = VMCS_GUEST_GDTR_LIMIT;
  *acc = VMCS_INVALID_ENCODING;
  break;
 default:
  return (EINVAL);
 }

 return (0);
}
