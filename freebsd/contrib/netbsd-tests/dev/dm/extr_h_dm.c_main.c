
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dm_test_targets () ;
 int dm_test_versions () ;
 int err (int,char*) ;

int
main(int argc, char **argv) {
 int error;

 error = 0;

 error = dm_test_versions();
 if (error != 0)
  err(1, "dm_test_versions failed");

 error = dm_test_targets();
 if (error != 0)
  err(1, "dm_test_targets failed");

 return error;
}
