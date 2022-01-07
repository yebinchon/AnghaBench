
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cam_errbuf ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static bool
cam_has_error(void)
{

 return (strlen(cam_errbuf) != 0);
}
