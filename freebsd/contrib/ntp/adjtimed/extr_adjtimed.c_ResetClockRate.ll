; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_ResetClockRate.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/adjtimed/extr_adjtimed.c_ResetClockRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.itimerval = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }

@ITIMER_REAL = common dso_local global i32 0, align 4
@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"adjtimed: resetting the clock\00", align 1
@sysdebug = common dso_local global i32 0, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"resetting the clock\00", align 1
@default_rate = common dso_local global i64 0, align 8
@LOG_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"set clock rate: %m\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"adjtimed: set clock rate\00", align 1
@oldrate = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ResetClockRate() #0 {
  %1 = alloca %struct.itimerval, align 8
  %2 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = getelementptr inbounds %struct.itimerval, %struct.itimerval* %1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = load i32, i32* @ITIMER_REAL, align 4
  %7 = call i32 @setitimer(i32 %6, %struct.itimerval* %1, %struct.itimerval* null)
  %8 = load i32, i32* @verbose, align 4
  %9 = icmp sgt i32 %8, 2
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 @puts(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %10, %0
  %13 = load i32, i32* @sysdebug, align 4
  %14 = icmp sgt i32 %13, 2
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i32, i32* @LOG_INFO, align 4
  %17 = call i32 @msyslog(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %18

18:                                               ; preds = %15, %12
  %19 = call i64 (...) @GetClockRate()
  %20 = load i64, i64* @default_rate, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i64, i64* @default_rate, align 8
  %24 = call i32 @SetClockRate(i64 %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @LOG_ERR, align 4
  %28 = call i32 @msyslog(i32 %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %29 = call i32 @perror(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %30

30:                                               ; preds = %26, %22
  br label %31

31:                                               ; preds = %30, %18
  store double 0.000000e+00, double* @oldrate, align 8
  ret void
}

declare dso_local i32 @setitimer(i32, %struct.itimerval*, %struct.itimerval*) #1

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @msyslog(i32, i8*) #1

declare dso_local i64 @GetClockRate(...) #1

declare dso_local i32 @SetClockRate(i64) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
