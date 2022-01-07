; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tsd.c_tsd_fetch_slow.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_tsd.c_tsd_fetch_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64 }

@tsd_state_nominal_slow = common dso_local global i64 0, align 8
@malloc_slow = common dso_local global i64 0, align 8
@tsd_state_uninitialized = common dso_local global i64 0, align 8
@tsd_state_nominal = common dso_local global i8* null, align 8
@tsd_state_minimal_initialized = common dso_local global i64 0, align 8
@tsd_state_purgatory = common dso_local global i64 0, align 8
@tsd_state_reincarnated = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_14__* @tsd_fetch_slow(%struct.TYPE_14__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = call i32 @tsd_fast(%struct.TYPE_14__* %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @tsd_state_nominal_slow, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load i64, i64* @malloc_slow, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = call i32 @tsd_tcache_enabled_get(%struct.TYPE_14__* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %25 = call i64 @tsd_reentrancy_level_get(%struct.TYPE_14__* %24)
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %29 = call i64* @tsd_arenas_tdata_bypassp_get(%struct.TYPE_14__* %28)
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br label %32

32:                                               ; preds = %27, %23, %19, %16
  %33 = phi i1 [ true, %23 ], [ true, %19 ], [ true, %16 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %122

36:                                               ; preds = %2
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @tsd_state_uninitialized, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %65

42:                                               ; preds = %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %42
  %46 = load i8*, i8** @tsd_state_nominal, align 8
  %47 = ptrtoint i8* %46 to i64
  %48 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %51 = call i32 @tsd_slow_update(%struct.TYPE_14__* %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %53 = call i32 @tsd_set(%struct.TYPE_14__* %52)
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %55 = call i32 @tsd_data_init(%struct.TYPE_14__* %54)
  br label %64

56:                                               ; preds = %42
  %57 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %61 = call i32 @tsd_set(%struct.TYPE_14__* %60)
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %63 = call i32 @tsd_data_init_nocleanup(%struct.TYPE_14__* %62)
  br label %64

64:                                               ; preds = %56, %45
  br label %121

65:                                               ; preds = %36
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @tsd_state_minimal_initialized, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %97

71:                                               ; preds = %65
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %93, label %74

74:                                               ; preds = %71
  %75 = load i8*, i8** @tsd_state_nominal, align 8
  %76 = ptrtoint i8* %75 to i64
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %80 = call i32* @tsd_reentrancy_levelp_get(%struct.TYPE_14__* %79)
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 1
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %86 = call i32* @tsd_reentrancy_levelp_get(%struct.TYPE_14__* %85)
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %90 = call i32 @tsd_slow_update(%struct.TYPE_14__* %89)
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %92 = call i32 @tsd_data_init(%struct.TYPE_14__* %91)
  br label %96

93:                                               ; preds = %71
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %95 = call i32 @assert_tsd_data_cleanup_done(%struct.TYPE_14__* %94)
  br label %96

96:                                               ; preds = %93, %74
  br label %120

97:                                               ; preds = %65
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @tsd_state_purgatory, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load i64, i64* @tsd_state_reincarnated, align 8
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  store i64 %104, i64* %106, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %108 = call i32 @tsd_set(%struct.TYPE_14__* %107)
  %109 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %110 = call i32 @tsd_data_init_nocleanup(%struct.TYPE_14__* %109)
  br label %119

111:                                              ; preds = %97
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @tsd_state_reincarnated, align 8
  %116 = icmp eq i64 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  br label %119

119:                                              ; preds = %111, %103
  br label %120

120:                                              ; preds = %119, %96
  br label %121

121:                                              ; preds = %120, %64
  br label %122

122:                                              ; preds = %121, %32
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %123
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @tsd_fast(%struct.TYPE_14__*) #1

declare dso_local i32 @tsd_tcache_enabled_get(%struct.TYPE_14__*) #1

declare dso_local i64 @tsd_reentrancy_level_get(%struct.TYPE_14__*) #1

declare dso_local i64* @tsd_arenas_tdata_bypassp_get(%struct.TYPE_14__*) #1

declare dso_local i32 @tsd_slow_update(%struct.TYPE_14__*) #1

declare dso_local i32 @tsd_set(%struct.TYPE_14__*) #1

declare dso_local i32 @tsd_data_init(%struct.TYPE_14__*) #1

declare dso_local i32 @tsd_data_init_nocleanup(%struct.TYPE_14__*) #1

declare dso_local i32* @tsd_reentrancy_levelp_get(%struct.TYPE_14__*) #1

declare dso_local i32 @assert_tsd_data_cleanup_done(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
