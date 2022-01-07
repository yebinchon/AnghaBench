; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arenas_i_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/jemalloc/src/extr_ctl.c_arenas_i_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32, i32* }
%struct.container_s = type { %struct.TYPE_4__, i32 }

@ctl_arenas = common dso_local global %struct.TYPE_5__* null, align 8
@config_stats = common dso_local global i64 0, align 8
@QUANTUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_4__* (i32*, i64, i32, i32)* @arenas_i_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_4__* @arenas_i_impl(i32* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.container_s*, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br label %18

18:                                               ; preds = %14, %4
  %19 = phi i1 [ true, %4 ], [ %17, %14 ]
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctl_arenas, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i64 @arenas_i2a_impl(i64 %25, i32 %26, i32 0)
  %28 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %24, i64 %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %10, align 8
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %18
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %34 = icmp eq %struct.TYPE_4__* %33, null
  br i1 %34, label %35, label %79

35:                                               ; preds = %32
  %36 = load i64, i64* @config_stats, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %35
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @tsd_tsdn(i32* %39)
  %41 = call i32 (...) @b0get()
  %42 = load i32, i32* @QUANTUM, align 4
  %43 = call i64 @base_alloc(i32 %40, i32 %41, i32 24, i32 %42)
  %44 = inttoptr i64 %43 to %struct.container_s*
  store %struct.container_s* %44, %struct.container_s** %11, align 8
  %45 = load %struct.container_s*, %struct.container_s** %11, align 8
  %46 = icmp eq %struct.container_s* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %96

48:                                               ; preds = %38
  %49 = load %struct.container_s*, %struct.container_s** %11, align 8
  %50 = getelementptr inbounds %struct.container_s, %struct.container_s* %49, i32 0, i32 0
  store %struct.TYPE_4__* %50, %struct.TYPE_4__** %10, align 8
  %51 = load %struct.container_s*, %struct.container_s** %11, align 8
  %52 = getelementptr inbounds %struct.container_s, %struct.container_s* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  store i32* %52, i32** %54, align 8
  br label %66

55:                                               ; preds = %35
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @tsd_tsdn(i32* %56)
  %58 = call i32 (...) @b0get()
  %59 = load i32, i32* @QUANTUM, align 4
  %60 = call i64 @base_alloc(i32 %57, i32 %58, i32 16, i32 %59)
  %61 = inttoptr i64 %60 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %61, %struct.TYPE_4__** %10, align 8
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %63 = icmp eq %struct.TYPE_4__* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %5, align 8
  br label %96

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i64, i64* %7, align 8
  %68 = trunc i64 %67 to i32
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ctl_arenas, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %73, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @arenas_i2a_impl(i64 %75, i32 %76, i32 0)
  %78 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %74, i64 %77
  store %struct.TYPE_4__* %71, %struct.TYPE_4__** %78, align 8
  br label %79

79:                                               ; preds = %66, %32, %18
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %81 = icmp eq %struct.TYPE_4__* %80, null
  br i1 %81, label %91, label %82

82:                                               ; preds = %79
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = zext i32 %85 to i64
  %87 = call i64 @arenas_i2a(i64 %86)
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @arenas_i2a(i64 %88)
  %90 = icmp eq i64 %87, %89
  br label %91

91:                                               ; preds = %82, %79
  %92 = phi i1 [ true, %79 ], [ %90, %82 ]
  %93 = zext i1 %92 to i32
  %94 = call i32 @assert(i32 %93)
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  store %struct.TYPE_4__* %95, %struct.TYPE_4__** %5, align 8
  br label %96

96:                                               ; preds = %91, %64, %47
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  ret %struct.TYPE_4__* %97
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @arenas_i2a_impl(i64, i32, i32) #1

declare dso_local i64 @base_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @tsd_tsdn(i32*) #1

declare dso_local i32 @b0get(...) #1

declare dso_local i64 @arenas_i2a(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
