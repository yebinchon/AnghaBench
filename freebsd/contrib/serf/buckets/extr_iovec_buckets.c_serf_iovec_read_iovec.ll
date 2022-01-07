; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_iovec_buckets.c_serf_iovec_read_iovec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/serf/buckets/extr_iovec_buckets.c_serf_iovec_read_iovec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, %struct.iovec* }
%struct.iovec = type { i8*, i64 }

@SERF_READ_ALL_AVAIL = common dso_local global i64 0, align 8
@APR_EOF = common dso_local global i32 0, align 4
@APR_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i64, i32, %struct.iovec*, i32*)* @serf_iovec_read_iovec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serf_iovec_read_iovec(%struct.TYPE_4__* %0, i64 %1, i32 %2, %struct.iovec* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.iovec*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca %struct.iovec, align 8
  %14 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store %struct.iovec* %3, %struct.iovec** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %12, align 8
  %18 = load i32*, i32** %11, align 8
  store i32 0, i32* %18, align 4
  br label %19

19:                                               ; preds = %118, %5
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ult i64 %22, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %19
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 3
  %30 = load %struct.iovec*, %struct.iovec** %29, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.iovec, %struct.iovec* %30, i64 %33
  %35 = bitcast %struct.iovec* %13 to i8*
  %36 = bitcast %struct.iovec* %34 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 16, i1 false)
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %27
  %41 = load i64, i64* %8, align 8
  %42 = icmp sle i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %123

44:                                               ; preds = %40, %27
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %123

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %52, i64 %56
  %58 = load %struct.iovec*, %struct.iovec** %10, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.iovec, %struct.iovec* %58, i64 %61
  %63 = getelementptr inbounds %struct.iovec, %struct.iovec* %62, i32 0, i32 0
  store i8* %57, i8** %63, align 8
  %64 = getelementptr inbounds %struct.iovec, %struct.iovec* %13, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = sext i32 %68 to i64
  %70 = sub nsw i64 %65, %69
  store i64 %70, i64* %14, align 8
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %96

74:                                               ; preds = %50
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %14, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %96

78:                                               ; preds = %74
  %79 = load i64, i64* %8, align 8
  %80 = load %struct.iovec*, %struct.iovec** %10, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.iovec, %struct.iovec* %80, i64 %83
  %85 = getelementptr inbounds %struct.iovec, %struct.iovec* %84, i32 0, i32 1
  store i64 %79, i64* %85, align 8
  %86 = load i64, i64* %8, align 8
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = sext i32 %89 to i64
  %91 = add nsw i64 %90, %86
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 8
  store i64 0, i64* %8, align 8
  %93 = load i32*, i32** %11, align 8
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %123

96:                                               ; preds = %74, %50
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.iovec*, %struct.iovec** %10, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.iovec, %struct.iovec* %98, i64 %101
  %103 = getelementptr inbounds %struct.iovec, %struct.iovec* %102, i32 0, i32 1
  store i64 %97, i64* %103, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 2
  store i32 0, i32* %105, align 8
  %106 = load i64, i64* %8, align 8
  %107 = load i64, i64* @SERF_READ_ALL_AVAIL, align 8
  %108 = icmp ne i64 %106, %107
  br i1 %108, label %109, label %113

109:                                              ; preds = %96
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* %8, align 8
  %112 = sub nsw i64 %111, %110
  store i64 %112, i64* %8, align 8
  br label %113

113:                                              ; preds = %109, %96
  %114 = load i32*, i32** %11, align 8
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %113
  br label %118

118:                                              ; preds = %117
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %120, align 8
  br label %19

123:                                              ; preds = %78, %49, %43, %19
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %138

131:                                              ; preds = %123
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %138, label %136

136:                                              ; preds = %131
  %137 = load i32, i32* @APR_EOF, align 4
  store i32 %137, i32* %6, align 4
  br label %140

138:                                              ; preds = %131, %123
  %139 = load i32, i32* @APR_SUCCESS, align 4
  store i32 %139, i32* %6, align 4
  br label %140

140:                                              ; preds = %138, %136
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
