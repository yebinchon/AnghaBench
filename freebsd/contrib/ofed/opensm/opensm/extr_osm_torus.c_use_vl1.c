
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_pathlen (unsigned int,unsigned int,unsigned int,unsigned int*,unsigned int*) ;

__attribute__((used)) static
bool use_vl1(unsigned src, unsigned dst, unsigned count)
{
 unsigned vl0_len, vl1_len;

 get_pathlen(src, dst, count, &vl0_len, &vl1_len);

 return vl0_len <= vl1_len ? 0 : 1;
}
