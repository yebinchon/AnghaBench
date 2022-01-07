
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osm_exit_flag ;
 int printf (char*,int) ;

__attribute__((used)) static void mark_exit_flag(int signum)
{
 if (!osm_exit_flag)
  printf("OpenSM: Got signal %d - exiting...\n", signum);
 osm_exit_flag = 1;
}
