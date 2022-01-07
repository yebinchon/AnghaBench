
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int osm_hup_flag ;

__attribute__((used)) static void mark_hup_flag(int signum)
{
 osm_hup_flag = 1;
}
