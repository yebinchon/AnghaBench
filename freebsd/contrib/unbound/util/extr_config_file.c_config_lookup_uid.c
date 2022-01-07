
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int pw_gid; int pw_uid; } ;
struct config_file {scalar_t__* username; } ;


 int cfg_gid ;
 int cfg_uid ;
 struct passwd* getpwnam (scalar_t__*) ;

void config_lookup_uid(struct config_file* cfg)
{
 (void)cfg;

}
