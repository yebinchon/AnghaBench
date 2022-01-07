
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SEEK_SET ;
 int * fp ;
 int fseek (int *,int ,int ) ;

__attribute__((used)) static void
setauevent_locked(void)
{

 if (fp != ((void*)0))
  fseek(fp, 0, SEEK_SET);
}
