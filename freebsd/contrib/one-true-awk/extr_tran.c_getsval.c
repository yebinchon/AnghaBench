
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Cell ;


 int CONVFMT ;
 char* get_str_val (int *,int ) ;

char *getsval(Cell *vp)
{
      return get_str_val(vp, CONVFMT);
}
