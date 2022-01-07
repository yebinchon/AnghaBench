
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int getbuf ;


 int IPPROTO_IP ;
 int IPPROTO_IPV6 ;
 int IPV6_IPSEC_POLICY ;
 int IP_IPSEC_POLICY ;
 int PFKEY_EXTLEN (char*) ;


 int SOCK_DGRAM ;
 int close (int) ;
 int free (char*) ;
 scalar_t__ getsockopt (int,int,int,char*,int*) ;
 char* ipsec_dump_policy (char*,int *) ;
 int ipsec_strerror () ;
 int memset (char*,int ,int) ;
 int perror (char*) ;
 int printf (char*,...) ;
 scalar_t__ setsockopt (int,int,int,char*,int ) ;
 int socket (int,int ,int ) ;

int test(char *policy, int family)
{
 int so, proto, optname;
 int len;
 char getbuf[1024];

 switch (family) {
 case 129:
  proto = IPPROTO_IP;
  optname = IP_IPSEC_POLICY;
  break;
 case 128:
  proto = IPPROTO_IPV6;
  optname = IPV6_IPSEC_POLICY;
  break;
 }

 if ((so = socket(family, SOCK_DGRAM, 0)) < 0)
  perror("socket");

 if (setsockopt(so, proto, optname, policy, PFKEY_EXTLEN(policy)) < 0)
  perror("setsockopt");

 len = sizeof(getbuf);
 memset(getbuf, 0, sizeof(getbuf));
 if (getsockopt(so, proto, optname, getbuf, &len) < 0)
  perror("getsockopt");

    {
 char *buf = ((void*)0);

 printf("\tgetlen:%d\n", len);

 if ((buf = ipsec_dump_policy(getbuf, ((void*)0))) == ((void*)0))
  ipsec_strerror();
 else
  printf("\t[%s]\n", buf);

 free(buf);
    }

 close (so);
}
