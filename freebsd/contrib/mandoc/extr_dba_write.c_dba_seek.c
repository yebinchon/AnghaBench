
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int SEEK_SET ;
 int err (int,char*,int ) ;
 int fseek (int ,int ,int ) ;
 int ofp ;

void
dba_seek(int32_t pos)
{
 if (fseek(ofp, pos, SEEK_SET) == -1)
  err(1, "fseek(%d)", pos);
}
