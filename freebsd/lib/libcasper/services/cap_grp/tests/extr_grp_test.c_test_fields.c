
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cap_channel_t ;


 int CHECK (int) ;
 scalar_t__ ENOTCAPABLE ;
 int GR_GID ;
 int GR_MEM ;
 int GR_NAME ;
 int GR_PASSWD ;
 int * cap_clone (int *) ;
 int cap_close (int *) ;
 int cap_grp_limit_fields (int *,char const**,int) ;
 scalar_t__ errno ;
 int runtest_fields (int *,int) ;

__attribute__((used)) static void
test_fields(cap_channel_t *origcapgrp)
{
 cap_channel_t *capgrp;
 const char *fields[4];



 CHECK(runtest_fields(origcapgrp, GR_NAME | GR_PASSWD | GR_GID | GR_MEM));





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == 0);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_PASSWD | GR_GID | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_passwd";
 fields[1] = "gr_gid";
 fields[2] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 3) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_PASSWD | GR_GID | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_gid";
 fields[2] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 3) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_passwd";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_GID | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 3) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_PASSWD | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 3) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_PASSWD | GR_GID));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_PASSWD));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_GID));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_name";
 fields[1] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_passwd";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_NAME | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_passwd";
 fields[1] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_PASSWD | GR_GID));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_passwd";
 fields[1] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_gid";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_PASSWD | GR_MEM));

 cap_close(capgrp);





 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 fields[0] = "gr_gid";
 fields[1] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 2) == 0);
 fields[0] = "gr_name";
 fields[1] = "gr_passwd";
 fields[2] = "gr_gid";
 fields[3] = "gr_mem";
 CHECK(cap_grp_limit_fields(capgrp, fields, 4) == -1 &&
     errno == ENOTCAPABLE);
 fields[0] = "gr_passwd";
 CHECK(cap_grp_limit_fields(capgrp, fields, 1) == -1 &&
     errno == ENOTCAPABLE);

 CHECK(runtest_fields(capgrp, GR_GID | GR_MEM));

 cap_close(capgrp);
}
