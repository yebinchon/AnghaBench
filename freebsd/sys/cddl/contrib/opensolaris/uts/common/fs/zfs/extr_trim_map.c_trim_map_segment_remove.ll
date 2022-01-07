; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_segment_remove.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_trim_map.c_trim_map_segment_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i64, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@AVL_AFTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, %struct.TYPE_14__*, i64, i64)* @trim_map_segment_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trim_map_segment_remove(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  %14 = call i32 @MUTEX_HELD(i32* %13)
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp slt i64 %18, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %8, align 8
  %26 = icmp sgt i64 %24, %25
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %30 = call i32 @TRIM_MAP_REM(%struct.TYPE_15__* %28, %struct.TYPE_14__* %29)
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %72

33:                                               ; preds = %4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %72

36:                                               ; preds = %33
  %37 = load i32, i32* @KM_SLEEP, align 4
  %38 = call %struct.TYPE_14__* @kmem_alloc(i32 24, i32 %37)
  store %struct.TYPE_14__* %38, %struct.TYPE_14__** %9, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  %42 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %56 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %64 = load i32, i32* @AVL_AFTER, align 4
  %65 = call i32 @avl_insert_here(i32* %61, %struct.TYPE_14__* %62, %struct.TYPE_14__* %63, i32 %64)
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %68 = call i32 @TRIM_MAP_ADD(%struct.TYPE_15__* %66, %struct.TYPE_14__* %67)
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = call i32 @TRIM_MAP_ADD(%struct.TYPE_15__* %69, %struct.TYPE_14__* %70)
  br label %101

72:                                               ; preds = %33, %4
  %73 = load i32, i32* %10, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load i64, i64* %7, align 8
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %81 = call i32 @TRIM_MAP_ADD(%struct.TYPE_15__* %79, %struct.TYPE_14__* %80)
  br label %100

82:                                               ; preds = %72
  %83 = load i32, i32* %11, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i64 %86, i64* %88, align 8
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %91 = call i32 @TRIM_MAP_ADD(%struct.TYPE_15__* %89, %struct.TYPE_14__* %90)
  br label %99

92:                                               ; preds = %82
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 0
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %96 = call i32 @avl_remove(i32* %94, %struct.TYPE_14__* %95)
  %97 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %98 = call i32 @kmem_free(%struct.TYPE_14__* %97, i32 24)
  br label %99

99:                                               ; preds = %92, %85
  br label %100

100:                                              ; preds = %99, %75
  br label %101

101:                                              ; preds = %100, %36
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @MUTEX_HELD(i32*) #1

declare dso_local i32 @TRIM_MAP_REM(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @avl_insert_here(i32*, %struct.TYPE_14__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @TRIM_MAP_ADD(%struct.TYPE_15__*, %struct.TYPE_14__*) #1

declare dso_local i32 @avl_remove(i32*, %struct.TYPE_14__*) #1

declare dso_local i32 @kmem_free(%struct.TYPE_14__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
