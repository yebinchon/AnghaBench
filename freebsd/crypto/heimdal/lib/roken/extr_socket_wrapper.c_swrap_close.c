
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_info {struct socket_info* tmp_path; struct socket_info* peername; struct socket_info* myname; struct socket_info* path; } ;


 int SWRAP_CLOSE_ACK ;
 int SWRAP_CLOSE_RECV ;
 int SWRAP_CLOSE_SEND ;
 int SWRAP_DLIST_REMOVE (int ,struct socket_info*) ;
 struct socket_info* find_socket_info (int) ;
 int free (struct socket_info*) ;
 int real_close (int) ;
 int sockets ;
 int swrap_dump_packet (struct socket_info*,int *,int ,int *,int ) ;
 int unlink (struct socket_info*) ;

int swrap_close(int fd)
{
 struct socket_info *si = find_socket_info(fd);
 int ret;

 if (!si) {
  return real_close(fd);
 }

 SWRAP_DLIST_REMOVE(sockets, si);

 if (si->myname && si->peername) {
  swrap_dump_packet(si, ((void*)0), SWRAP_CLOSE_SEND, ((void*)0), 0);
 }

 ret = real_close(fd);

 if (si->myname && si->peername) {
  swrap_dump_packet(si, ((void*)0), SWRAP_CLOSE_RECV, ((void*)0), 0);
  swrap_dump_packet(si, ((void*)0), SWRAP_CLOSE_ACK, ((void*)0), 0);
 }

 if (si->path) free(si->path);
 if (si->myname) free(si->myname);
 if (si->peername) free(si->peername);
 if (si->tmp_path) {
  unlink(si->tmp_path);
  free(si->tmp_path);
 }
 free(si);

 return ret;
}
