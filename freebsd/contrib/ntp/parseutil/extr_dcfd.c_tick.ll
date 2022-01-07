; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/parseutil/extr_dcfd.c_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tick.last_notice = internal global i64 0, align 8
@SIGALRM = common dso_local global i32 0, align 4
@ADJINTERVAL = common dso_local global i32 0, align 4
@ticks = common dso_local global i32 0, align 4
@last_sync = common dso_local global i64 0, align 8
@MAX_UNSYNC = common dso_local global i64 0, align 8
@sync_state = common dso_local global i64 0, align 8
@SYNC = common dso_local global i64 0, align 8
@NO_SYNC = common dso_local global i64 0, align 8
@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DCF77 reception lost (timeout)\00", align 1
@NOTICE_INTERVAL = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"still not synchronized to DCF77 - check receiver/signal\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tick(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SIGALRM, align 4
  %4 = call i32 @signal(i32 %3, void (i32)* @tick)
  %5 = call i32 (...) @periodic_adjust()
  %6 = load i32, i32* @ADJINTERVAL, align 4
  %7 = shl i32 1, %6
  %8 = load i32, i32* @ticks, align 4
  %9 = add nsw i32 %8, %7
  store i32 %9, i32* @ticks, align 4
  %10 = load i32, i32* @ticks, align 4
  %11 = sext i32 %10 to i64
  %12 = load i64, i64* @last_sync, align 8
  %13 = sub nsw i64 %11, %12
  %14 = load i64, i64* @MAX_UNSYNC, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %41

16:                                               ; preds = %1
  %17 = load i64, i64* @sync_state, align 8
  %18 = load i64, i64* @SYNC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %16
  %21 = load i64, i64* @NO_SYNC, align 8
  store i64 %21, i64* @sync_state, align 8
  %22 = load i32, i32* @LOG_INFO, align 4
  %23 = call i32 @syslog(i32 %22, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ticks, align 4
  %25 = sext i32 %24 to i64
  store i64 %25, i64* @tick.last_notice, align 8
  br label %40

26:                                               ; preds = %16
  %27 = load i32, i32* @ticks, align 4
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @tick.last_notice, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* @NOTICE_INTERVAL, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %26
  %35 = load i32, i32* @LOG_NOTICE, align 4
  %36 = call i32 @syslog(i32 %35, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @ticks, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* @tick.last_notice, align 8
  br label %39

39:                                               ; preds = %34, %26
  br label %40

40:                                               ; preds = %39, %20
  br label %41

41:                                               ; preds = %40, %1
  %42 = load i32, i32* @ADJINTERVAL, align 4
  %43 = shl i32 1, %42
  %44 = call i32 @alarm(i32 %43)
  ret void
}

declare dso_local i32 @signal(i32, void (i32)*) #1

declare dso_local i32 @periodic_adjust(...) #1

declare dso_local i32 @syslog(i32, i8*) #1

declare dso_local i32 @alarm(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
