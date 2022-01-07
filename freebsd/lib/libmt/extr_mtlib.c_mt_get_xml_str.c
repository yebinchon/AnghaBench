
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtextget {char* status_xml; size_t alloc_len; scalar_t__ status; } ;
typedef int extget ;
typedef int caddr_t ;


 scalar_t__ MT_EXT_GET_NEED_MORE_SPACE ;
 scalar_t__ MT_EXT_GET_OK ;
 int bzero (struct mtextget*,int) ;
 int free (char*) ;
 int ioctl (int,unsigned long,int ) ;
 char* malloc (size_t) ;

int
mt_get_xml_str(int mtfd, unsigned long cmd, char **xml_str)
{
 size_t alloc_len = 32768;
 struct mtextget extget;
 int error;

 *xml_str = ((void*)0);

 for (;;) {
  bzero(&extget, sizeof(extget));
  *xml_str = malloc(alloc_len);
  if (*xml_str == ((void*)0))
   return (-1);
  extget.status_xml = *xml_str;
  extget.alloc_len = alloc_len;

  error = ioctl(mtfd, cmd, (caddr_t)&extget);
  if (error == 0 && extget.status == MT_EXT_GET_OK)
   break;

  free(*xml_str);
  *xml_str = ((void*)0);

  if (error != 0 || extget.status != MT_EXT_GET_NEED_MORE_SPACE)
   return (-1);


  alloc_len *= 2;
 }
 return (0);
}
