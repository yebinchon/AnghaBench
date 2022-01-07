
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ub_stats_info ;
typedef void ub_shm_stat_info ;
struct config_file {int shm_key; } ;


 int SHM_R ;
 int SHM_W ;
 struct config_file* config_create () ;
 int config_delete (struct config_file*) ;
 int config_read (struct config_file*,char const*,int *) ;
 int do_stats_shm (struct config_file*,void*,void*) ;
 int errno ;
 int fatal_exit (char*,...) ;
 scalar_t__ shmat (int,int *,int ) ;
 int shmdt (void*) ;
 int shmget (int,int,int) ;
 int strerror (int ) ;

__attribute__((used)) static void print_stats_shm(const char* cfgfile)
{
 (void)cfgfile;

}
