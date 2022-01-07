
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SERIAL_GETBAUD ;
 int SERIAL_GETCABLE ;
 int SERIAL_GETCABLEN ;
 int SERIAL_GETCFG ;
 int SERIAL_GETCLK ;
 int SERIAL_GETCRC4 ;
 int SERIAL_GETDEBUG ;
 int SERIAL_GETDIR ;
 int SERIAL_GETDPLL ;
 int SERIAL_GETHIGAIN ;
 int SERIAL_GETINVCLK ;
 int SERIAL_GETINVRCLK ;
 int SERIAL_GETINVTCLK ;
 int SERIAL_GETKEEPALIVE ;
 int SERIAL_GETLCODE ;
 int SERIAL_GETLEVEL ;
 int SERIAL_GETLOOP ;
 int SERIAL_GETMONITOR ;
 int SERIAL_GETMTU ;
 int SERIAL_GETNRZI ;
 int SERIAL_GETPHONY ;
 int SERIAL_GETPORT ;
 int SERIAL_GETPROTO ;
 int SERIAL_GETRLOOP ;
 int SERIAL_GETRQLEN ;
 int SERIAL_GETSCRAMBLER ;
 int SERIAL_GETSUBCHAN ;
 int SERIAL_GETTIMESLOTS ;
 int SERIAL_GETUNFRAM ;
 int SERIAL_GETUSE16 ;
 scalar_t__ aflag ;
 char* chan_name ;
 char* format_timeslots (long) ;
 scalar_t__ ioctl (int,int ,...) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_chan (int fd)
{
 char protocol [8];
 char cfg;
 int loop, dpll, nrzi, invclk, clk, higain, phony, use16, crc4;
 int level, keepalive, debug, port, invrclk, invtclk, unfram, monitor;
 int cable, dir, scrambler, ami, mtu;
 int cablen, rloop, rqlen;
 long baud, timeslots, subchan;
 int protocol_valid, baud_valid, loop_valid, use16_valid, crc4_valid;
 int dpll_valid, nrzi_valid, invclk_valid, clk_valid, phony_valid;
 int timeslots_valid, subchan_valid, higain_valid, level_valid;
 int keepalive_valid, debug_valid, cfg_valid, port_valid;
 int invrclk_valid, invtclk_valid, unfram_valid, monitor_valid;
 int cable_valid, dir_valid, scrambler_valid, ami_valid, mtu_valid;
 int cablen_valid, rloop_valid, rqlen_valid;

 protocol_valid = ioctl (fd, SERIAL_GETPROTO, &protocol) >= 0;
 cfg_valid = ioctl (fd, SERIAL_GETCFG, &cfg) >= 0;
 baud_valid = ioctl (fd, SERIAL_GETBAUD, &baud) >= 0;
 loop_valid = ioctl (fd, SERIAL_GETLOOP, &loop) >= 0;
 dpll_valid = ioctl (fd, SERIAL_GETDPLL, &dpll) >= 0;
 nrzi_valid = ioctl (fd, SERIAL_GETNRZI, &nrzi) >= 0;
 invclk_valid = ioctl (fd, SERIAL_GETINVCLK, &invclk) >= 0;
 invrclk_valid = ioctl (fd, SERIAL_GETINVRCLK, &invrclk) >= 0;
 invtclk_valid = ioctl (fd, SERIAL_GETINVTCLK, &invtclk) >= 0;
 clk_valid = ioctl (fd, SERIAL_GETCLK, &clk) >= 0;
 timeslots_valid = ioctl (fd, SERIAL_GETTIMESLOTS, &timeslots) >= 0;
 subchan_valid = ioctl (fd, SERIAL_GETSUBCHAN, &subchan) >= 0;
 higain_valid = ioctl (fd, SERIAL_GETHIGAIN, &higain) >= 0;
 phony_valid = ioctl (fd, SERIAL_GETPHONY, &phony) >= 0;
 unfram_valid = ioctl (fd, SERIAL_GETUNFRAM, &unfram) >= 0;
 monitor_valid = ioctl (fd, SERIAL_GETMONITOR, &monitor) >= 0;
 use16_valid = ioctl (fd, SERIAL_GETUSE16, &use16) >= 0;
 crc4_valid = ioctl (fd, SERIAL_GETCRC4, &crc4) >= 0;
 ami_valid = ioctl (fd, SERIAL_GETLCODE, &ami) >= 0;
 level_valid = ioctl (fd, SERIAL_GETLEVEL, &level) >= 0;
 keepalive_valid = ioctl (fd, SERIAL_GETKEEPALIVE, &keepalive) >= 0;
 debug_valid = ioctl (fd, SERIAL_GETDEBUG, &debug) >= 0;
 port_valid = ioctl (fd, SERIAL_GETPORT, &port) >= 0;
 cable_valid = ioctl (fd, SERIAL_GETCABLE, &cable) >= 0;
 dir_valid = ioctl (fd, SERIAL_GETDIR, &dir) >= 0;
 scrambler_valid = ioctl (fd, SERIAL_GETSCRAMBLER, &scrambler) >= 0;
 cablen_valid = ioctl (fd, SERIAL_GETCABLEN, &cablen) >= 0;
 rloop_valid = ioctl (fd, SERIAL_GETRLOOP, &rloop) >= 0;
 mtu_valid = ioctl (fd, SERIAL_GETMTU, &mtu) >= 0;
 rqlen_valid = ioctl (fd, SERIAL_GETRQLEN, &rqlen) >= 0;

 printf ("%s", chan_name);
 if (port_valid)
  switch (port) {
  case 0: printf (" (rs232)"); break;
  case 1: printf (" (v35)"); break;
  case 2: printf (" (rs530)"); break;
  }
 else if (cable_valid)
  switch (cable) {
  case 0: printf (" (rs232)"); break;
  case 1: printf (" (v35)"); break;
  case 2: printf (" (rs530)"); break;
  case 3: printf (" (x21)"); break;
  case 4: printf (" (rs485)"); break;
  case 9: printf (" (no cable)"); break;
  }
 if (debug_valid && debug)
  printf (" debug=%d", debug);
 if (protocol_valid && *protocol)
  printf (" %.8s", protocol);
 else
  printf (" idle");
 if (cablen_valid)
  printf (" cablen=%s", cablen ? "on" : "off");
 if (keepalive_valid)
  printf (" keepalive=%s", keepalive ? "on" : "off");

 if (cfg_valid)
  switch (cfg) {
  case 'a' : printf (" cfg=A"); break;
  case 'b' : printf (" cfg=B"); break;
  case 'c' : printf (" cfg=C"); break;
  case 'd' : printf (" cfg=D"); break;
  default : printf (" cfg=unknown");
  }
 if (dir_valid)
  printf (" dir=%d", dir);

 if (baud_valid) {
  if (baud)
   printf (" %ld", baud);
  else
   printf (" extclock");
 }
 if (mtu_valid)
  printf (" mtu=%d", mtu);

 if (aflag && rqlen_valid)
  printf (" rqlen=%d", rqlen);

 if (clk_valid)
  switch (clk) {
  case 133: printf (" syn=int"); break;
  case 132: printf (" syn=rcv"); break;
  case 131: printf (" syn=rcv0"); break;
  case 130: printf (" syn=rcv1"); break;
  case 129: printf (" syn=rcv2"); break;
  case 128: printf (" syn=rcv3"); break;
  default: printf (" syn=%d", clk); break;
  }

 if (dpll_valid)
  printf (" dpll=%s", dpll ? "on" : "off");
 if (nrzi_valid)
  printf (" nrzi=%s", nrzi ? "on" : "off");
 if (invclk_valid)
  printf (" invclk=%s", invclk ? "on" : "off");
 if (invrclk_valid)
  printf (" invrclk=%s", invrclk ? "on" : "off");
 if (invtclk_valid)
  printf (" invtclk=%s", invtclk ? "on" : "off");
 if (unfram_valid)
  printf (" unfram=%s", unfram ? "on" : "off");
 if (use16_valid)
  printf (" use16=%s", use16 ? "on" : "off");
 if (aflag) {
  if (crc4_valid)
   printf (" crc4=%s", crc4 ? "on" : "off");
  if (higain_valid)
   printf (" higain=%s", higain ? "on" : "off");
  if (monitor_valid)
   printf (" monitor=%s", monitor ? "on" : "off");
  if (phony_valid)
   printf (" phony=%s", phony ? "on" : "off");
  if (scrambler_valid)
   printf (" scrambler=%s", scrambler ? "on" : "off");
  if (loop_valid)
   printf (" loop=%s", loop ? "on" : "off");
  if (rloop_valid)
   printf (" rloop=%s", rloop ? "on" : "off");
  if (ami_valid)
   printf (" ami=%s", ami ? "on" : "off");
 }
 if (timeslots_valid)
  printf (" ts=%s", format_timeslots (timeslots));
 if (subchan_valid)
  printf (" pass=%s", format_timeslots (subchan));
 if (level_valid)
  printf (" (level=-%.1fdB)", level / 10.0);
 printf ("\n");
}
