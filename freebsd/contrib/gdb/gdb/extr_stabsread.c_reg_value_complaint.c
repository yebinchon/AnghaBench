
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,int,int,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
reg_value_complaint (int arg1, int arg2, const char *arg3)
{
  complaint (&symfile_complaints,
      "register number %d too large (max %d) in symbol %s", arg1, arg2,
      arg3);
}
