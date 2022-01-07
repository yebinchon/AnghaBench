
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct msghdr {int dummy; } ;
struct TYPE_3__ {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct ip6_mtuinfo {scalar_t__ ip6m_mtu; TYPE_1__ ip6m_addr; } ;
struct cmsghdr {scalar_t__ cmsg_len; scalar_t__ cmsg_level; scalar_t__ cmsg_type; } ;
typedef int mtuctl ;
struct TYPE_4__ {scalar_t__ sin6_scope_id; int sin6_addr; } ;


 int CMSG_DATA (struct cmsghdr*) ;
 scalar_t__ CMSG_FIRSTHDR (struct msghdr*) ;
 scalar_t__ CMSG_LEN (int) ;
 scalar_t__ CMSG_NXTHDR (struct msghdr*,struct cmsghdr*) ;
 int F_VERBOSE ;
 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 scalar_t__ IPPROTO_IPV6 ;
 scalar_t__ IPV6_MMTU ;
 scalar_t__ IPV6_PATHMTU ;
 TYPE_2__ dst ;
 int memcpy (struct ip6_mtuinfo*,int ,int) ;
 int options ;
 char* pr_addr (struct sockaddr*,int) ;
 int printf (char*,char*) ;

__attribute__((used)) static int
get_pathmtu(struct msghdr *mhdr)
{
 return(0);
}
