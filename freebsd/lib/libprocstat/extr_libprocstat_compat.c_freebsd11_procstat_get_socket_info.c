
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockstat {int dname; int type; int sa_peer; int sa_local; int so_snd_sb_state; int so_rcv_sb_state; int proto; int dom_family; int unp_conn; int so_pcb; int so_addr; int inp_ppcb; } ;
struct procstat {int dummy; } ;
struct freebsd11_sockstat {int dname; int type; int sa_peer; int sa_local; int so_snd_sb_state; int so_rcv_sb_state; int proto; int dom_family; int unp_conn; int so_pcb; int so_addr; int inp_ppcb; } ;
struct filestat {int dummy; } ;


 int memcpy (int ,int ,int) ;
 int procstat_get_socket_info (struct procstat*,struct filestat*,struct sockstat*,char*) ;

int
freebsd11_procstat_get_socket_info(struct procstat *procstat, struct filestat *fst,
    struct freebsd11_sockstat *sock_compat, char *errbuf)
{
 struct sockstat sock;
 int r;

 r = procstat_get_socket_info(procstat, fst, &sock, errbuf);
 if (r != 0)
  return (r);
 sock_compat->inp_ppcb = sock.inp_ppcb;
 sock_compat->so_addr = sock.so_addr;
 sock_compat->so_pcb = sock.so_pcb;
 sock_compat->unp_conn = sock.unp_conn;
 sock_compat->dom_family = sock.dom_family;
 sock_compat->proto = sock.proto;
 sock_compat->so_rcv_sb_state = sock.so_rcv_sb_state;
 sock_compat->so_snd_sb_state = sock.so_snd_sb_state;
 sock_compat->sa_local = sock.sa_local;
 sock_compat->sa_peer = sock.sa_peer;
 sock_compat->type = sock.type;
 memcpy(sock_compat->dname, sock.dname, sizeof(sock.dname));
 return (0);
}
