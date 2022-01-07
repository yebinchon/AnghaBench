
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _PATH_UTX_ACTIVE ;
 int truncate (int ,int ) ;

__attribute__((used)) static void
utx_active_purge(void)
{

 truncate(_PATH_UTX_ACTIVE, 0);
}
