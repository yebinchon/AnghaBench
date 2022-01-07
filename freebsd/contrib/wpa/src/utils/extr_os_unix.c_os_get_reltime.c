
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint64_t ;
struct timespec {int tv_nsec; void* tv_sec; } ;
struct os_reltime {int usec; void* sec; } ;
struct TYPE_3__ {void* denom; void* numer; int member_1; int member_0; } ;
typedef TYPE_1__ mach_timebase_info_data_t ;
typedef int clockid_t ;





 scalar_t__ KERN_SUCCESS ;
 void* NSEC_PER_SEC ;
 void* NSEC_PER_USEC ;
 scalar_t__ TEST_FAIL () ;
 int clock_gettime (int,struct timespec*) ;
 void* mach_absolute_time () ;
 scalar_t__ mach_timebase_info (TYPE_1__*) ;

int os_get_reltime(struct os_reltime *t)
{


 static clockid_t clock_id = 130;





 struct timespec ts;
 int res;

 if (TEST_FAIL())
  return -1;

 while (1) {
  res = clock_gettime(clock_id, &ts);
  if (res == 0) {
   t->sec = ts.tv_sec;
   t->usec = ts.tv_nsec / 1000;
   return 0;
  }
  switch (clock_id) {

  case 130:
   clock_id = 129;
   break;


  case 129:
   clock_id = 128;
   break;

  case 128:
   return -1;
  }
 }
}
