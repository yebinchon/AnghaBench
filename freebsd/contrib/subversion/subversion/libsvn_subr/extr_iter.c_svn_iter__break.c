
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int svn_error_t ;


 int internal_break_error ;

svn_error_t *
svn_iter__break(void)
{
  return &internal_break_error;
}
