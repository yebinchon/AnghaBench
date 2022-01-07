
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int machine; int sysname; int release; } ;


 int os_build ;
 int os_name ;
 int processor_arch ;
 char* strchr (int ,char) ;
 int uname (TYPE_1__*) ;
 TYPE_1__ uts_buf ;

__attribute__((used)) static void
kvp_get_os_info(void)
{
 char *p;

 uname(&uts_buf);
 os_build = uts_buf.release;
 os_name = uts_buf.sysname;
 processor_arch = uts_buf.machine;





 p = strchr(os_build, '-');
 if (p) {
  *p = '\0';
 }




 return;
}
