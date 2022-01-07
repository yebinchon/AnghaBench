; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c__thr_rwl_wrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.c__thr_rwl_wrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32 }

@EINTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"wrlock error\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_thr_rwl_wrlock(%struct.urwlock* %0) #0 {
  %2 = alloca %struct.urwlock*, align 8
  %3 = alloca i32, align 4
  store %struct.urwlock* %0, %struct.urwlock** %2, align 8
  br label %4

4:                                                ; preds = %21, %1
  %5 = load %struct.urwlock*, %struct.urwlock** %2, align 8
  %6 = call i64 @_thr_rwlock_trywrlock(%struct.urwlock* %5)
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %22

9:                                                ; preds = %4
  %10 = load %struct.urwlock*, %struct.urwlock** %2, align 8
  %11 = call i32 @__thr_rwlock_wrlock(%struct.urwlock* %10, i32* null)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %22

15:                                               ; preds = %9
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @EINTR, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 @PANIC(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %15
  br label %4

22:                                               ; preds = %14, %8
  ret void
}

declare dso_local i64 @_thr_rwlock_trywrlock(%struct.urwlock*) #1

declare dso_local i32 @__thr_rwlock_wrlock(%struct.urwlock*, i32*) #1

declare dso_local i32 @PANIC(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
