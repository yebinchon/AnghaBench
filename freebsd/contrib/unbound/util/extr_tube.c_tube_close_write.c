
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sw; } ;


 int close (int) ;

void tube_close_write(struct tube* tube)
{
 if(tube->sw != -1) {
  close(tube->sw);
  tube->sw = -1;
 }
}
