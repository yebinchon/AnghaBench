; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_compressWithDict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/experimental_dict_builders/benchmarkDictBuilder/extr_benchmark.c_compressWithDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64*, i64 }
%struct.TYPE_6__ = type { i64, i32 }

@.str = private unnamed_addr constant [22 x i8] c"original size is %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"compressed size is %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @compressWithDict(%struct.TYPE_5__* %0, %struct.TYPE_6__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca double, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %24, 0
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 1, i32 0
  store i32 %27, i32* %11, align 4
  store i32* null, i32** %15, align 8
  store i32* null, i32** %16, align 8
  store i64* null, i64** %17, align 8
  store i8* null, i8** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %14, align 4
  br label %28

28:                                               ; preds = %44, %4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp slt i32 %29, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %28
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %19, align 8
  %43 = call i64 @MAX(i64 %41, i64 %42)
  store i64 %43, i64* %19, align 8
  br label %44

44:                                               ; preds = %34
  %45 = load i32, i32* %14, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %14, align 4
  br label %28

47:                                               ; preds = %28
  %48 = load i64, i64* %19, align 8
  %49 = call i64 @ZSTD_compressBound(i64 %48)
  store i64 %49, i64* %13, align 8
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  %52 = call i8* @malloc(i32 %51)
  store i8* %52, i8** %18, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = mul i64 %57, 8
  %59 = trunc i64 %58 to i32
  %60 = call i8* @malloc(i32 %59)
  %61 = bitcast i8* %60 to i64*
  store i64* %61, i64** %17, align 8
  %62 = load i64*, i64** %17, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 0, i64* %63, align 8
  store i32 1, i32* %14, align 4
  br label %64

64:                                               ; preds = %90, %47
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = icmp sle i32 %65, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %64
  %71 = load i64*, i64** %17, align 8
  %72 = load i32, i32* %14, align 4
  %73 = sub nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i64, i64* %71, i64 %74
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %14, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %79, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add i64 %76, %84
  %86 = load i64*, i64** %17, align 8
  %87 = load i32, i32* %14, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  store i64 %85, i64* %89, align 8
  br label %90

90:                                               ; preds = %70
  %91 = load i32, i32* %14, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %14, align 4
  br label %64

93:                                               ; preds = %64
  %94 = call i32* (...) @ZSTD_createCCtx()
  store i32* %94, i32** %16, align 8
  %95 = load i32*, i32** %16, align 8
  %96 = icmp ne i32* %95, null
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load i8*, i8** %18, align 8
  %99 = icmp ne i8* %98, null
  br i1 %99, label %101, label %100

100:                                              ; preds = %97, %93
  store double -1.000000e+00, double* %12, align 8
  br label %213

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %117

104:                                              ; preds = %101
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %7, align 4
  %112 = call i32* @ZSTD_createCDict(i32 %107, i64 %110, i32 %111)
  store i32* %112, i32** %15, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %104
  store double -1.000000e+00, double* %12, align 8
  br label %213

116:                                              ; preds = %104
  br label %117

117:                                              ; preds = %116, %101
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = inttoptr i64 %120 to i32*
  store i32* %121, i32** %20, align 8
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %180, %117
  %123 = load i32, i32* %14, align 4
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %183

128:                                              ; preds = %122
  %129 = load i32, i32* %11, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %151

131:                                              ; preds = %128
  %132 = load i32*, i32** %16, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = load i64, i64* %13, align 8
  %135 = load i32*, i32** %20, align 8
  %136 = load i64*, i64** %17, align 8
  %137 = load i32, i32* %14, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i64, i64* %136, i64 %138
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i32, i32* %135, i64 %140
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  %144 = load i64*, i64** %143, align 8
  %145 = load i32, i32* %14, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = load i32*, i32** %15, align 8
  %150 = call i64 @ZSTD_compress_usingCDict(i32* %132, i8* %133, i64 %134, i32* %141, i64 %148, i32* %149)
  store i64 %150, i64* %21, align 8
  br label %171

151:                                              ; preds = %128
  %152 = load i32*, i32** %16, align 8
  %153 = load i8*, i8** %18, align 8
  %154 = load i64, i64* %13, align 8
  %155 = load i32*, i32** %20, align 8
  %156 = load i64*, i64** %17, align 8
  %157 = load i32, i32* %14, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i64, i64* %156, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i32, i32* %155, i64 %160
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 1
  %164 = load i64*, i64** %163, align 8
  %165 = load i32, i32* %14, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i64, i64* %164, i64 %166
  %168 = load i64, i64* %167, align 8
  %169 = load i32, i32* %7, align 4
  %170 = call i64 @ZSTD_compressCCtx(i32* %152, i8* %153, i64 %154, i32* %161, i64 %168, i32 %169)
  store i64 %170, i64* %21, align 8
  br label %171

171:                                              ; preds = %151, %131
  %172 = load i64, i64* %21, align 8
  %173 = call i64 @ZSTD_isError(i64 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %171
  store double -1.000000e+00, double* %12, align 8
  br label %213

176:                                              ; preds = %171
  %177 = load i64, i64* %21, align 8
  %178 = load i64, i64* %9, align 8
  %179 = add i64 %178, %177
  store i64 %179, i64* %9, align 8
  br label %180

180:                                              ; preds = %176
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %14, align 4
  br label %122

183:                                              ; preds = %122
  store i32 0, i32* %14, align 4
  br label %184

184:                                              ; preds = %200, %183
  %185 = load i32, i32* %14, align 4
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %203

190:                                              ; preds = %184
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %14, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  %197 = load i64, i64* %196, align 8
  %198 = load i64, i64* %10, align 8
  %199 = add i64 %198, %197
  store i64 %199, i64* %10, align 8
  br label %200

200:                                              ; preds = %190
  %201 = load i32, i32* %14, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %14, align 4
  br label %184

203:                                              ; preds = %184
  %204 = load i64, i64* %10, align 8
  %205 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %204)
  %206 = load i64, i64* %9, align 8
  %207 = call i32 @DISPLAYLEVEL(i32 2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %206)
  %208 = load i64, i64* %10, align 8
  %209 = uitofp i64 %208 to double
  %210 = load i64, i64* %9, align 8
  %211 = uitofp i64 %210 to double
  %212 = fdiv double %209, %211
  store double %212, double* %12, align 8
  br label %213

213:                                              ; preds = %203, %175, %115, %100
  %214 = load i8*, i8** %18, align 8
  %215 = bitcast i8* %214 to i64*
  %216 = call i32 @free(i64* %215)
  %217 = load i64*, i64** %17, align 8
  %218 = call i32 @free(i64* %217)
  %219 = load i32*, i32** %16, align 8
  %220 = call i32 @ZSTD_freeCCtx(i32* %219)
  %221 = load i32*, i32** %15, align 8
  %222 = call i32 @ZSTD_freeCDict(i32* %221)
  %223 = load double, double* %12, align 8
  ret double %223
}

declare dso_local i64 @MAX(i64, i64) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createCDict(i32, i64, i32) #1

declare dso_local i64 @ZSTD_compress_usingCDict(i32*, i8*, i64, i32*, i64, i32*) #1

declare dso_local i64 @ZSTD_compressCCtx(i32*, i8*, i64, i32*, i64, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i32 @DISPLAYLEVEL(i32, i8*, i64) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @ZSTD_freeCDict(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
