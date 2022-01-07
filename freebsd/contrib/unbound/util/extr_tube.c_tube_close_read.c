
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tube {int sr; } ;


 int close (int) ;

void tube_close_read(struct tube* tube)
{
 if(tube->sr != -1) {
  close(tube->sr);
  tube->sr = -1;
 }
}
