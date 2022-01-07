
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gid_t ;
typedef int cap_channel_t ;


 int CHECK (int) ;
 scalar_t__ ENOTCAPABLE ;
 int * cap_clone (int *) ;
 int cap_close (int *) ;
 int cap_grp_limit_groups (int *,char const**,int,int*,int) ;
 scalar_t__ errno ;
 int runtest_groups (int *,char const**,int*,int) ;

__attribute__((used)) static void
test_groups(cap_channel_t *origcapgrp)
{
 cap_channel_t *capgrp;
 const char *names[5];
 gid_t gids[5];







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "wheel";
 names[1] = "daemon";
 names[2] = "kmem";
 names[3] = "sys";
 names[4] = "tty";
 CHECK(cap_grp_limit_groups(capgrp, names, 5, ((void*)0), 0) == 0);
 gids[0] = 0;
 gids[1] = 1;
 gids[2] = 2;
 gids[3] = 3;
 gids[4] = 4;

 CHECK(runtest_groups(capgrp, names, gids, 5));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "kmem";
 names[1] = "sys";
 names[2] = "tty";
 CHECK(cap_grp_limit_groups(capgrp, names, 3, ((void*)0), 0) == 0);
 names[3] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 4, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 1, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "kmem";
 gids[0] = 2;
 gids[1] = 3;
 gids[2] = 4;

 CHECK(runtest_groups(capgrp, names, gids, 3));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "wheel";
 names[1] = "kmem";
 names[2] = "tty";
 CHECK(cap_grp_limit_groups(capgrp, names, 3, ((void*)0), 0) == 0);
 names[3] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 4, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 1, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "wheel";
 gids[0] = 0;
 gids[1] = 2;
 gids[2] = 4;

 CHECK(runtest_groups(capgrp, names, gids, 3));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "kmem";
 names[1] = "sys";
 names[2] = "tty";
 gids[0] = 2;
 gids[1] = 3;
 gids[2] = 4;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 3) == 0);
 gids[3] = 0;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 4) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 0;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 1) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 2;

 CHECK(runtest_groups(capgrp, names, gids, 3));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "wheel";
 names[1] = "kmem";
 names[2] = "tty";
 gids[0] = 0;
 gids[1] = 2;
 gids[2] = 4;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 3) == 0);
 gids[3] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 4) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 1) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 0;

 CHECK(runtest_groups(capgrp, names, gids, 3));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "kmem";
 CHECK(cap_grp_limit_groups(capgrp, names, 1, ((void*)0), 0) == 0);
 names[1] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 2, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 1, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "kmem";
 gids[0] = 2;

 CHECK(runtest_groups(capgrp, names, gids, 1));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "wheel";
 names[1] = "tty";
 CHECK(cap_grp_limit_groups(capgrp, names, 2, ((void*)0), 0) == 0);
 names[2] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 3, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "daemon";
 CHECK(cap_grp_limit_groups(capgrp, names, 1, ((void*)0), 0) == -1 &&
     errno == ENOTCAPABLE);
 names[0] = "wheel";
 gids[0] = 0;
 gids[1] = 4;

 CHECK(runtest_groups(capgrp, names, gids, 2));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "kmem";
 gids[0] = 2;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 1) == 0);
 gids[1] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 2) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 1) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 2;

 CHECK(runtest_groups(capgrp, names, gids, 1));

 cap_close(capgrp);







 capgrp = cap_clone(origcapgrp);
 CHECK(capgrp != ((void*)0));

 names[0] = "wheel";
 names[1] = "tty";
 gids[0] = 0;
 gids[1] = 4;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 2) == 0);
 gids[2] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 3) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 1;
 CHECK(cap_grp_limit_groups(capgrp, ((void*)0), 0, gids, 1) == -1 &&
     errno == ENOTCAPABLE);
 gids[0] = 0;

 CHECK(runtest_groups(capgrp, names, gids, 2));

 cap_close(capgrp);
}
