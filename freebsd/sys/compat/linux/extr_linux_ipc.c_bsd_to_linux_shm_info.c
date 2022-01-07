
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shm_info {int swap_successes; int swap_attempts; int shm_swp; int shm_rss; int shm_tot; int used_ids; } ;
struct l_shm_info {int swap_successes; int swap_attempts; int shm_swp; int shm_rss; int shm_tot; int used_ids; } ;



__attribute__((used)) static void
bsd_to_linux_shm_info( struct shm_info *bpp, struct l_shm_info *lpp)
{

 lpp->used_ids = bpp->used_ids;
 lpp->shm_tot = bpp->shm_tot;
 lpp->shm_rss = bpp->shm_rss;
 lpp->shm_swp = bpp->shm_swp;
 lpp->swap_attempts = bpp->swap_attempts;
 lpp->swap_successes = bpp->swap_successes;
}
