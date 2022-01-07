; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_aggregate_peek.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_aggregate_peek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32, %struct.TYPE_10__*)*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_10__* }

@APR_EAGAIN = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i8**, i64*)* @serf_aggregate_peek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serf_aggregate_peek(%struct.TYPE_10__* %0, i8** %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  %10 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  store %struct.TYPE_11__* %13, %struct.TYPE_11__** %8, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @cleanup_aggregate(%struct.TYPE_11__* %14, i32 %17)
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %20, align 8
  %22 = icmp ne %struct.TYPE_9__* %21, null
  br i1 %22, label %47, label %23

23:                                               ; preds = %3
  %24 = load i64*, i64** %7, align 8
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %26, align 8
  %28 = icmp ne i64 (i32, %struct.TYPE_10__*)* %27, null
  br i1 %28, label %29, label %45

29:                                               ; preds = %23
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %31, align 8
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %37 = call i64 %32(i32 %35, %struct.TYPE_10__* %36)
  store i64 %37, i64* %10, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @APR_EAGAIN, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %29
  %42 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %42, i64* %10, align 8
  br label %43

43:                                               ; preds = %41, %29
  %44 = load i64, i64* %10, align 8
  store i64 %44, i64* %4, align 8
  br label %94

45:                                               ; preds = %23
  %46 = load i64, i64* @APR_EOF, align 8
  store i64 %46, i64* %4, align 8
  br label %94

47:                                               ; preds = %3
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  store %struct.TYPE_10__* %52, %struct.TYPE_10__** %9, align 8
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %54 = load i8**, i8*** %6, align 8
  %55 = load i64*, i64** %7, align 8
  %56 = call i64 @serf_bucket_peek(%struct.TYPE_10__* %53, i8** %54, i64* %55)
  store i64 %56, i64* %10, align 8
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* @APR_EOF, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %92

60:                                               ; preds = %47
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 2
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %68, i64* %10, align 8
  br label %91

69:                                               ; preds = %60
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 0
  %72 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %71, align 8
  %73 = icmp ne i64 (i32, %struct.TYPE_10__*)* %72, null
  br i1 %73, label %74, label %90

74:                                               ; preds = %69
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i64 (i32, %struct.TYPE_10__*)*, i64 (i32, %struct.TYPE_10__*)** %76, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %82 = call i64 %77(i32 %80, %struct.TYPE_10__* %81)
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @APR_EAGAIN, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %74
  %87 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %87, i64* %10, align 8
  br label %88

88:                                               ; preds = %86, %74
  %89 = load i64, i64* %10, align 8
  store i64 %89, i64* %4, align 8
  br label %94

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90, %67
  br label %92

92:                                               ; preds = %91, %47
  %93 = load i64, i64* %10, align 8
  store i64 %93, i64* %4, align 8
  br label %94

94:                                               ; preds = %92, %88, %45, %43
  %95 = load i64, i64* %4, align 8
  ret i64 %95
}

declare dso_local i32 @cleanup_aggregate(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @serf_bucket_peek(%struct.TYPE_10__*, i8**, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
