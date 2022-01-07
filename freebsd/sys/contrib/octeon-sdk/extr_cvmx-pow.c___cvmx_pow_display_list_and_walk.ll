; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_display_list_and_walk.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-pow.c___cvmx_pow_display_list_and_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__** }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i64, i64 }

@__cvmx_pow_list_names = common dso_local global i32* null, align 8
@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@CVMX_POW_LIST_INPUT = common dso_local global i64 0, align 8
@CVMX_POW_LIST_CORE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, %struct.TYPE_9__*, i32*, i32, i32, i64, i64)* @__cvmx_pow_display_list_and_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_pow_display_list_and_walk(i64 %0, %struct.TYPE_9__* %1, i32* %2, i32 %3, i32 %4, i64 %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %15 = load i32*, i32** @__cvmx_pow_list_names, align 8
  %16 = load i64, i64* %8, align 8
  %17 = getelementptr inbounds i32, i32* %15, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i32, i32* %12, align 4
  %21 = load i64, i64* %13, align 8
  %22 = load i64, i64* %14, align 8
  %23 = call i32 @__cvmx_pow_display_list(i32 %18, i32 0, i32 %19, i32 %20, i64 %21, i64 %22)
  %24 = load i32, i32* %11, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %99

26:                                               ; preds = %7
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = call i64 @__cvmx_pow_entry_mark_list(i64 %30, i64 %31, i32* %32)
  br label %98

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %92, %34
  %36 = load i64, i64* %13, align 8
  %37 = load i64, i64* %14, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %93

39:                                               ; preds = %35
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %8, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @__cvmx_pow_entry_mark_list(i64 %40, i64 %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %93

46:                                               ; preds = %39
  %47 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %48 = call i64 @octeon_has_feature(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %81

50:                                               ; preds = %46
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @CVMX_POW_LIST_INPUT, align 8
  %53 = icmp uge i64 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @CVMX_POW_LIST_CORE, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %60, align 8
  %62 = load i64, i64* %13, align 8
  %63 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %61, i64 %62
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i64 4
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %13, align 8
  br label %80

69:                                               ; preds = %54, %50
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %72, i64 %73
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i64 4
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %13, align 8
  br label %80

80:                                               ; preds = %69, %58
  br label %92

81:                                               ; preds = %46
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %83, align 8
  %85 = load i64, i64* %13, align 8
  %86 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %84, i64 %85
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  store i64 %91, i64* %13, align 8
  br label %92

92:                                               ; preds = %81, %80
  br label %35

93:                                               ; preds = %45, %35
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %8, align 8
  %96 = load i32*, i32** %10, align 8
  %97 = call i64 @__cvmx_pow_entry_mark_list(i64 %94, i64 %95, i32* %96)
  br label %98

98:                                               ; preds = %93, %29
  br label %99

99:                                               ; preds = %98, %7
  ret void
}

declare dso_local i32 @__cvmx_pow_display_list(i32, i32, i32, i32, i64, i64) #1

declare dso_local i64 @__cvmx_pow_entry_mark_list(i64, i64, i32*) #1

declare dso_local i64 @octeon_has_feature(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
