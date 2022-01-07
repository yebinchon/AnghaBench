
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_NOCORE ;
 int MAP_PRIVATE ;
 int PF_W ;

__attribute__((used)) static int
convert_flags(int elfflags)
{
    int flags = MAP_PRIVATE;





    if (!(elfflags & PF_W))
 flags |= MAP_NOCORE;
    return flags;
}
