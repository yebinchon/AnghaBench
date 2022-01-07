
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NVFTYPES ;
 unsigned int PS_FST_VTYPE_UNKNOWN ;
__attribute__((used)) static int
vntype2psfsttype(int type)
{
 static struct {
  int vtype;
  int fst_vtype;
 } vt2fst[] = {
  { 136, 145 },
  { 135, 144 },
  { 134, 143 },
  { 133, 142 },
  { 132, 141 },
  { 131, 140 },
  { 130, 139 },
  { 129, 138 },
  { 128, 137 }
 };

 unsigned int i, fst_type;

 fst_type = PS_FST_VTYPE_UNKNOWN;
 for (i = 0; i < (sizeof(vt2fst) / sizeof(*vt2fst)); i++) {
  if (type == vt2fst[i].vtype) {
   fst_type = vt2fst[i].fst_vtype;
   break;
  }
 }
 return (fst_type);
}
