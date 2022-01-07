
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifvxlancfg {int dummy; } ;
typedef int cfg ;


 int VXLAN_CMD_GET_CONFIG ;
 int bzero (struct ifvxlancfg*,int) ;
 int do_cmd (int,int ,struct ifvxlancfg*,int,int ) ;

__attribute__((used)) static int
vxlan_exists(int sock)
{
 struct ifvxlancfg cfg;

 bzero(&cfg, sizeof(cfg));

 return (do_cmd(sock, VXLAN_CMD_GET_CONFIG, &cfg, sizeof(cfg), 0) != -1);
}
