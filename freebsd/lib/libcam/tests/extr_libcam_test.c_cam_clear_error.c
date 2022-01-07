
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cam_errbuf ;
 int strcpy (int ,char*) ;

__attribute__((used)) static void
cam_clear_error(void)
{

 strcpy(cam_errbuf, "");
}
