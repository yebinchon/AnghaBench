
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TAILQ_INIT (int *) ;
 int filter_list ;

__attribute__((used)) static void
auditfilterd_init(void)
{

 TAILQ_INIT(&filter_list);
}
