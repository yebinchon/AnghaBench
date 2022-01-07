; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_trywrlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_trywrlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32 }

@URWLOCK_WRITE_OWNER = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urwlock*)* @_thr_rwlock_trywrlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_rwlock_trywrlock(%struct.urwlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urwlock*, align 8
  %4 = alloca i32, align 4
  store %struct.urwlock* %0, %struct.urwlock** %3, align 8
  %5 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %6 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %29, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, i32* %4, align 4
  %15 = call i64 @URWLOCK_READER_COUNT(i32 %14)
  %16 = icmp eq i64 %15, 0
  br label %17

17:                                               ; preds = %13, %8
  %18 = phi i1 [ false, %8 ], [ %16, %13 ]
  br i1 %18, label %19, label %33

19:                                               ; preds = %17
  %20 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %21 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %20, i32 0, i32 0
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %25 = or i32 %23, %24
  %26 = call i64 @atomic_cmpset_acq_32(i32* %21, i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %35

29:                                               ; preds = %19
  %30 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %31 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %8

33:                                               ; preds = %17
  %34 = load i32, i32* @EBUSY, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %33, %28
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @URWLOCK_READER_COUNT(i32) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
