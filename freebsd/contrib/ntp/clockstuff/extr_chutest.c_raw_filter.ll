; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_raw_filter.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/clockstuff/extr_chutest.c_raw_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i32*, %struct.timeval* }
%struct.TYPE_5__ = type { i32 }

@raw_filter.diffs = internal global [10 x %struct.timeval] zeroinitializer, align 16
@debug = common dso_local global i64 0, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"character %02x failed BCD test\0A\00", align 1
@chudata = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@doprocess = common dso_local global i64 0, align 8
@NCHUCHARS = common dso_local global i32 0, align 4
@JAN_1970 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"%x%x\09%lu.%06lu\09%lu.%06lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @raw_filter(i32 %0, %struct.timeval* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timeval, align 8
  %6 = alloca %struct.TYPE_5__, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.timeval* %1, %struct.timeval** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = and i32 %8, 15
  %10 = icmp ugt i32 %9, 9
  br i1 %10, label %16, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %3, align 4
  %13 = lshr i32 %12, 4
  %14 = and i32 %13, 15
  %15 = icmp ugt i32 %14, 9
  br i1 %15, label %16, label %24

16:                                               ; preds = %11, %2
  %17 = load i64, i64* @debug, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* @stderr, align 4
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %19, %16
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  br label %151

24:                                               ; preds = %11
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %59

27:                                               ; preds = %24
  %28 = load %struct.timeval*, %struct.timeval** %4, align 8
  %29 = getelementptr inbounds %struct.timeval, %struct.timeval* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %32 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %33 = getelementptr inbounds %struct.timeval, %struct.timeval* %31, i64 %32
  %34 = getelementptr inbounds %struct.timeval, %struct.timeval* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %30, %35
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  store i64 %36, i64* %37, align 8
  %38 = load %struct.timeval*, %struct.timeval** %4, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %42 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %41, i64 %42
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = sub nsw i64 %40, %45
  %47 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  store i64 %46, i64* %47, align 8
  %48 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp slt i64 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %27
  %52 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %53, -1
  store i64 %54, i64* %52, align 8
  %55 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, 1000000
  store i64 %57, i64* %55, align 8
  br label %58

58:                                               ; preds = %51, %27
  br label %59

59:                                               ; preds = %58, %24
  %60 = load i32, i32* %3, align 4
  %61 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 1), align 8
  %62 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  store i32 %60, i32* %63, align 4
  %64 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %65 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %66 = getelementptr inbounds %struct.timeval, %struct.timeval* %64, i64 %65
  %67 = load %struct.timeval*, %struct.timeval** %4, align 8
  %68 = bitcast %struct.timeval* %66 to i8*
  %69 = bitcast %struct.timeval* %67 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %68, i8* align 8 %69, i64 16, i1 false)
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %71 = icmp ugt i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %59
  %73 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %74 = getelementptr inbounds [10 x %struct.timeval], [10 x %struct.timeval]* @raw_filter.diffs, i64 0, i64 %73
  %75 = bitcast %struct.timeval* %74 to i8*
  %76 = bitcast %struct.timeval* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %75, i8* align 8 %76, i64 16, i1 false)
  br label %77

77:                                               ; preds = %72, %59
  %78 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %80 = icmp eq i64 %79, 10
  br i1 %80, label %81, label %151

81:                                               ; preds = %77
  %82 = load i64, i64* @doprocess, align 8
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %86 = load i32, i32* @NCHUCHARS, align 4
  %87 = sub nsw i32 %86, 1
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.timeval, %struct.timeval* %85, i64 %88
  %90 = call i32 @TVTOTS(%struct.timeval* %89, %struct.TYPE_5__* %6)
  %91 = load i64, i64* @JAN_1970, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %91
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  %97 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %98 = load i32, i32* @NCHUCHARS, align 4
  %99 = sub nsw i32 %98, 1
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.timeval, %struct.timeval* %97, i64 %100
  %102 = call i32 @chufilter(%struct.TYPE_6__* @chudata, %struct.timeval* %101)
  br label %150

103:                                              ; preds = %81
  store i32 0, i32* %7, align 4
  br label %104

104:                                              ; preds = %146, %103
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  %108 = icmp ult i64 %106, %107
  br i1 %108, label %109, label %149

109:                                              ; preds = %104
  %110 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 1), align 8
  %111 = load i32, i32* %7, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 15
  %116 = load i32*, i32** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 1), align 8
  %117 = load i32, i32* %7, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = lshr i32 %120, 4
  %122 = and i32 %121, 15
  %123 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.timeval, %struct.timeval* %123, i64 %125
  %127 = getelementptr inbounds %struct.timeval, %struct.timeval* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.timeval*, %struct.timeval** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 2), align 8
  %130 = load i32, i32* %7, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.timeval, %struct.timeval* %129, i64 %131
  %133 = getelementptr inbounds %struct.timeval, %struct.timeval* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds [10 x %struct.timeval], [10 x %struct.timeval]* @raw_filter.diffs, i64 0, i64 %136
  %138 = getelementptr inbounds %struct.timeval, %struct.timeval* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i32, i32* %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds [10 x %struct.timeval], [10 x %struct.timeval]* @raw_filter.diffs, i64 0, i64 %141
  %143 = getelementptr inbounds %struct.timeval, %struct.timeval* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 16
  %145 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %115, i32 %122, i64 %128, i64 %134, i64 %139, i64 %144)
  br label %146

146:                                              ; preds = %109
  %147 = load i32, i32* %7, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %7, align 4
  br label %104

149:                                              ; preds = %104
  br label %150

150:                                              ; preds = %149, %84
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @chudata, i32 0, i32 0), align 8
  br label %151

151:                                              ; preds = %23, %150, %77
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @TVTOTS(%struct.timeval*, %struct.TYPE_5__*) #1

declare dso_local i32 @chufilter(%struct.TYPE_6__*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i32, i32, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
