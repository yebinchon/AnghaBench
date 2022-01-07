; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_tctx_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_prof.c_prof_tctx_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__, %struct.TYPE_16__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }

@opt_prof_accum = common dso_local global i32 0, align 4
@prof_tctx_state_purgatory = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.TYPE_15__*)* @prof_tctx_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prof_tctx_destroy(i32* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  store %struct.TYPE_14__* %12, %struct.TYPE_14__** %5, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 3
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %6, align 8
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @tsd_tsdn(i32* %16)
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @malloc_mutex_assert_owner(i32 %17, i32 %22)
  %24 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load i32, i32* @opt_prof_accum, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @assert(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %53, 0
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load i32*, i32** %3, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 3
  %62 = call i32 @ckh_remove(i32* %57, i32* %59, i32* %61, i32* null, i32* null)
  %63 = load i32*, i32** %3, align 8
  %64 = call i32 @tsd_tsdn(i32* %63)
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %66 = call i32 @prof_tdata_should_destroy(i32 %64, %struct.TYPE_14__* %65, i32 0)
  store i32 %66, i32* %7, align 4
  %67 = load i32*, i32** %3, align 8
  %68 = call i32 @tsd_tsdn(i32* %67)
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @malloc_mutex_unlock(i32 %68, i32 %71)
  %73 = load i32*, i32** %3, align 8
  %74 = call i32 @tsd_tsdn(i32* %73)
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @malloc_mutex_lock(i32 %74, i32 %77)
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  switch i32 %81, label %101 [
    i32 128, label %82
    i32 129, label %97
  ]

82:                                               ; preds = %2
  %83 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = call i32 @tctx_tree_remove(i32* %84, %struct.TYPE_15__* %85)
  store i32 1, i32* %8, align 4
  %87 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %88 = call i32 @prof_gctx_should_destroy(%struct.TYPE_16__* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %82
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  store i32 1, i32* %9, align 4
  br label %96

95:                                               ; preds = %82
  store i32 0, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %90
  br label %103

97:                                               ; preds = %2
  %98 = load i32, i32* @prof_tctx_state_purgatory, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %103

101:                                              ; preds = %2
  %102 = call i32 (...) @not_reached()
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %103

103:                                              ; preds = %101, %97, %96
  %104 = load i32*, i32** %3, align 8
  %105 = call i32 @tsd_tsdn(i32* %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @malloc_mutex_unlock(i32 %105, i32 %108)
  %110 = load i32, i32* %9, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %103
  %113 = load i32*, i32** %3, align 8
  %114 = load i32*, i32** %3, align 8
  %115 = call i32 @prof_tdata_get(i32* %114, i32 0)
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %117 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %118 = call i32 @prof_gctx_try_destroy(i32* %113, i32 %115, %struct.TYPE_16__* %116, %struct.TYPE_14__* %117)
  br label %119

119:                                              ; preds = %112, %103
  %120 = load i32*, i32** %3, align 8
  %121 = call i32 @tsd_tsdn(i32* %120)
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @malloc_mutex_assert_not_owner(i32 %121, i32 %126)
  %128 = load i32, i32* %7, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %119
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %133 = call i32 @prof_tdata_destroy(i32* %131, %struct.TYPE_14__* %132, i32 0)
  br label %134

134:                                              ; preds = %130, %119
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %134
  %138 = load i32*, i32** %3, align 8
  %139 = call i32 @tsd_tsdn(i32* %138)
  %140 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %141 = call i32 @idalloctm(i32 %139, %struct.TYPE_15__* %140, i32* null, i32* null, i32 1, i32 1)
  br label %142

142:                                              ; preds = %137, %134
  ret void
}

declare dso_local i32 @malloc_mutex_assert_owner(i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ckh_remove(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @prof_tdata_should_destroy(i32, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @malloc_mutex_unlock(i32, i32) #1

declare dso_local i32 @malloc_mutex_lock(i32, i32) #1

declare dso_local i32 @tctx_tree_remove(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @prof_gctx_should_destroy(%struct.TYPE_16__*) #1

declare dso_local i32 @not_reached(...) #1

declare dso_local i32 @prof_gctx_try_destroy(i32*, i32, %struct.TYPE_16__*, %struct.TYPE_14__*) #1

declare dso_local i32 @prof_tdata_get(i32*, i32) #1

declare dso_local i32 @malloc_mutex_assert_not_owner(i32, i32) #1

declare dso_local i32 @prof_tdata_destroy(i32*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @idalloctm(i32, %struct.TYPE_15__*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
