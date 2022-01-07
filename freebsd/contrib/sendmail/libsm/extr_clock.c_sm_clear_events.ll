; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_clock.c_sm_clear_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/sendmail/libsm/extr_clock.c_sm_clear_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_8__* }

@SmEventQueue = common dso_local global %struct.TYPE_8__* null, align 8
@SIGALRM = common dso_local global i32 0, align 4
@SmFreeEventList = common dso_local global %struct.TYPE_8__* null, align 8
@ITIMER_REAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sm_clear_events() #0 {
  %1 = alloca %struct.TYPE_8__*, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @alarm(i32 0)
  %4 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SmEventQueue, align 8
  %5 = icmp eq %struct.TYPE_8__* %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  br label %33

7:                                                ; preds = %0
  %8 = load i32, i32* @SIGALRM, align 4
  %9 = call i32 @sm_blocksignal(i32 %8)
  store i32 %9, i32* %2, align 4
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SmEventQueue, align 8
  store %struct.TYPE_8__* %10, %struct.TYPE_8__** %1, align 8
  br label %11

11:                                               ; preds = %17, %7
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = icmp ne %struct.TYPE_8__* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  br label %17

17:                                               ; preds = %16
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  store %struct.TYPE_8__* %20, %struct.TYPE_8__** %1, align 8
  br label %11

21:                                               ; preds = %11
  %22 = call i32 (...) @ENTER_CRITICAL()
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SmFreeEventList, align 8
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %1, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  store %struct.TYPE_8__* %23, %struct.TYPE_8__** %25, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** @SmEventQueue, align 8
  store %struct.TYPE_8__* %26, %struct.TYPE_8__** @SmFreeEventList, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** @SmEventQueue, align 8
  %27 = call i32 (...) @LEAVE_CRITICAL()
  %28 = load i32, i32* %2, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %21
  %31 = load i32, i32* @SIGALRM, align 4
  %32 = call i32 @sm_releasesignal(i32 %31)
  br label %33

33:                                               ; preds = %6, %30, %21
  ret void
}

declare dso_local i32 @alarm(i32) #1

declare dso_local i32 @sm_blocksignal(i32) #1

declare dso_local i32 @ENTER_CRITICAL(...) #1

declare dso_local i32 @LEAVE_CRITICAL(...) #1

declare dso_local i32 @sm_releasesignal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
