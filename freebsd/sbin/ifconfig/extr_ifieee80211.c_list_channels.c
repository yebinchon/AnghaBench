
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int chaninfo ;
 int getchaninfo (int) ;
 int print_channels (int,int ,int,int ) ;
 int verbose ;

__attribute__((used)) static void
list_channels(int s, int allchans)
{
 getchaninfo(s);
 print_channels(s, chaninfo, allchans, verbose);
}
