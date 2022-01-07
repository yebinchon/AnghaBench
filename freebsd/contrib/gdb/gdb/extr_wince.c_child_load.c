
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int upload_to_device (char*,char*) ;

__attribute__((used)) static void
child_load (char *file, int from_tty)
{
  upload_to_device (file, file);
}
