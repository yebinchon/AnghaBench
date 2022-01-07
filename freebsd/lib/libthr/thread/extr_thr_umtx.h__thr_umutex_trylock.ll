; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_trylock.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libthr/thread/extr_thr_umtx.h__thr_umutex_trylock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umutex = type { i32, i64 }

@UMUTEX_UNOWNED = common dso_local global i64 0, align 8
@UMUTEX_RB_OWNERDEAD = common dso_local global i64 0, align 8
@UMUTEX_CONTESTED = common dso_local global i64 0, align 8
@EOWNERDEAD = common dso_local global i32 0, align 4
@UMUTEX_RB_NOTRECOV = common dso_local global i64 0, align 8
@ENOTRECOVERABLE = common dso_local global i32 0, align 4
@UMUTEX_PRIO_PROTECT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umutex*, i64)* @_thr_umutex_trylock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_thr_umutex_trylock(%struct.umutex* %0, i64 %1) #0 {
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
  br label %56

13:                                               ; preds = %2
  %14 = load %struct.umutex*, %struct.umutex** %4, align 8
  %15 = getelementptr inbounds %struct.umutex, %struct.umutex* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @__predict_false(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %13
  %23 = load %struct.umutex*, %struct.umutex** %4, align 8
  %24 = getelementptr inbounds %struct.umutex, %struct.umutex* %23, i32 0, i32 1
  %25 = load i64, i64* @UMUTEX_RB_OWNERDEAD, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @UMUTEX_CONTESTED, align 8
  %28 = or i64 %26, %27
  %29 = call i64 @atomic_cmpset_acq_32(i64* %24, i64 %25, i64 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %22
  %32 = load i32, i32* @EOWNERDEAD, align 4
  store i32 %32, i32* %3, align 4
  br label %56

33:                                               ; preds = %22, %13
  %34 = load %struct.umutex*, %struct.umutex** %4, align 8
  %35 = getelementptr inbounds %struct.umutex, %struct.umutex* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @UMUTEX_RB_NOTRECOV, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i64 @__predict_false(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOTRECOVERABLE, align 4
  store i32 %43, i32* %3, align 4
  br label %56

44:                                               ; preds = %33
  %45 = load %struct.umutex*, %struct.umutex** %4, align 8
  %46 = getelementptr inbounds %struct.umutex, %struct.umutex* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @UMUTEX_PRIO_PROTECT, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = load i32, i32* @EBUSY, align 4
  store i32 %52, i32* %3, align 4
  br label %56

53:                                               ; preds = %44
  %54 = load %struct.umutex*, %struct.umutex** %4, align 8
  %55 = call i32 @__thr_umutex_trylock(%struct.umutex* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %53, %51, %42, %31, %12
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i64 @atomic_cmpset_acq_32(i64*, i64, i64) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @__thr_umutex_trylock(%struct.umutex*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
