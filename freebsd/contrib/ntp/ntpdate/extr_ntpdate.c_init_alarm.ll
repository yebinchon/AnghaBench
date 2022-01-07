; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_init_alarm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/ntpdate/extr_ntpdate.c_init_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_12__ = type { i32, i64 }

@alarm_flag = common dso_local global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@alarming = common dso_local global i64 0, align 8
@TIMER_HZ = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@SE_PRIVILEGE_ENABLED = common dso_local global i32 0, align 4
@SE_SYSTEMTIME_NAME = common dso_local global i32 0, align 4
@TARGET_RESOLUTION = common dso_local global i32 0, align 4
@TIMERR_NOERROR = common dso_local global i64 0, align 8
@TIME_PERIODIC = common dso_local global i32 0, align 4
@TOKEN_ADJUST_PRIVILEGES = common dso_local global i32 0, align 4
@TOKEN_QUERY = common dso_local global i32 0, align 4
@callTimeEndPeriod = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@ntpdate_timerid = common dso_local global i32 0, align 4
@simple_query = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@wTimerRes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @init_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_alarm() #0 {
  %1 = alloca %struct.itimerval, align 8
  store i64 0, i64* @alarm_flag, align 8
  %2 = load i32, i32* @SIGALRM, align 4
  %3 = load i64, i64* @alarming, align 8
  %4 = call i32 @signal_no_reset(i32 %2, i64 %3)
  %5 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %5, i32 0, i32 1
  store i64 0, i64* %6, align 8
  %7 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %7, i32 0, i32 1
  store i64 0, i64* %8, align 8
  %9 = load i32, i32* @TIMER_HZ, align 4
  %10 = sdiv i32 1000000, %9
  %11 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @TIMER_HZ, align 4
  %14 = shl i32 %13, 1
  %15 = sdiv i32 1000000, %14
  %16 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load i32, i32* @ITIMER_REAL, align 4
  %19 = call i32 @setitimer(i32 %18, %struct.itimerval* %1, i32* null)
  ret void
}

declare dso_local i32 @signal_no_reset(i32, i64) #1

declare dso_local i32 @setitimer(i32, %struct.itimerval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
