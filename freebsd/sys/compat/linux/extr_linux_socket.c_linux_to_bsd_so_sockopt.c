
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOCAL_PEERCRED ;
 int SO_ACCEPTCONN ;
 int SO_BROADCAST ;
 int SO_DEBUG ;
 int SO_DONTROUTE ;
 int SO_ERROR ;
 int SO_KEEPALIVE ;
 int SO_LINGER ;
 int SO_OOBINLINE ;
 int SO_RCVBUF ;
 int SO_RCVLOWAT ;
 int SO_RCVTIMEO ;
 int SO_REUSEADDR ;
 int SO_SNDBUF ;
 int SO_SNDLOWAT ;
 int SO_SNDTIMEO ;
 int SO_TIMESTAMP ;
 int SO_TYPE ;

__attribute__((used)) static int
linux_to_bsd_so_sockopt(int opt)
{

 switch (opt) {
 case 143:
  return (SO_DEBUG);
 case 133:
  return (SO_REUSEADDR);
 case 128:
  return (SO_TYPE);
 case 141:
  return (SO_ERROR);
 case 142:
  return (SO_DONTROUTE);
 case 144:
  return (SO_BROADCAST);
 case 132:
  return (SO_SNDBUF);
 case 136:
  return (SO_RCVBUF);
 case 140:
  return (SO_KEEPALIVE);
 case 138:
  return (SO_OOBINLINE);
 case 139:
  return (SO_LINGER);
 case 137:
  return (LOCAL_PEERCRED);
 case 135:
  return (SO_RCVLOWAT);
 case 131:
  return (SO_SNDLOWAT);
 case 134:
  return (SO_RCVTIMEO);
 case 130:
  return (SO_SNDTIMEO);
 case 129:
  return (SO_TIMESTAMP);
 case 145:
  return (SO_ACCEPTCONN);
 }
 return (-1);
}
