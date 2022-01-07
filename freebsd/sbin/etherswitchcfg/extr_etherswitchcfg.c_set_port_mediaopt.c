
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cfg {int fd; int unit; } ;
typedef int p ;
struct TYPE_7__ {int ifr_media; } ;
struct TYPE_6__ {int* ifm_ulist; int ifm_count; } ;
struct TYPE_8__ {TYPE_2__ es_ifr; TYPE_1__ es_ifmr; int es_port; } ;
typedef TYPE_3__ etherswitch_port_t ;


 int EX_OSERR ;
 int EX_USAGE ;
 int IFMEDIAREQ_NULISTENTRIES ;
 int IFM_FDX ;
 int IFM_HDX ;
 int IFM_TYPE (int) ;
 int IOETHERSWITCHGETPORT ;
 int IOETHERSWITCHSETPORT ;
 int bzero (TYPE_3__*,int) ;
 int err (int ,char*) ;
 int errx (int ,char*,char*) ;
 int get_media_options (int ,char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_3__*) ;

__attribute__((used)) static int
set_port_mediaopt(struct cfg *cfg, int argc, char *argv[])
{
 etherswitch_port_t p;
 int ifm_ulist[IFMEDIAREQ_NULISTENTRIES];
 int options;

 if (argc < 2)
  return (-1);

 bzero(&p, sizeof(p));
 p.es_port = cfg->unit;
 p.es_ifmr.ifm_ulist = ifm_ulist;
 p.es_ifmr.ifm_count = IFMEDIAREQ_NULISTENTRIES;
 if (ioctl(cfg->fd, IOETHERSWITCHGETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHGETPORT)");
 options = get_media_options(IFM_TYPE(ifm_ulist[0]), argv[1]);
 if (options == -1)
  errx(EX_USAGE, "invalid media options \"%s\"", argv[1]);
 if (options & IFM_HDX) {
  p.es_ifr.ifr_media &= ~IFM_FDX;
  options &= ~IFM_HDX;
 }
 p.es_ifr.ifr_media |= options;
 if (ioctl(cfg->fd, IOETHERSWITCHSETPORT, &p) != 0)
  err(EX_OSERR, "ioctl(IOETHERSWITCHSETPORT)");
 return (0);
}
