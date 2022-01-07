
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Cell ;


 int OFMT ;
 char* get_str_val (int *,int ) ;

char *getpssval(Cell *vp)
{
      return get_str_val(vp, OFMT);
}
