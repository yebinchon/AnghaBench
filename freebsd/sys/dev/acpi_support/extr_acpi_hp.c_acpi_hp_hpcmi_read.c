
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct uio {int uio_resid; TYPE_2__* uio_td; } ;
struct cdev {struct acpi_hp_softc* si_drv1; } ;
struct acpi_hp_softc {scalar_t__ hpcmi_open_pid; int hpcmi_bufptr; int cmi_order_size; scalar_t__ has_cmi; int cmi_detail; int hpcmi_sbuf; TYPE_3__* cmi_order; int wmi_dev; } ;
typedef scalar_t__ UINT8 ;
typedef scalar_t__ UINT32 ;
struct TYPE_6__ {scalar_t__ sequence; scalar_t__ instance; } ;
struct TYPE_5__ {TYPE_1__* td_proc; } ;
struct TYPE_4__ {scalar_t__ p_pid; } ;


 int ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE ;
 int ACPI_HP_WMI_CMI_GUID ;
 int ACPI_SERIAL_BEGIN (int ) ;
 int ACPI_SERIAL_END (int ) ;
 int EBADF ;
 int ENOMEM ;
 scalar_t__ acpi_hp_get_cmi_block (int ,int ,scalar_t__,char*,int,scalar_t__*,int) ;
 int hp ;
 int min (int ,scalar_t__) ;
 scalar_t__ sbuf_data (int *) ;
 int sbuf_delete (int *) ;
 int sbuf_done (int *) ;
 int sbuf_finish (int *) ;
 scalar_t__ sbuf_len (int *) ;
 int sbuf_printf (int *,char*,char*) ;
 int uiomove (scalar_t__,int,struct uio*) ;

__attribute__((used)) static int
acpi_hp_hpcmi_read(struct cdev *dev, struct uio *buf, int flag)
{
 struct acpi_hp_softc *sc;
 int pos, i, l, ret;
 UINT8 instance;
 UINT8 maxInstance;
 UINT32 sequence;
 int linesize = 1025;
 char line[linesize];

 if (dev == ((void*)0) || dev->si_drv1 == ((void*)0))
  return (EBADF);
 sc = dev->si_drv1;

 ACPI_SERIAL_BEGIN(hp);
 if (sc->hpcmi_open_pid != buf->uio_td->td_proc->p_pid
     || sc->hpcmi_bufptr == -1) {
  ret = EBADF;
 }
 else {
  if (!sbuf_done(&sc->hpcmi_sbuf)) {
   if (sc->cmi_order_size < 0) {
    maxInstance = sc->has_cmi;
    if (!(sc->cmi_detail &
        ACPI_HP_CMI_DETAIL_SHOW_MAX_INSTANCE) &&
        maxInstance > 0) {
     maxInstance--;
    }
    sc->cmi_order_size = 0;
    for (instance = 0; instance < maxInstance;
        ++instance) {
     if (acpi_hp_get_cmi_block(sc->wmi_dev,
      ACPI_HP_WMI_CMI_GUID, instance,
      line, linesize, &sequence,
      sc->cmi_detail)) {
      instance = maxInstance;
     }
     else {
      pos = sc->cmi_order_size;
      for (i=0;
        i<sc->cmi_order_size && i<127;
           ++i) {
    if (sc->cmi_order[i].sequence > sequence) {
        pos = i;
        break;
       }
      }
      for (i=sc->cmi_order_size;
          i>pos;
          --i) {
      sc->cmi_order[i].sequence =
          sc->cmi_order[i-1].sequence;
      sc->cmi_order[i].instance =
          sc->cmi_order[i-1].instance;
      }
      sc->cmi_order[pos].sequence =
          sequence;
      sc->cmi_order[pos].instance =
          instance;
      sc->cmi_order_size++;
     }
    }
   }
   for (i=0; i<sc->cmi_order_size; ++i) {
    if (!acpi_hp_get_cmi_block(sc->wmi_dev,
        ACPI_HP_WMI_CMI_GUID,
        sc->cmi_order[i].instance, line, linesize,
        &sequence, sc->cmi_detail)) {
     sbuf_printf(&sc->hpcmi_sbuf, "%s\n", line);
    }
   }
   sbuf_finish(&sc->hpcmi_sbuf);
  }
  if (sbuf_len(&sc->hpcmi_sbuf) <= 0) {
   sbuf_delete(&sc->hpcmi_sbuf);
   sc->hpcmi_bufptr = -1;
   sc->hpcmi_open_pid = 0;
   ret = ENOMEM;
  } else {
   l = min(buf->uio_resid, sbuf_len(&sc->hpcmi_sbuf) -
       sc->hpcmi_bufptr);
   ret = (l > 0)?uiomove(sbuf_data(&sc->hpcmi_sbuf) +
       sc->hpcmi_bufptr, l, buf) : 0;
   sc->hpcmi_bufptr += l;
  }
 }
 ACPI_SERIAL_END(hp);

 return (ret);
}
