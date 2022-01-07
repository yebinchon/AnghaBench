
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int st_size; } ;


 int close (int ) ;
 char* dbm_base ;
 int ifd ;
 int munmap (char*,int ) ;
 TYPE_1__ st ;
 int warn (char*) ;

void
dbm_unmap(void)
{
 if (munmap(dbm_base, st.st_size) == -1)
  warn("dbm_unmap: munmap");
 if (close(ifd) == -1)
  warn("dbm_unmap: close");
 dbm_base = (char *)-1;
}
