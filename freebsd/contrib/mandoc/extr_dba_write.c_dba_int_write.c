
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int i ;


 int err (int,char*) ;
 int fwrite (int *,int,int,int ) ;
 int htobe32 (int ) ;
 int ofp ;

void
dba_int_write(int32_t i)
{
 i = htobe32(i);
 if (fwrite(&i, sizeof(i), 1, ofp) != 1)
  err(1, "fwrite");
}
