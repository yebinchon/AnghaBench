; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_rdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_rdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32 }
%struct.timespec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urwlock*, i32, %struct.timespec*)* @_thr_rwlock_rdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_rwlock_rdlock(%struct.urwlock* %0, i32 %1, %struct.timespec* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.urwlock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timespec*, align 8
  store %struct.urwlock* %0, %struct.urwlock** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.timespec* %2, %struct.timespec** %7, align 8
  %8 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %9 = load i32, i32* %6, align 4
  %10 = call i64 @_thr_rwlock_tryrdlock(%struct.urwlock* %8, i32 %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.urwlock*, %struct.urwlock** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.timespec*, %struct.timespec** %7, align 8
  %17 = call i32 @__thr_rwlock_rdlock(%struct.urwlock* %14, i32 %15, %struct.timespec* %16)
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %4, align 4
  ret i32 %19
}

declare dso_local i64 @_thr_rwlock_tryrdlock(%struct.urwlock*, i32) #1

declare dso_local i32 @__thr_rwlock_rdlock(%struct.urwlock*, i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
