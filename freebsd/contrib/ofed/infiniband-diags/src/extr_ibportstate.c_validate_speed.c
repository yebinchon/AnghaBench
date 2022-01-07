
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IBWARN (char*,int) ;

__attribute__((used)) static void validate_speed(int speed, int peerspeed, int lsa)
{
 if ((speed & peerspeed & 0x4)) {
  if (lsa != 4)
   IBWARN
       ("Peer ports operating at active speed %d rather than 4 (10.0 Gbps)",
        lsa);
 } else if ((speed & peerspeed & 0x2)) {
  if (lsa != 2)
   IBWARN
       ("Peer ports operating at active speed %d rather than 2 (5.0 Gbps)",
        lsa);
 } else if ((speed & peerspeed & 0x1)) {
  if (lsa != 1)
   IBWARN
       ("Peer ports operating at active speed %d rather than 1 (2.5 Gbps)",
        lsa);
 }
}
