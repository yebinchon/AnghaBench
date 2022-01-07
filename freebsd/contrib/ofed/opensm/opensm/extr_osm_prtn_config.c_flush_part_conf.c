
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct part_conf {int dummy; } ;


 int memset (struct part_conf*,int ,int) ;

__attribute__((used)) static int flush_part_conf(struct part_conf *conf)
{
 memset(conf, 0, sizeof(*conf));
 return 0;
}
