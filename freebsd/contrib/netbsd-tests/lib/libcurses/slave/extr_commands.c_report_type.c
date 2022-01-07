
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int returns_enum_t ;


 size_t WRITE_PIPE ;
 int err (int,char*) ;
 int * slvpipe ;
 scalar_t__ write (int ,int*,int) ;

__attribute__((used)) static void
report_type(returns_enum_t return_type)
{
 int type;

 type = return_type;
 if (write(slvpipe[WRITE_PIPE], &type, sizeof(int)) < 0)
  err(1, "command pipe write for status type failed");

}
