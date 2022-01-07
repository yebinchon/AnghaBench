
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 scalar_t__ hcreate_r (int ,int *) ;
 int if_map ;
 int qid_map ;
 int queue_map ;

__attribute__((used)) static __attribute__((constructor)) void
pfctl_altq_init(void)
{




 if (hcreate_r(0, &queue_map) == 0)
  err(1, "Failed to create altq queue map");
 if (hcreate_r(0, &if_map) == 0)
  err(1, "Failed to create altq interface map");
 if (hcreate_r(0, &qid_map) == 0)
  err(1, "Failed to create altq queue id map");
}
