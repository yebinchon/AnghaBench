
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NKFVTYPES ;
 int PS_FST_VTYPE_UNKNOWN ;
__attribute__((used)) static int
kinfo_vtype2fst(int kfvtype)
{
 static struct {
  int kf_vtype;
  int fst_vtype;
 } kfvtypes2fst[] = {
  { 145, 136 },
  { 144, 135 },
  { 143, 134 },
  { 142, 133 },
  { 141, 132 },
  { 140, 131 },
  { 139, 130 },
  { 138, 129 },
  { 137, 128 }
 };

 unsigned int i;

 for (i = 0; i < (sizeof(kfvtypes2fst) / sizeof(*kfvtypes2fst)); i++)
  if (kfvtypes2fst[i].kf_vtype == kfvtype)
   break;
 if (i == (sizeof(kfvtypes2fst) / sizeof(*kfvtypes2fst)))
  return (PS_FST_VTYPE_UNKNOWN);
 return (kfvtypes2fst[i].fst_vtype);
}
