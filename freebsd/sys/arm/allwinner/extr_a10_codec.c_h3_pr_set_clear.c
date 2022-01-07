
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct a10codec_info {int dummy; } ;


 int h3_pr_read (struct a10codec_info*,int) ;
 int h3_pr_write (struct a10codec_info*,int,int) ;

__attribute__((used)) static void
h3_pr_set_clear(struct a10codec_info *sc, u_int addr, u_int set, u_int clr)
{
 u_int old, new;

 old = h3_pr_read(sc, addr);
 new = set | (old & ~clr);
 h3_pr_write(sc, addr, new);
}
