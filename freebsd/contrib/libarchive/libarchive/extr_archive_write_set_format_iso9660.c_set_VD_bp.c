
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum VD_type { ____Placeholder_VD_type } VD_type ;


 int memcpy (unsigned char*,char*,int) ;

__attribute__((used)) static void
set_VD_bp(unsigned char *bp, enum VD_type type, unsigned char ver)
{


 bp[1] = (unsigned char)type;

 memcpy(bp + 2, "CD001", 5);

 bp[7] = ver;
}
