; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableRemoveKey.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fm_cc.c_FM_PCD_HashTableRemoveKey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }

@E_INVALID_HANDLE = common dso_local global i32 0, align 4
@E_NULL_POINTER = common dso_local global i32 0, align 4
@MAJOR = common dso_local global i32 0, align 4
@NO_MSG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @FM_PCD_HashTableRemoveKey(i64 %0, i32 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca %struct.TYPE_12__, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_12__, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  store i32 %1, i32* %12, align 4
  store i64 %0, i64* %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %7, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %16 = load i32, i32* @E_INVALID_HANDLE, align 4
  %17 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %15, i32 %16)
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load i32, i32* @E_NULL_POINTER, align 4
  %20 = call i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__* %18, i32 %19)
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @FM_PCD_MatchTableGetIndexedHashBucket(%struct.TYPE_12__* %21, i32 %27, %struct.TYPE_12__* %22, i32 %25, i64* %8, %struct.TYPE_12__* %9, i32* %10)
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %3
  %32 = load i32, i32* @MAJOR, align 4
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* @NO_MSG, align 4
  %35 = call i32 @RETURN_ERROR(i32 %32, i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %3
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @FM_PCD_MatchTableFindNRemoveKey(i64 %37, i32 %40, %struct.TYPE_12__* %38, i32* null)
  ret i64 %41
}

declare dso_local i32 @SANITY_CHECK_RETURN_ERROR(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @FM_PCD_MatchTableGetIndexedHashBucket(%struct.TYPE_12__*, i32, %struct.TYPE_12__*, i32, i64*, %struct.TYPE_12__*, i32*) #1

declare dso_local i32 @RETURN_ERROR(i32, i64, i32) #1

declare dso_local i64 @FM_PCD_MatchTableFindNRemoveKey(i64, i32, %struct.TYPE_12__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
