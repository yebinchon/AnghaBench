
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_R ;
 int PF_W ;
 int PF_X ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;

int
convert_prot(int elfflags)
{
    int prot = 0;
    if (elfflags & PF_R)
 prot |= PROT_READ;
    if (elfflags & PF_W)
 prot |= PROT_WRITE;
    if (elfflags & PF_X)
 prot |= PROT_EXEC;
    return prot;
}
