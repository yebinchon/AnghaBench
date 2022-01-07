; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_unlock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_rwlock_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urwlock = type { i32 }

@URWLOCK_WRITE_OWNER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@URWLOCK_WRITE_WAITERS = common dso_local global i32 0, align 4
@URWLOCK_READ_WAITERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urwlock*)* @_thr_rwlock_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_rwlock_unlock(%struct.urwlock* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urwlock*, align 8
  %4 = alloca i32, align 4
  store %struct.urwlock* %0, %struct.urwlock** %3, align 8
  %5 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %6 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %1
  %13 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %14 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %13, i32 0, i32 0
  %15 = load i32, i32* @URWLOCK_WRITE_OWNER, align 4
  %16 = call i64 @atomic_cmpset_rel_32(i32* %14, i32 %15, i32 0)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %60

19:                                               ; preds = %12
  br label %57

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %55, %20
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @URWLOCK_READER_COUNT(i32 %22)
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @__predict_false(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @EPERM, align 4
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %21
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @URWLOCK_WRITE_WAITERS, align 4
  %33 = load i32, i32* @URWLOCK_READ_WAITERS, align 4
  %34 = or i32 %32, %33
  %35 = and i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @URWLOCK_READER_COUNT(i32 %38)
  %40 = icmp eq i32 %39, 1
  br i1 %40, label %54, label %41

41:                                               ; preds = %37, %30
  %42 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %43 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %42, i32 0, i32 0
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = sub nsw i32 %45, 1
  %47 = call i64 @atomic_cmpset_rel_32(i32* %43, i32 %44, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  store i32 0, i32* %2, align 4
  br label %60

50:                                               ; preds = %41
  %51 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %52 = getelementptr inbounds %struct.urwlock, %struct.urwlock* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %37
  br label %56

55:                                               ; preds = %50
  br label %21

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56, %19
  %58 = load %struct.urwlock*, %struct.urwlock** %3, align 8
  %59 = call i32 @__thr_rwlock_unlock(%struct.urwlock* %58)
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %49, %28, %18
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @atomic_cmpset_rel_32(i32*, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @URWLOCK_READER_COUNT(i32) #1

declare dso_local i32 @__thr_rwlock_unlock(%struct.urwlock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
