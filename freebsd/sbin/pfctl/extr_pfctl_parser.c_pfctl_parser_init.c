
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 scalar_t__ hcreate_r (int ,int *) ;
 int isgroup_map ;

__attribute__((used)) static __attribute__((constructor)) void
pfctl_parser_init(void)
{




 if (hcreate_r(0, &isgroup_map) == 0)
  err(1, "Failed to create interface group query response map");
}
