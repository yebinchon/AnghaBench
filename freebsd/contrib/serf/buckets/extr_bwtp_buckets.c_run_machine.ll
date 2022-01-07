; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_run_machine.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_bwtp_buckets.c_run_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_9__, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

@APR_SUCCESS = common dso_local global i32 0, align 4
@SERF_NEWLINE_ANY = common dso_local global i32 0, align 4
@SERF_LINEBUF_READY = common dso_local global i32 0, align 4
@SERF_ERROR_REQUEST_LOST = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i32 0, align 4
@APR_EGENERAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_11__*)* @run_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @run_machine(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %5, align 8
  %7 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %124 [
    i32 128, label %11
    i32 129, label %93
    i32 131, label %121
    i32 130, label %122
  ]

11:                                               ; preds = %2
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %13 = load i32, i32* @SERF_NEWLINE_ANY, align 4
  %14 = call i32 @fetch_line(%struct.TYPE_11__* %12, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @SERF_BUCKET_READ_ERROR(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %128

20:                                               ; preds = %11
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %85

27:                                               ; preds = %20
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %85

33:                                               ; preds = %27
  %34 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @parse_status_line(%struct.TYPE_11__* %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %128

43:                                               ; preds = %33
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @serf_bucket_barrier_create(i32 %51, i32 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i32 %55, i32* %57, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @serf_bucket_limit_create(i32 %60, i32 %63, i32 %66)
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %48
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 129, i32* %76, align 4
  br label %80

77:                                               ; preds = %48
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  store i32 131, i32* %79, align 4
  br label %80

80:                                               ; preds = %77, %74
  br label %84

81:                                               ; preds = %43
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  store i32 130, i32* %83, align 4
  br label %84

84:                                               ; preds = %81, %80
  br label %92

85:                                               ; preds = %27, %20
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @APR_STATUS_IS_EOF(i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %85
  %90 = load i32, i32* @SERF_ERROR_REQUEST_LOST, align 4
  store i32 %90, i32* %3, align 4
  br label %128

91:                                               ; preds = %85
  br label %92

92:                                               ; preds = %91, %84
  br label %126

93:                                               ; preds = %2
  %94 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %98 = call i32 @fetch_headers(i32 %96, %struct.TYPE_11__* %97)
  store i32 %98, i32* %6, align 4
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @SERF_BUCKET_READ_ERROR(i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %3, align 4
  br label %128

104:                                              ; preds = %93
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @SERF_LINEBUF_READY, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %104
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i32 0, i32 0
  store i32 130, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %111, %104
  br label %126

121:                                              ; preds = %2
  br label %126

122:                                              ; preds = %2
  %123 = load i32, i32* @APR_EOF, align 4
  store i32 %123, i32* %3, align 4
  br label %128

124:                                              ; preds = %2
  %125 = load i32, i32* @APR_EGENERAL, align 4
  store i32 %125, i32* %3, align 4
  br label %128

126:                                              ; preds = %121, %120, %92
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %3, align 4
  br label %128

128:                                              ; preds = %126, %124, %122, %102, %89, %41, %18
  %129 = load i32, i32* %3, align 4
  ret i32 %129
}

declare dso_local i32 @fetch_line(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @SERF_BUCKET_READ_ERROR(i32) #1

declare dso_local i32 @parse_status_line(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @serf_bucket_barrier_create(i32, i32) #1

declare dso_local i32 @serf_bucket_limit_create(i32, i32, i32) #1

declare dso_local i32 @APR_STATUS_IS_EOF(i32) #1

declare dso_local i32 @fetch_headers(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
