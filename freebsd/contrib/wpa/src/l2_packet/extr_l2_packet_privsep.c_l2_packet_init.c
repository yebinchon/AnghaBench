
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_un {int sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int sun_path; void* sun_family; } ;
struct l2_packet_data {void (* rx_callback ) (void*,int const*,int const*,size_t) ;int fd; struct l2_packet_data* own_socket_path; int own_addr; TYPE_1__ priv_addr; void* rx_callback_ctx; } ;
typedef int reply ;
typedef int reg_cmd ;
typedef int fd_set ;
typedef int addr ;


 void* AF_UNIX ;
 scalar_t__ EINTR ;
 int ETH_ALEN ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int PF_UNIX ;
 int PRIVSEP_CMD_L2_REGISTER ;
 int SOCK_DGRAM ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int eloop_register_read_sock (int,int ,struct l2_packet_data*,int *) ;
 scalar_t__ errno ;
 int getpid () ;
 int l2_packet_receive ;
 int os_free (struct l2_packet_data*) ;
 struct l2_packet_data* os_malloc (size_t) ;
 int os_memcpy (int ,int *,int) ;
 int os_memset (struct sockaddr_un*,int ,int) ;
 int os_snprintf (struct l2_packet_data*,int,char*,char*,char const*,...) ;
 int os_strlcpy (int ,struct l2_packet_data*,int) ;
 int os_strlen (char*) ;
 struct l2_packet_data* os_zalloc (int) ;
 int recv (int,int *,int,int ) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 int socket (int ,int ,int ) ;
 int strerror (scalar_t__) ;
 int unlink (struct l2_packet_data*) ;
 int wpa_printf (int ,char*,...) ;
 scalar_t__ wpa_priv_cmd (struct l2_packet_data*,int ,int*,int) ;

struct l2_packet_data * l2_packet_init(
 const char *ifname, const u8 *own_addr, unsigned short protocol,
 void (*rx_callback)(void *ctx, const u8 *src_addr,
       const u8 *buf, size_t len),
 void *rx_callback_ctx, int l2_hdr)
{
 struct l2_packet_data *l2;
 char *own_dir = "/tmp";
 char *priv_dir = "/var/run/wpa_priv";
 size_t len;
 static unsigned int counter = 0;
 struct sockaddr_un addr;
 fd_set rfds;
 struct timeval tv;
 int res;
 u8 reply[ETH_ALEN + 1];
 int reg_cmd[2];

 l2 = os_zalloc(sizeof(struct l2_packet_data));
 if (l2 == ((void*)0))
  return ((void*)0);
 l2->rx_callback = rx_callback;
 l2->rx_callback_ctx = rx_callback_ctx;

 len = os_strlen(own_dir) + 50;
 l2->own_socket_path = os_malloc(len);
 if (l2->own_socket_path == ((void*)0)) {
  os_free(l2);
  return ((void*)0);
 }
 os_snprintf(l2->own_socket_path, len, "%s/wpa_privsep-l2-%d-%d",
      own_dir, getpid(), counter++);

 l2->priv_addr.sun_family = AF_UNIX;
 os_snprintf(l2->priv_addr.sun_path, sizeof(l2->priv_addr.sun_path),
      "%s/%s", priv_dir, ifname);

 l2->fd = socket(PF_UNIX, SOCK_DGRAM, 0);
 if (l2->fd < 0) {
  wpa_printf(MSG_ERROR, "socket(PF_UNIX): %s", strerror(errno));
  os_free(l2->own_socket_path);
  l2->own_socket_path = ((void*)0);
  os_free(l2);
  return ((void*)0);
 }

 os_memset(&addr, 0, sizeof(addr));
 addr.sun_family = AF_UNIX;
 os_strlcpy(addr.sun_path, l2->own_socket_path, sizeof(addr.sun_path));
 if (bind(l2->fd, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
  wpa_printf(MSG_ERROR, "l2-pkt-privsep: bind(PF_UNIX): %s",
      strerror(errno));
  goto fail;
 }

 reg_cmd[0] = protocol;
 reg_cmd[1] = l2_hdr;
 if (wpa_priv_cmd(l2, PRIVSEP_CMD_L2_REGISTER, reg_cmd, sizeof(reg_cmd))
     < 0) {
  wpa_printf(MSG_ERROR, "L2: Failed to register with wpa_priv");
  goto fail;
 }

 FD_ZERO(&rfds);
 FD_SET(l2->fd, &rfds);
 tv.tv_sec = 5;
 tv.tv_usec = 0;
 res = select(l2->fd + 1, &rfds, ((void*)0), ((void*)0), &tv);
 if (res < 0 && errno != EINTR) {
  wpa_printf(MSG_ERROR, "select: %s", strerror(errno));
  goto fail;
 }

 if (FD_ISSET(l2->fd, &rfds)) {
  res = recv(l2->fd, reply, sizeof(reply), 0);
  if (res < 0) {
   wpa_printf(MSG_ERROR, "recv: %s", strerror(errno));
   goto fail;
  }
 } else {
  wpa_printf(MSG_DEBUG, "L2: Timeout while waiting for "
      "registration reply");
  goto fail;
 }

 if (res != ETH_ALEN) {
  wpa_printf(MSG_DEBUG, "L2: Unexpected registration reply "
      "(len=%d)", res);
 }
 os_memcpy(l2->own_addr, reply, ETH_ALEN);

 eloop_register_read_sock(l2->fd, l2_packet_receive, l2, ((void*)0));

 return l2;

fail:
 close(l2->fd);
 l2->fd = -1;
 unlink(l2->own_socket_path);
 os_free(l2->own_socket_path);
 l2->own_socket_path = ((void*)0);
 os_free(l2);
 return ((void*)0);
}
