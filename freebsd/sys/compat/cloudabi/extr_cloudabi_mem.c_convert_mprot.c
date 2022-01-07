
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cloudabi_mprot_t ;


 int CLOUDABI_PROT_EXEC ;
 int CLOUDABI_PROT_READ ;
 int CLOUDABI_PROT_WRITE ;
 int ENOTSUP ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;

__attribute__((used)) static int
convert_mprot(cloudabi_mprot_t in, int *out)
{


 if ((in & ~(CLOUDABI_PROT_EXEC | CLOUDABI_PROT_WRITE |
     CLOUDABI_PROT_READ)) != 0)
  return (ENOTSUP);

 if ((in & (CLOUDABI_PROT_EXEC | CLOUDABI_PROT_WRITE)) ==
     (CLOUDABI_PROT_EXEC | CLOUDABI_PROT_WRITE))
  return (ENOTSUP);

 *out = 0;
 if (in & CLOUDABI_PROT_EXEC)
  *out |= PROT_EXEC;
 if (in & CLOUDABI_PROT_WRITE)
  *out |= PROT_WRITE;
 if (in & CLOUDABI_PROT_READ)
  *out |= PROT_READ;
 return (0);
}
