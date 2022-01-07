
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct utmpx {int ut_syslen; scalar_t__* ut_addr_v6; int ut_addr; int ut_host; int ut_user; int ut_pid; int ut_line; int ut_type; int ut_id; } ;
struct TYPE_10__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_5__ sin6_addr; } ;
struct TYPE_8__ {scalar_t__ sa_family; } ;
struct TYPE_6__ {int s_addr; } ;
struct TYPE_7__ {TYPE_1__ sin_addr; } ;
struct TYPE_9__ {TYPE_3__ sa; TYPE_2__ sa_in; } ;
struct logininfo {int type; int hostname; TYPE_4__ hostaddr; int username; int pid; int line; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int DEAD_PROCESS ;
 scalar_t__ IN6_IS_ADDR_V4MAPPED (TYPE_5__*) ;


 int MIN (int ,int) ;
 int MIN_SIZEOF (int ,int ) ;
 int USER_PROCESS ;
 int line_abbrevname (int ,int ,int) ;
 int line_stripname (int ,int ,int) ;
 int memcpy (scalar_t__*,int ,int) ;
 int memset (struct utmpx*,char,int) ;
 int set_utmpx_time (struct logininfo*,struct utmpx*) ;
 int strlen (int ) ;
 int strncpy (int ,int ,int ) ;

void
construct_utmpx(struct logininfo *li, struct utmpx *utx)
{



 memset(utx, '\0', sizeof(*utx));






 switch (li->type) {
 case 129:
  utx->ut_type = USER_PROCESS;
  break;
 case 128:
  utx->ut_type = DEAD_PROCESS;
  break;
 }
 line_stripname(utx->ut_line, li->line, sizeof(utx->ut_line));
 set_utmpx_time(li, utx);
 utx->ut_pid = li->pid;


 strncpy(utx->ut_user, li->username,
     MIN_SIZEOF(utx->ut_user, li->username));

 if (li->type == 128)
  return;
}
