; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_aggregate_readline.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_aggregate_buckets.c_serf_aggregate_readline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64 (i32, %struct.TYPE_9__*)*, i32, %struct.TYPE_10__*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_10__*, %struct.TYPE_9__* }

@APR_EOF = common dso_local global i64 0, align 8
@APR_SUCCESS = common dso_local global i64 0, align 8
@APR_EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_9__*, i32, i32*, i8**, i64*)* @serf_aggregate_readline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serf_aggregate_readline(%struct.TYPE_9__* %0, i32 %1, i32* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_11__*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %12, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @cleanup_aggregate(%struct.TYPE_11__* %19, i32 %22)
  br label %24

24:                                               ; preds = %124, %5
  %25 = load i64*, i64** %11, align 8
  store i64 0, i64* %25, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = icmp ne %struct.TYPE_10__* %28, null
  br i1 %29, label %46, label %30

30:                                               ; preds = %24
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %32, align 8
  %34 = icmp ne i64 (i32, %struct.TYPE_9__*)* %33, null
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %37, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %43 = call i64 %38(i32 %41, %struct.TYPE_9__* %42)
  store i64 %43, i64* %6, align 8
  br label %128

44:                                               ; preds = %30
  %45 = load i64, i64* @APR_EOF, align 8
  store i64 %45, i64* %6, align 8
  br label %128

46:                                               ; preds = %24
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  store %struct.TYPE_9__* %51, %struct.TYPE_9__** %14, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i32*, i32** %9, align 8
  %55 = load i8**, i8*** %10, align 8
  %56 = load i64*, i64** %11, align 8
  %57 = call i64 @serf_bucket_readline(%struct.TYPE_9__* %52, i32 %53, i32* %54, i8** %55, i64* %56)
  store i64 %57, i64* %13, align 8
  %58 = load i64, i64* %13, align 8
  %59 = call i64 @SERF_BUCKET_READ_ERROR(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i64, i64* %13, align 8
  store i64 %62, i64* %6, align 8
  br label %128

63:                                               ; preds = %46
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* @APR_EOF, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %115

67:                                               ; preds = %63
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  store %struct.TYPE_10__* %72, %struct.TYPE_10__** %15, align 8
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 3
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 2
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  store %struct.TYPE_10__* %75, %struct.TYPE_10__** %79, align 8
  %80 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 2
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %83, i32 0, i32 3
  store %struct.TYPE_10__* %82, %struct.TYPE_10__** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 2
  store %struct.TYPE_10__* %85, %struct.TYPE_10__** %87, align 8
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %89, align 8
  %91 = icmp ne %struct.TYPE_10__* %90, null
  br i1 %91, label %108, label %92

92:                                               ; preds = %67
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %94, align 8
  %96 = icmp ne i64 (i32, %struct.TYPE_9__*)* %95, null
  br i1 %96, label %97, label %106

97:                                               ; preds = %92
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 0
  %100 = load i64 (i32, %struct.TYPE_9__*)*, i64 (i32, %struct.TYPE_9__*)** %99, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %105 = call i64 %100(i32 %103, %struct.TYPE_9__* %104)
  store i64 %105, i64* %6, align 8
  br label %128

106:                                              ; preds = %92
  %107 = load i64, i64* @APR_EOF, align 8
  store i64 %107, i64* %6, align 8
  br label %128

108:                                              ; preds = %67
  %109 = load i64*, i64** %11, align 8
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %108
  %113 = load i64, i64* @APR_SUCCESS, align 8
  store i64 %113, i64* %13, align 8
  br label %114

114:                                              ; preds = %112, %108
  br label %115

115:                                              ; preds = %114, %63
  br label %116

116:                                              ; preds = %115
  %117 = load i64*, i64** %11, align 8
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %124, label %120

120:                                              ; preds = %116
  %121 = load i64, i64* %13, align 8
  %122 = load i64, i64* @APR_EAGAIN, align 8
  %123 = icmp ne i64 %121, %122
  br label %124

124:                                              ; preds = %120, %116
  %125 = phi i1 [ false, %116 ], [ %123, %120 ]
  br i1 %125, label %24, label %126

126:                                              ; preds = %124
  %127 = load i64, i64* %13, align 8
  store i64 %127, i64* %6, align 8
  br label %128

128:                                              ; preds = %126, %106, %97, %61, %44, %35
  %129 = load i64, i64* %6, align 8
  ret i64 %129
}

declare dso_local i32 @cleanup_aggregate(%struct.TYPE_11__*, i32) #1

declare dso_local i64 @serf_bucket_readline(%struct.TYPE_9__*, i32, i32*, i8**, i64*) #1

declare dso_local i64 @SERF_BUCKET_READ_ERROR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
