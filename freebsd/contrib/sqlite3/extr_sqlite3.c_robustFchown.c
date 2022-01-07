
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int gid_t ;


 int osFchown (int,int ,int ) ;
 scalar_t__ osGeteuid () ;

__attribute__((used)) static int robustFchown(int fd, uid_t uid, gid_t gid){



  return 0;

}
