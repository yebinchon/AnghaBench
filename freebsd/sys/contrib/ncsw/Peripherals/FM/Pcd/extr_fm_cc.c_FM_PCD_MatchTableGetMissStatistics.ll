; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableGetMissStatistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_MatchTableGetMissStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@E_OK = common dso_local global i64 0, align 8
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_MatchTableGetMissStatistics(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %9, %struct.TYPE_3__** %5, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = load i32, i32* @E_INVALID_HANDLE, align 4
  %12 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %10, i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* @E_NULL_POINTER, align 4
  %15 = call i32 @SANITY_CHECK_RETURN_ERROR(i32* %13, i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @XX_LockIntrSpinlock(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i64 @MatchTableGetKeyStatistics(%struct.TYPE_3__* %20, i32 %23, i32* %24)
  store i64 %25, i64* %7, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @XX_UnlockIntrSpinlock(i32 %28, i32 %29)
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @E_OK, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %2
  %35 = load i32, i32* @MAJOR, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i32, i32* @NO_MSG, align 4
  %38 = call i32 @RETURN_ERROR(i32 %35, i64 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %2
  %40 = load i64, i64* @E_OK, align 8
  ret i64 %40
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(i32*, i32) #1

declare dso_local i32 @XX_LockIntrSpinlock(i32) #1

declare dso_local i64 @MatchTableGetKeyStatistics(%struct.TYPE_3__*, i32, i32*) #1

declare dso_local i32 @XX_UnlockIntrSpinlock(i32, i32) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
