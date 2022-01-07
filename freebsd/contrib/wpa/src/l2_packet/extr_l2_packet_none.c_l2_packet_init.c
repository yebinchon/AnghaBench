
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct l2_packet_data {void (* rx_callback ) (void*,int const*,int const*,size_t) ;int l2_hdr; int fd; void* rx_callback_ctx; int ifname; } ;


 int eloop_register_read_sock (int,int ,struct l2_packet_data*,int *) ;
 int l2_packet_receive ;
 int os_strlcpy (int ,char const*,int) ;
 struct l2_packet_data* os_zalloc (int) ;

struct l2_packet_data * l2_packet_init(
 const char *ifname, const u8 *own_addr, unsigned short protocol,
 void (*rx_callback)(void *ctx, const u8 *src_addr,
       const u8 *buf, size_t len),
 void *rx_callback_ctx, int l2_hdr)
{
 struct l2_packet_data *l2;

 l2 = os_zalloc(sizeof(struct l2_packet_data));
 if (l2 == ((void*)0))
  return ((void*)0);
 os_strlcpy(l2->ifname, ifname, sizeof(l2->ifname));
 l2->rx_callback = rx_callback;
 l2->rx_callback_ctx = rx_callback_ctx;
 l2->l2_hdr = l2_hdr;




 l2->fd = -1;
 if (l2->fd >= 0)
  eloop_register_read_sock(l2->fd, l2_packet_receive, l2, ((void*)0));

 return l2;
}
