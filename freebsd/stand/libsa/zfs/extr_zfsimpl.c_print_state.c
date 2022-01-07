
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vdev_state_t ;


 int STATUS_FORMAT ;
 int pager_printf (int ,char*,int ) ;
 int state_name (int ) ;
 int strcat (char*,char const*) ;

__attribute__((used)) static int
print_state(int indent, const char *name, vdev_state_t state)
{
 char buf[512];
 int i;

 buf[0] = 0;
 for (i = 0; i < indent; i++)
  strcat(buf, "  ");
 strcat(buf, name);

 return (pager_printf(STATUS_FORMAT, buf, state_name(state)));
}
