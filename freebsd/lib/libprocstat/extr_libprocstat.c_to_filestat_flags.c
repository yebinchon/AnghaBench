
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int NFSTFLAGS ;
__attribute__((used)) static int
to_filestat_flags(int flags)
{
 static struct {
  int flag;
  int fst_flag;
 } fstflags[] = {
  { 155, 132 },
  { 154, 128 },
  { 153, 141 },
  { 152, 140 },
  { 151, 139 },
  { 150, 138 },
  { 149, 137 },
  { 148, 136 },
  { 147, 135 },
  { 146, 134 },
  { 145, 133 },
  { 144, 131 },
  { 143, 130 },
  { 142, 129 }
 };

 int fst_flags;
 unsigned int i;

 fst_flags = 0;
 for (i = 0; i < (sizeof(fstflags) / sizeof(*fstflags)); i++)
  if (flags & fstflags[i].flag)
   fst_flags |= fstflags[i].fst_flag;
 return (fst_flags);
}
