
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memset (unsigned char*,int ,int) ;

__attribute__((used)) static inline void
set_unused_field_bp(unsigned char *bp, int from, int to)
{
 memset(bp + from, 0, to - from + 1);
}
