; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_lzma_lzma_optimum_normal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/xz/src/liblzma/lzma/extr_lzma_encoder_optimum_normal.c_lzma_lzma_optimum_normal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i64, i32, i64, i32, i32, i32, i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_16__ = type { i64, i32 }

@ALIGN_SIZE = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@REPS = common dso_local global i32 0, align 4
@OPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lzma_lzma_optimum_normal(%struct.TYPE_17__* noalias %0, %struct.TYPE_16__* noalias %1, i32* noalias %2, i32* noalias %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %67

22:                                               ; preds = %5
  %23 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %30, align 8
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = sub i64 %38, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %46, align 8
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32*, i32** %8, align 8
  store i32 %53, i32* %54, align 4
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %56, align 8
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = sext i32 %63 to i64
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  br label %171

67:                                               ; preds = %5
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %90

72:                                               ; preds = %67
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp sge i32 %75, 128
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %79 = call i32 @fill_dist_prices(%struct.TYPE_17__* %78)
  br label %80

80:                                               ; preds = %77, %72
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @ALIGN_SIZE, align 8
  %85 = icmp sge i64 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %88 = call i32 @fill_align_prices(%struct.TYPE_17__* %87)
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %67
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %92 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %93 = load i32*, i32** %8, align 8
  %94 = load i32*, i32** %9, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @helper1(%struct.TYPE_17__* %91, %struct.TYPE_16__* %92, i32* %93, i32* %94, i32 %95)
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* %11, align 4
  %98 = load i32, i32* @UINT32_MAX, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %90
  br label %171

101:                                              ; preds = %90
  %102 = load i32, i32* @REPS, align 4
  %103 = zext i32 %102 to i64
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %12, align 8
  %105 = alloca i32, i64 %103, align 16
  store i64 %103, i64* %13, align 8
  %106 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %106, i32 0, i32 7
  %108 = load i32, i32* %107, align 4
  %109 = mul nuw i64 4, %103
  %110 = trunc i64 %109 to i32
  %111 = call i32 @memcpy(i32* %105, i32 %108, i32 %110)
  store i32 1, i32* %14, align 4
  br label %112

112:                                              ; preds = %161, %101
  %113 = load i32, i32* %14, align 4
  %114 = load i32, i32* %11, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %164

116:                                              ; preds = %112
  %117 = load i32, i32* %14, align 4
  %118 = load i32, i32* @OPTS, align 4
  %119 = icmp slt i32 %117, %118
  %120 = zext i1 %119 to i32
  %121 = call i32 @assert(i32 %120)
  %122 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %123 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %123, i32 0, i32 6
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @mf_find(%struct.TYPE_16__* %122, i32* %124, i32 %127)
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 4
  store i32 %128, i32* %130, align 8
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 8
  %137 = icmp sge i32 %133, %136
  br i1 %137, label %138, label %139

138:                                              ; preds = %116
  br label %164

139:                                              ; preds = %116
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %142 = call i64 @mf_ptr(%struct.TYPE_16__* %141)
  %143 = sub nsw i64 %142, 1
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %14, align 4
  %147 = add nsw i32 %145, %146
  %148 = load i32, i32* %14, align 4
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %153 = call i64 @mf_avail(%struct.TYPE_16__* %152)
  %154 = add nsw i64 %153, 1
  %155 = load i32, i32* @OPTS, align 4
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* %14, align 4
  %158 = sub nsw i32 %156, %157
  %159 = call i32 @my_min(i64 %154, i32 %158)
  %160 = call i32 @helper2(%struct.TYPE_17__* %140, i32* %105, i64 %143, i32 %144, i32 %147, i32 %148, i32 %151, i32 %159)
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %139
  %162 = load i32, i32* %14, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %112

164:                                              ; preds = %138, %112
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %166 = load i32*, i32** %9, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = load i32, i32* %14, align 4
  %169 = call i32 @backward(%struct.TYPE_17__* %165, i32* %166, i32* %167, i32 %168)
  %170 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %170)
  br label %171

171:                                              ; preds = %164, %100, %22
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @fill_dist_prices(%struct.TYPE_17__*) #1

declare dso_local i32 @fill_align_prices(%struct.TYPE_17__*) #1

declare dso_local i32 @helper1(%struct.TYPE_17__*, %struct.TYPE_16__*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @mf_find(%struct.TYPE_16__*, i32*, i32) #1

declare dso_local i32 @helper2(%struct.TYPE_17__*, i32*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mf_ptr(%struct.TYPE_16__*) #1

declare dso_local i32 @my_min(i64, i32) #1

declare dso_local i64 @mf_avail(%struct.TYPE_16__*) #1

declare dso_local i32 @backward(%struct.TYPE_17__*, i32*, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
