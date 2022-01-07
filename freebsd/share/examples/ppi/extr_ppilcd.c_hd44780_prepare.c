
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUTOFEED ;
 int EX_IOERR ;
 int EX_OSFILE ;
 int EX_USAGE ;
 int O_RDWR ;
 int PPIGCTRL ;
 int SELECTIN ;
 int STROBE ;
 int debug (int,char*,int) ;
 int err (int ,char*,...) ;
 int errx (int ,char*,char) ;
 int hd_blink ;
 int hd_cbits ;
 int hd_cursor ;
 int hd_fd ;
 int hd_font ;
 int hd_lines ;
 int hd_sctrl (int) ;
 int hd_sdata (int ) ;
 scalar_t__ ioctl (int,int ,int*) ;
 int open (char*,int ,int ) ;

__attribute__((used)) static void
hd44780_prepare(char *devname, char *options)
{
    char *cp = options;

    if ((hd_fd = open(devname, O_RDWR, 0)) == -1)
 err(EX_OSFILE, "can't open '%s'", devname);


    while (cp && *cp) {
 switch (*cp++) {
 case '1':
     hd_lines = 1;
     break;
 case 'B':
     hd_blink = 1;
     break;
 case 'C':
     hd_cursor = 1;
     break;
 case 'F':
     hd_font = 1;
     break;
 default:
     errx(EX_USAGE, "hd44780: unknown option code '%c'", *(cp-1));
 }
    }


    if (ioctl(hd_fd, PPIGCTRL, &hd_cbits))
 err(EX_IOERR, "ioctl PPIGCTRL failed (not a ppi device?)");
    hd_cbits &= ~(STROBE | SELECTIN | AUTOFEED);
    debug(2, "static control bits 0x%x", hd_cbits);
    hd_sctrl(STROBE);
    hd_sdata(0);

}
