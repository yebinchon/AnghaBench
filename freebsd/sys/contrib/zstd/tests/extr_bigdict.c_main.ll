; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_bigdict.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_bigdict.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Allocation failure\0A\00", align 1
@ZSTD_c_windowLog = common dso_local global i32 0, align 4
@ZSTD_c_nbWorkers = common dso_local global i32 0, align 4
@ZSTD_c_overlapLog = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@ZSTD_c_strategy = common dso_local global i32 0, align 4
@ZSTD_btopt = common dso_local global i32 0, align 4
@ZSTD_c_targetLength = common dso_local global i32 0, align 4
@ZSTD_c_minMatch = common dso_local global i32 0, align 4
@ZSTD_c_searchLog = common dso_local global i32 0, align 4
@ZSTD_c_hashLog = common dso_local global i32 0, align 4
@ZSTD_c_chainLog = common dso_local global i32 0, align 4
@ZSTD_d_windowLogMax = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Compressing 1 GB\0A\00", align 1
@ZSTD_e_continue = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"Success!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = call i32* (...) @ZSTD_createCCtx()
  store i32* %15, i32** %6, align 8
  %16 = call i32* (...) @ZSTD_createDCtx()
  store i32* %16, i32** %7, align 8
  store i64 1073741824, i64* %8, align 8
  %17 = call i64 @ZSTD_compressBound(i64 1073741824)
  store i64 %17, i64* %9, align 8
  store i64 2147483648, i64* %10, align 8
  %18 = call i8* @malloc(i64 2147483648)
  store i8* %18, i8** %11, align 8
  %19 = load i64, i64* %9, align 8
  %20 = call i8* @malloc(i64 %19)
  store i8* %20, i8** %12, align 8
  %21 = call i8* @malloc(i64 1073741824)
  store i8* %21, i8** %13, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i8**, i8*** %5, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = icmp ne i8* %24, null
  br i1 %25, label %26, label %38

26:                                               ; preds = %2
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i8*, i8** %13, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %29
  %33 = load i32*, i32** %6, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load i32*, i32** %7, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %35, %32, %29, %26, %2
  %39 = load i32, i32* @stderr, align 4
  %40 = call i32 @fprintf(i32 %39, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %168

41:                                               ; preds = %35
  %42 = load i32*, i32** %6, align 8
  %43 = load i32, i32* @ZSTD_c_windowLog, align 4
  %44 = call i32 @ZSTD_CCtx_setParameter(i32* %42, i32 %43, i32 31)
  %45 = call i64 @ZSTD_isError(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %168

48:                                               ; preds = %41
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* @ZSTD_c_nbWorkers, align 4
  %51 = call i32 @ZSTD_CCtx_setParameter(i32* %49, i32 %50, i32 1)
  %52 = call i64 @ZSTD_isError(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %168

55:                                               ; preds = %48
  %56 = load i32*, i32** %6, align 8
  %57 = load i32, i32* @ZSTD_c_overlapLog, align 4
  %58 = call i32 @ZSTD_CCtx_setParameter(i32* %56, i32 %57, i32 9)
  %59 = call i64 @ZSTD_isError(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %168

62:                                               ; preds = %55
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %65 = call i32 @ZSTD_CCtx_setParameter(i32* %63, i32 %64, i32 1)
  %66 = call i64 @ZSTD_isError(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  store i32 1, i32* %3, align 4
  br label %168

69:                                               ; preds = %62
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @ZSTD_c_strategy, align 4
  %72 = load i32, i32* @ZSTD_btopt, align 4
  %73 = call i32 @ZSTD_CCtx_setParameter(i32* %70, i32 %71, i32 %72)
  %74 = call i64 @ZSTD_isError(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 1, i32* %3, align 4
  br label %168

77:                                               ; preds = %69
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* @ZSTD_c_targetLength, align 4
  %80 = call i32 @ZSTD_CCtx_setParameter(i32* %78, i32 %79, i32 7)
  %81 = call i64 @ZSTD_isError(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 1, i32* %3, align 4
  br label %168

84:                                               ; preds = %77
  %85 = load i32*, i32** %6, align 8
  %86 = load i32, i32* @ZSTD_c_minMatch, align 4
  %87 = call i32 @ZSTD_CCtx_setParameter(i32* %85, i32 %86, i32 7)
  %88 = call i64 @ZSTD_isError(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %84
  store i32 1, i32* %3, align 4
  br label %168

91:                                               ; preds = %84
  %92 = load i32*, i32** %6, align 8
  %93 = load i32, i32* @ZSTD_c_searchLog, align 4
  %94 = call i32 @ZSTD_CCtx_setParameter(i32* %92, i32 %93, i32 1)
  %95 = call i64 @ZSTD_isError(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  store i32 1, i32* %3, align 4
  br label %168

98:                                               ; preds = %91
  %99 = load i32*, i32** %6, align 8
  %100 = load i32, i32* @ZSTD_c_hashLog, align 4
  %101 = call i32 @ZSTD_CCtx_setParameter(i32* %99, i32 %100, i32 10)
  %102 = call i64 @ZSTD_isError(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i32 1, i32* %3, align 4
  br label %168

105:                                              ; preds = %98
  %106 = load i32*, i32** %6, align 8
  %107 = load i32, i32* @ZSTD_c_chainLog, align 4
  %108 = call i32 @ZSTD_CCtx_setParameter(i32* %106, i32 %107, i32 10)
  %109 = call i64 @ZSTD_isError(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  store i32 1, i32* %3, align 4
  br label %168

112:                                              ; preds = %105
  %113 = load i32*, i32** %7, align 8
  %114 = load i32, i32* @ZSTD_d_windowLogMax, align 4
  %115 = call i32 @ZSTD_DCtx_setParameter(i32* %113, i32 %114, i32 31)
  %116 = call i64 @ZSTD_isError(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  store i32 1, i32* %3, align 4
  br label %168

119:                                              ; preds = %112
  %120 = load i8*, i8** %11, align 8
  %121 = call i32 @RDG_genBuffer(i8* %120, i64 2147483648, double 1.000000e+00, double 0.000000e+00, i32 -1091581186)
  store i32 0, i32* %14, align 4
  br label %122

122:                                              ; preds = %139, %119
  %123 = load i32, i32* %14, align 4
  %124 = icmp slt i32 %123, 10
  br i1 %124, label %125, label %142

125:                                              ; preds = %122
  %126 = load i32, i32* @stderr, align 4
  %127 = call i32 @fprintf(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32*, i32** %6, align 8
  %129 = load i32*, i32** %7, align 8
  %130 = load i8*, i8** %12, align 8
  %131 = load i64, i64* %9, align 8
  %132 = load i8*, i8** %11, align 8
  %133 = load i8*, i8** %13, align 8
  %134 = load i32, i32* @ZSTD_e_continue, align 4
  %135 = call i64 @compress(i32* %128, i32* %129, i8* %130, i64 %131, i8* %132, i64 1073741824, i8* %133, i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %125
  store i32 1, i32* %3, align 4
  br label %168

138:                                              ; preds = %125
  br label %139

139:                                              ; preds = %138
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %14, align 4
  br label %122

142:                                              ; preds = %122
  %143 = load i32, i32* @stderr, align 4
  %144 = call i32 @fprintf(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32*, i32** %6, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = load i8*, i8** %12, align 8
  %148 = load i64, i64* %9, align 8
  %149 = load i8*, i8** %11, align 8
  %150 = load i8*, i8** %13, align 8
  %151 = load i32, i32* @ZSTD_e_end, align 4
  %152 = call i64 @compress(i32* %145, i32* %146, i8* %147, i64 %148, i8* %149, i64 1073741824, i8* %150, i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  store i32 1, i32* %3, align 4
  br label %168

155:                                              ; preds = %142
  %156 = load i32, i32* @stderr, align 4
  %157 = call i32 @fprintf(i32 %156, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %158 = load i8*, i8** %13, align 8
  %159 = call i32 @free(i8* %158)
  %160 = load i8*, i8** %12, align 8
  %161 = call i32 @free(i8* %160)
  %162 = load i8*, i8** %11, align 8
  %163 = call i32 @free(i8* %162)
  %164 = load i32*, i32** %7, align 8
  %165 = call i32 @ZSTD_freeDCtx(i32* %164)
  %166 = load i32*, i32** %6, align 8
  %167 = call i32 @ZSTD_freeCCtx(i32* %166)
  store i32 0, i32* %3, align 4
  br label %168

168:                                              ; preds = %155, %154, %137, %118, %111, %104, %97, %90, %83, %76, %68, %61, %54, %47, %38
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32* @ZSTD_createDCtx(...) #1

declare dso_local i64 @ZSTD_compressBound(i64) #1

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i64 @ZSTD_isError(i32) #1

declare dso_local i32 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

declare dso_local i32 @ZSTD_DCtx_setParameter(i32*, i32, i32) #1

declare dso_local i32 @RDG_genBuffer(i8*, i64, double, double, i32) #1

declare dso_local i64 @compress(i32*, i32*, i8*, i64, i8*, i64, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @ZSTD_freeDCtx(i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
