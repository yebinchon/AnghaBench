
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct rsb_softc {scalar_t__ type; int busy; int cur_addr; int * msg; scalar_t__ status; int mtx; } ;
struct iic_msg {int flags; int slave; int len; int buf; } ;
typedef int device_t ;


 scalar_t__ A23_RSB ;
 int CMD_RD16 ;
 int CMD_RD32 ;
 int CMD_RD8 ;
 int CMD_WR16 ;
 int CMD_WR32 ;
 int CMD_WR8 ;
 int DLEN_READ ;
 int EINVAL ;
 int IIC_M_RD ;
 int RSB_CMD ;
 int RSB_DADDR0 ;
 int RSB_DATA0 ;
 int RSB_DLEN ;
 int RSB_INTS ;
 int RSB_LOCK (struct rsb_softc*) ;
 int RSB_MAXLEN ;
 int RSB_READ (struct rsb_softc*,int ) ;
 int RSB_UNLOCK (struct rsb_softc*) ;
 int RSB_WRITE (struct rsb_softc*,int ,int) ;
 struct rsb_softc* device_get_softc (int ) ;
 int mtx_sleep (struct rsb_softc*,int *,int ,char*,int ) ;
 int rsb_decode (int,int ,int,int ) ;
 int rsb_encode (int ,int,int ) ;
 int rsb_set_rta (int ,int) ;
 int rsb_start (int ) ;
 int wakeup (struct rsb_softc*) ;

__attribute__((used)) static int
rsb_transfer(device_t dev, struct iic_msg *msgs, uint32_t nmsgs)
{
 struct rsb_softc *sc;
 uint32_t daddr[2], data[2], dlen;
 uint16_t device_addr;
 uint8_t cmd;
 int error;

 sc = device_get_softc(dev);
 if (nmsgs != 2 || (msgs[0].flags & IIC_M_RD) == IIC_M_RD ||
     (msgs[0].slave >> 1) != (msgs[1].slave >> 1) ||
     msgs[0].len != 1 || msgs[1].len > RSB_MAXLEN)
  return (EINVAL);


 if (sc->type == A23_RSB) {
  if ((msgs[1].flags & IIC_M_RD) != 0) {
   switch (msgs[1].len) {
   case 1:
    cmd = CMD_RD8;
    break;
   case 2:
    cmd = CMD_RD16;
    break;
   case 4:
    cmd = CMD_RD32;
    break;
   default:
    return (EINVAL);
   }
  } else {
   switch (msgs[1].len) {
   case 1:
    cmd = CMD_WR8;
    break;
   case 2:
    cmd = CMD_WR16;
    break;
   case 4:
    cmd = CMD_WR32;
    break;
   default:
    return (EINVAL);
   }
  }
 }

 RSB_LOCK(sc);
 while (sc->busy)
  mtx_sleep(sc, &sc->mtx, 0, "i2cbuswait", 0);
 sc->busy = 1;
 sc->status = 0;


 if (sc->type == A23_RSB) {
  device_addr = msgs[0].slave >> 1;
  if (sc->cur_addr != device_addr) {
   error = rsb_set_rta(dev, device_addr);
   if (error != 0)
    goto done;
   sc->cur_addr = device_addr;
   sc->status = 0;
  }
 }


 RSB_WRITE(sc, RSB_INTS, RSB_READ(sc, RSB_INTS));


 daddr[0] = rsb_encode(msgs[0].buf, msgs[0].len, 0);
 RSB_WRITE(sc, RSB_DADDR0, daddr[0]);


 if ((msgs[1].flags & IIC_M_RD) == 0) {
  data[0] = rsb_encode(msgs[1].buf, msgs[1].len, 0);
  RSB_WRITE(sc, RSB_DATA0, data[0]);
 }


 if (sc->type == A23_RSB)
  RSB_WRITE(sc, RSB_CMD, cmd);


 dlen = msgs[0].len - 1;
 if ((msgs[1].flags & IIC_M_RD) == IIC_M_RD)
  dlen |= DLEN_READ;
 RSB_WRITE(sc, RSB_DLEN, dlen);


 error = rsb_start(dev);
 if (error != 0)
  goto done;


 if ((msgs[1].flags & IIC_M_RD) == IIC_M_RD) {
  data[0] = RSB_READ(sc, RSB_DATA0);
  rsb_decode(data[0], msgs[1].buf, msgs[1].len, 0);
 }

done:
 sc->msg = ((void*)0);
 sc->busy = 0;
 wakeup(sc);
 RSB_UNLOCK(sc);

 return (error);
}
