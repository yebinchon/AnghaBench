; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_print_hist.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/unbound/daemon/extr_remote.c_print_hist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_stats_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.timehist = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@NUM_BUCKETS_HIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"histogram.%6.6d.%6.6d.to.%6.6d.%6.6d=%lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.ub_stats_info*)* @print_hist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_hist(i32* %0, %struct.ub_stats_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ub_stats_info*, align 8
  %6 = alloca %struct.timehist*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %4, align 8
  store %struct.ub_stats_info* %1, %struct.ub_stats_info** %5, align 8
  %8 = call %struct.timehist* (...) @timehist_setup()
  store %struct.timehist* %8, %struct.timehist** %6, align 8
  %9 = load %struct.timehist*, %struct.timehist** %6, align 8
  %10 = icmp ne %struct.timehist* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %2
  %12 = call i32 @log_err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %84

13:                                               ; preds = %2
  %14 = load %struct.timehist*, %struct.timehist** %6, align 8
  %15 = load %struct.ub_stats_info*, %struct.ub_stats_info** %5, align 8
  %16 = getelementptr inbounds %struct.ub_stats_info, %struct.ub_stats_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NUM_BUCKETS_HIST, align 4
  %20 = call i32 @timehist_import(%struct.timehist* %14, i32 %18, i32 %19)
  store i64 0, i64* %7, align 8
  br label %21

21:                                               ; preds = %78, %13
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.timehist*, %struct.timehist** %6, align 8
  %24 = getelementptr inbounds %struct.timehist, %struct.timehist* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %81

27:                                               ; preds = %21
  %28 = load i32*, i32** %4, align 8
  %29 = load %struct.timehist*, %struct.timehist** %6, align 8
  %30 = getelementptr inbounds %struct.timehist, %struct.timehist* %29, i32 0, i32 1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = load %struct.timehist*, %struct.timehist** %6, align 8
  %39 = getelementptr inbounds %struct.timehist, %struct.timehist* %38, i32 0, i32 1
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %39, align 8
  %41 = load i64, i64* %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = load %struct.timehist*, %struct.timehist** %6, align 8
  %48 = getelementptr inbounds %struct.timehist, %struct.timehist* %47, i32 0, i32 1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %48, align 8
  %50 = load i64, i64* %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = trunc i64 %54 to i32
  %56 = load %struct.timehist*, %struct.timehist** %6, align 8
  %57 = getelementptr inbounds %struct.timehist, %struct.timehist* %56, i32 0, i32 1
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = load %struct.timehist*, %struct.timehist** %6, align 8
  %66 = getelementptr inbounds %struct.timehist, %struct.timehist* %65, i32 0, i32 1
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @ssl_printf(i32* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %46, i32 %55, i32 %64, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %27
  %75 = load %struct.timehist*, %struct.timehist** %6, align 8
  %76 = call i32 @timehist_delete(%struct.timehist* %75)
  store i32 0, i32* %3, align 4
  br label %84

77:                                               ; preds = %27
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %7, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %7, align 8
  br label %21

81:                                               ; preds = %21
  %82 = load %struct.timehist*, %struct.timehist** %6, align 8
  %83 = call i32 @timehist_delete(%struct.timehist* %82)
  store i32 1, i32* %3, align 4
  br label %84

84:                                               ; preds = %81, %74, %11
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local %struct.timehist* @timehist_setup(...) #1

declare dso_local i32 @log_err(i8*) #1

declare dso_local i32 @timehist_import(%struct.timehist*, i32, i32) #1

declare dso_local i32 @ssl_printf(i32*, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @timehist_delete(%struct.timehist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
