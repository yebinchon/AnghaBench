; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableFindNGetKeyStatistics.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableFindNGetKeyStatistics.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_HashTableFindNGetKeyStatistics(i64 %0, i32 %1, %struct.TYPE_15__* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca %struct.TYPE_15__, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_15__, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  store i32 %1, i32* %14, align 4
  store i64 %0, i64* %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %16, %struct.TYPE_15__** %9, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %18 = load i32, i32* @E_INVALID_HANDLE, align 4
  %19 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_15__* %17, i32 %18)
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %21 = load i32, i32* @E_NULL_POINTER, align 4
  %22 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_15__* %20, i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %24 = load i32, i32* @E_NULL_POINTER, align 4
  %25 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_15__* %23, i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @FM_PCD_MatchTableGetIndexedHashBucket(%struct.TYPE_15__* %26, i32 %32, %struct.TYPE_15__* %27, i32 %30, i64* %10, %struct.TYPE_15__* %11, i32* %12)
  store i64 %33, i64* %13, align 8
  %34 = load i64, i64* %13, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32, i32* @MAJOR, align 4
  %38 = load i64, i64* %13, align 8
  %39 = load i32, i32* @NO_MSG, align 4
  %40 = call i32 @RETURN_ERROR(i32 %37, i64 %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %4
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %5, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i64 @FM_PCD_MatchTableFindNGetKeyStatistics(i64 %42, i32 %46, %struct.TYPE_15__* %43, i32* null, %struct.TYPE_15__* %44)
  ret i64 %47
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_15__*, i32) #1

declare dso_local i64 @FM_PCD_MatchTableGetIndexedHashBucket(%struct.TYPE_15__*, i32, %struct.TYPE_15__*, i32, i64*, %struct.TYPE_15__*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i64 @FM_PCD_MatchTableFindNGetKeyStatistics(i64, i32, %struct.TYPE_15__*, i32*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
