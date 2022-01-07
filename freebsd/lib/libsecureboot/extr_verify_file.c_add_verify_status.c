
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct verify_status {int vs_status; int vs_ino; int vs_dev; struct verify_status* vs_next; } ;
struct stat {int st_ino; int st_dev; } ;


 struct verify_status* malloc (int) ;
 struct verify_status* verified_files ;

void
add_verify_status(struct stat *stp, int status)
{
 struct verify_status *vsp;

 vsp = malloc(sizeof(struct verify_status));
 vsp->vs_next = verified_files;
 vsp->vs_dev = stp->st_dev;
 vsp->vs_ino = stp->st_ino;
 vsp->vs_status = status;
 verified_files = vsp;
}
