
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uid_t ;
typedef int ucred_t ;
struct xucred {scalar_t__ cr_version; scalar_t__ cr_uid; scalar_t__ cr_pid; int cr_gid; } ;
struct ucred {scalar_t__ uid; scalar_t__ pid; int gid; } ;
struct sockcred {scalar_t__ sc_euid; int sc_egid; } ;
typedef void msghdr ;
struct cmsghdr {scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
struct TYPE_2__ {scalar_t__ uid; scalar_t__ pid; int gid; } ;
struct client {TYPE_1__ unixrights; int fd; } ;
typedef int socklen_t ;
typedef int peercred ;
typedef int pc ;
typedef int msg ;
typedef int gid_t ;


 int CMGROUP_MAX ;
 scalar_t__ CMSG_DATA (struct cmsghdr*) ;
 struct cmsghdr* CMSG_FIRSTHDR (void*) ;
 int CMSG_SPACE (int ) ;
 scalar_t__ LOCAL_PEERCRED ;
 int MSG_CTRUNC ;
 scalar_t__ SCM_CREDS ;
 int SOCKCREDSIZE (int ) ;
 scalar_t__ SOL_SOCKET ;
 int SO_PEERCRED ;
 scalar_t__ XUCRED_VERSION ;
 int free (void*) ;
 scalar_t__ getpeereid (int ,scalar_t__*,int *) ;
 scalar_t__ getpeerucred (int ,int **) ;
 scalar_t__ getsockopt (int ,scalar_t__,int,void*,int*) ;
 void* malloc (int) ;
 int memset (void*,int ,int) ;
 scalar_t__ recvmsg (int ,void*,int ) ;
 int ucred_free (int *) ;
 int ucred_getegid (int *) ;
 scalar_t__ ucred_geteuid (int *) ;

__attribute__((used)) static int
update_client_creds(struct client *c)
{
    return 0;
}
