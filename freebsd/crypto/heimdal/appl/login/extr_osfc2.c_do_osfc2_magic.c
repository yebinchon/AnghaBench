
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid_t ;
struct es_passwd {TYPE_2__* ufld; TYPE_1__* uflg; } ;
struct TYPE_4__ {scalar_t__ fd_uid; int fd_name; } ;
struct TYPE_3__ {int fg_uid; } ;


 int LOG_AUTHPRIV ;
 int LOG_NOTICE ;
 struct es_passwd* getespwuid (int ) ;
 scalar_t__ getluid () ;
 scalar_t__ getprogname () ;
 int printf (char*) ;
 int set_auth_parameters (int,char**) ;
 int setluid (scalar_t__) ;
 int syslog (int,char*,int ,...) ;

int
do_osfc2_magic(uid_t uid)
{
    return 0;
}
