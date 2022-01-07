
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct uboot_softc {int sc_rxbuf; int sc_handle; } ;
struct netif {struct uboot_softc* nif_devdata; } ;
struct iodesc {struct netif* io_netif; } ;
typedef int ssize_t ;


 int ETHER_ALIGN ;
 int getsecs () ;
 char* malloc (int) ;
 int memcpy (char*,int ,int) ;
 int printf (char*,...) ;
 int ub_dev_recv (int ,int ,size_t,int*) ;

__attribute__((used)) static ssize_t
net_get(struct iodesc *desc, void **pkt, time_t timeout)
{
 struct netif *nif = desc->io_netif;
 struct uboot_softc *sc = nif->nif_devdata;
 time_t t;
 int err, rlen;
 size_t len;
 char *buf;




 t = getsecs();
 len = sizeof(sc->sc_rxbuf);
 do {
  err = ub_dev_recv(sc->sc_handle, sc->sc_rxbuf, len, &rlen);

  if (err != 0) {
   printf("net_get: ub_dev_recv() failed, error=%d\n",
       err);
   rlen = 0;
   break;
  }
 } while ((rlen == -1 || rlen == 0) && (getsecs() - t < timeout));





 if (rlen > 0) {
  buf = malloc(rlen + ETHER_ALIGN);
  if (buf == ((void*)0))
   return (-1);
  memcpy(buf + ETHER_ALIGN, sc->sc_rxbuf, rlen);
  *pkt = buf;
  return ((ssize_t)rlen);
 }

 return (-1);
}
