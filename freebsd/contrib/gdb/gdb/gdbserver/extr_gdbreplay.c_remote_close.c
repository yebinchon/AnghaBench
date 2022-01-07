
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int ) ;
 int remote_desc ;

__attribute__((used)) static void
remote_close (void)
{
  close (remote_desc);
}
