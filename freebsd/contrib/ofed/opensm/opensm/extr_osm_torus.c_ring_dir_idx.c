
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_pathlen (unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static
int ring_dir_idx(unsigned src, unsigned dst, unsigned count)
{
 int r;
 unsigned vl0_len, vl1_len;

 if (dst == src)
  return 0;

 get_pathlen(src, dst, count, &vl0_len, &vl1_len);

 if (dst > src)
  r = vl0_len <= vl1_len ? 1 : -1;
 else
  r = vl0_len <= vl1_len ? -1 : 1;

 return r;
}
