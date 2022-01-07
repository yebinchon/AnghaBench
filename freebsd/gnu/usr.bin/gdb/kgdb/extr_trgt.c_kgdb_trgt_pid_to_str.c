
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;
typedef int buf ;


 int ptid_get_pid (int ) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static char *
kgdb_trgt_pid_to_str(ptid_t ptid)
{
 static char buf[33];

 snprintf(buf, sizeof(buf), "Thread %d", ptid_get_pid(ptid));
 return (buf);
}
