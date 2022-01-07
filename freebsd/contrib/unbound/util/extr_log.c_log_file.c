
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int lock_quick_lock (int *) ;
 int lock_quick_unlock (int *) ;
 int log_lock ;
 int * logfile ;

void log_file(FILE *f)
{
 lock_quick_lock(&log_lock);
 logfile = f;
 lock_quick_unlock(&log_lock);
}
