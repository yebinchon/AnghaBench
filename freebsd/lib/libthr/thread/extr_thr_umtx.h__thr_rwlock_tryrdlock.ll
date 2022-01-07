; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_tryrdlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_tryrdlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32, i32 }

@URWLOCK_PREFER_READER = common dso_local global i32 0, align 4
@URWLOCK_WRITE_OWNER = common dso_local global i32 0, align 4
@URWLOCK_WRITE_WAITERS = common dso_local global i32 0, align 4
@URWLOCK_MAX_READERS = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urwlock*, i32)* @_thr_rwlock_tryrdlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_rwlock_tryrdlock(%struct.urwlock* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.urwlock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.urwlock* %0, %struct.urwlock** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @URWLOCK_PREFER_READER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %2
  %13 = load %struct.urwlock*, %struct.urwlock** %4, align 8
  %14 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @URWLOCK_PREFER_READER, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12, %2
  %20 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  store i32 %20, i32* %7, align 4
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %23 = load i32, i32* @URWLOCK_WRITE_WAITERS, align 4
  %24 = or i32 %22, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load %struct.urwlock*, %struct.urwlock** %4, align 8
  %27 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %54, %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %58

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @URWLOCK_READER_COUNT(i32 %36)
  %38 = load i64, i64* @URWLOCK_MAX_READERS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @__predict_false(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %35
  %44 = load i32, i32* @EAGAIN, align 4
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %35
  %46 = load %struct.urwlock*, %struct.urwlock** %4, align 8
  %47 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %46, i32 0, i32 1
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  %51 = call i64 @atomic_cmpset_acq_32(i32* %47, i32 %48, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %60

54:                                               ; preds = %45
  %55 = load %struct.urwlock*, %struct.urwlock** %4, align 8
  %56 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %6, align 4
  br label %29

58:                                               ; preds = %29
  %59 = load i32, i32* @EBUSY, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %58, %53, %43
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i64 @URWLOCK_READER_COUNT(i32) #1

declare dso_local i64 @atomic_cmpset_acq_32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
