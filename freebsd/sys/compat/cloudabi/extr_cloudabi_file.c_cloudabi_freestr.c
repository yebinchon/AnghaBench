
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int M_CLOUDABI_PATH ;
 int free (char*,int ) ;

__attribute__((used)) static void
cloudabi_freestr(char *buf)
{

 free(buf, M_CLOUDABI_PATH);
}
