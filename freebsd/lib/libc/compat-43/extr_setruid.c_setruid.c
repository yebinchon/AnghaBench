
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;


 int setreuid (int ,int) ;

int
setruid(uid_t ruid)
{

 return (setreuid(ruid, -1));
}
