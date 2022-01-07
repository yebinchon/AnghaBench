
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NKFFLAGS ;
__attribute__((used)) static int
kinfo_fflags2fst(int kfflags)
{
 static struct {
  int kf_flag;
  int fst_flag;
 } kfflags2fst[] = {
  { 157, 142 },
  { 156, 141 },
  { 155, 140 },
  { 154, 139 },
  { 153, 138 },
  { 152, 137 },
  { 151, 136 },
  { 150, 130 },
  { 149, 135 },
  { 148, 134 },
  { 147, 133 },
  { 146, 132 },
  { 145, 131 },
  { 144, 129 },
  { 143, 128 }
 };

 unsigned int i;
 int flags;

 flags = 0;
 for (i = 0; i < (sizeof(kfflags2fst) / sizeof(*kfflags2fst)); i++)
  if ((kfflags & kfflags2fst[i].kf_flag) != 0)
   flags |= kfflags2fst[i].fst_flag;
 return (flags);
}
