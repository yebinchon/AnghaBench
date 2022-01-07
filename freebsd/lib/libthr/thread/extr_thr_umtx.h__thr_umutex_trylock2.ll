; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_trylock2.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_trylock2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umutex = type { i32, i64 }

@UMUTEX_UNOWNED = common dso_local global i64 0, align 8
@UMUTEX_CONTESTED = common dso_local global i64 0, align 8
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@UMUTEX_PRIO_INHERIT = common dso_local global i32 0, align 4
@UMUTEX_RB_OWNERDEAD = common dso_local global i64 0, align 8
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i64 0, align 8
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umutex*, i64)* @_thr_umutex_trylock2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_umutex_trylock2(%struct.umutex* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.umutex*, align 8
  %5 = alloca i64, align 8
  store %struct.umutex* %0, %struct.umutex** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.umutex*, %struct.umutex** %4, align 8
  %7 = getelementptr inbounds %struct.umutex, %struct.umutex* %6, i32 0, i32 1
  %8 = load i64, i64* @UMUTEX_UNOWNED, align 8
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @atomic_cmpset_acq_32(i64* %7, i64 %8, i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %74

13:                                               ; preds = %2
  %14 = load %struct.umutex*, %struct.umutex** %4, align 8
  %15 = getelementptr inbounds %struct.umutex, %struct.umutex* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %13
  %20 = load %struct.umutex*, %struct.umutex** %4, align 8
  %21 = getelementptr inbounds %struct.umutex, %struct.umutex* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %24 = load i32, i32* @UMUTEX_PRIO_INHERIT, align 4
  %25 = or i32 %23, %24
  %26 = and i32 %22, %25
  %27 = icmp eq i32 %26, 0
  %28 = zext i1 %27 to i32
  %29 = call i64 @__predict_true(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %19
  %32 = load %struct.umutex*, %struct.umutex** %4, align 8
  %33 = getelementptr inbounds %struct.umutex, %struct.umutex* %32, i32 0, i32 1
  %34 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %37 = or i64 %35, %36
  %38 = call i64 @atomic_cmpset_acq_32(i64* %33, i64 %34, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %74

41:                                               ; preds = %31, %19, %13
  %42 = load %struct.umutex*, %struct.umutex** %4, align 8
  %43 = getelementptr inbounds %struct.umutex, %struct.umutex* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @__predict_false(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %41
  %51 = load %struct.umutex*, %struct.umutex** %4, align 8
  %52 = getelementptr inbounds %struct.umutex, %struct.umutex* %51, i32 0, i32 1
  %53 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %56 = or i64 %54, %55
  %57 = call i64 @atomic_cmpset_acq_32(i64* %52, i64 %53, i64 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %50
  %60 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %60, i32* %3, align 4
  br label %74

61:                                               ; preds = %50, %41
  %62 = load %struct.umutex*, %struct.umutex** %4, align 8
  %63 = getelementptr inbounds %struct.umutex, %struct.umutex* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @UMUTEX_RB_NOTRECOV, align 8
  %66 = icmp eq i64 %64, %65
  %67 = zext i1 %66 to i32
  %68 = call i64 @__predict_false(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %71, i32* %3, align 4
  br label %74

72:                                               ; preds = %61
  %73 = load i32, i32* @EBUSY, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %72, %70, %59, %40, %12
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local i64 @atomic_cmpset_acq_32(i64*, i64, i64) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i64 @__predict_false(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
