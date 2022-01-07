
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct sockaddr_un {int sun_path; int sun_family; } ;
struct sockaddr {int dummy; } ;
typedef int controladdr ;


 int AF_UNIX ;
 scalar_t__ ControlSocket ;
 char* ControlSocketName ;
 int EINVAL ;
 int ENAMETOOLONG ;
 int LOG_ALERT ;
 int NOQID ;
 int RunAsGid ;
 scalar_t__ RunAsUid ;
 int RunAsUserName ;
 long SFF_CREAT ;
 long SFF_MUSTOWN ;
 long SFF_NOLINK ;
 long SFF_OPENASROOT ;
 long SFF_SAFEDIRPATH ;
 scalar_t__ SM_FD_SETSIZE ;
 int SOCK_STREAM ;
 int S_IRUSR ;
 int S_IWUSR ;
 scalar_t__ TrustedUid ;
 scalar_t__ bind (scalar_t__,struct sockaddr*,int) ;
 scalar_t__ chmod (char*,int) ;
 scalar_t__ chown (char*,scalar_t__,int) ;
 int closecontrolsocket (int) ;
 int clrcontrol () ;
 int errno ;
 scalar_t__ geteuid () ;
 scalar_t__ listen (scalar_t__,int) ;
 int memset (struct sockaddr_un*,char,int) ;
 int message (char*,char*,int,int ) ;
 int safefile (char*,scalar_t__,int ,int ,long,int,int *) ;
 int sm_errstring (int) ;
 int sm_strlcpy (int ,char*,int) ;
 int sm_syslog (int ,int ,char*,char*,int,int ) ;
 scalar_t__ socket (int ,int ,int ) ;
 int strlen (char*) ;
 int unlink (char*) ;

int
opencontrolsocket()
{
 return 0;
}
