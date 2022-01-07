
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* bootfs; } ;
typedef TYPE_1__ libbe_handle_t ;


 char const* strrchr (char*,char) ;

const char *
be_nextboot_name(libbe_handle_t *lbh)
{

 if (*lbh->bootfs != '\0')
  return (strrchr(lbh->bootfs, '/') + sizeof(char));
 else
  return (lbh->bootfs);
}
