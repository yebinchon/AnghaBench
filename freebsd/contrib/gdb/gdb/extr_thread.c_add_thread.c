
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_info {struct thread_info* next; scalar_t__ num; int ptid; } ;
typedef int ptid_t ;


 scalar_t__ highest_thread_num ;
 int memset (struct thread_info*,int ,int) ;
 struct thread_info* thread_list ;
 scalar_t__ xmalloc (int) ;

struct thread_info *
add_thread (ptid_t ptid)
{
  struct thread_info *tp;

  tp = (struct thread_info *) xmalloc (sizeof (*tp));
  memset (tp, 0, sizeof (*tp));
  tp->ptid = ptid;
  tp->num = ++highest_thread_num;
  tp->next = thread_list;
  thread_list = tp;
  return tp;
}
