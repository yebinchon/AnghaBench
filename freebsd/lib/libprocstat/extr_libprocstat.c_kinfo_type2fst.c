
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NKFTYPES ;
__attribute__((used)) static int
kinfo_type2fst(int kftype)
{
 static struct {
  int kf_type;
  int fst_type;
 } kftypes2fst[] = {
  { 148, 134 },
  { 155, 141 },
  { 154, 140 },
  { 153, 139 },
  { 152, 138 },
  { 151, 137 },
  { 150, 136 },
  { 149, 135 },
  { 147, 133 },
  { 146, 132 },
  { 145, 131 },
  { 144, 130 },
  { 142, 128 },
  { 143, 129 }
 };

 unsigned int i;

 for (i = 0; i < (sizeof(kftypes2fst) / sizeof(*kftypes2fst)); i++)
  if (kftypes2fst[i].kf_type == kftype)
   break;
 if (i == (sizeof(kftypes2fst) / sizeof(*kftypes2fst)))
  return (129);
 return (kftypes2fst[i].fst_type);
}
