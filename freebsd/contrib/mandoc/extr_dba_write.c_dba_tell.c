
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long int32_t ;


 int EOVERFLOW ;
 long INT32_MAX ;
 int err (int,char*,...) ;
 int errno ;
 long ftell (int ) ;
 int ofp ;

int32_t
dba_tell(void)
{
 long pos;

 if ((pos = ftell(ofp)) == -1)
  err(1, "ftell");
 if (pos >= INT32_MAX) {
  errno = EOVERFLOW;
  err(1, "ftell = %ld", pos);
 }
 return pos;
}
