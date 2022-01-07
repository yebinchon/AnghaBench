
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pthread {int * name; } ;


 int strlcpy (char*,int *,size_t) ;

__attribute__((used)) static void
thr_get_name_np(struct pthread *thread, char *buf, size_t len)
{

 if (thread->name != ((void*)0))
  strlcpy(buf, thread->name, len);
 else if (len > 0)
  buf[0] = '\0';
}
