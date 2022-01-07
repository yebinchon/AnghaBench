; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_streaming_compression.c_compressFile_orDie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_streaming_compression.c_compressFile_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i8*, i64, i64, i64, i32 }
%struct.TYPE_5__ = type { i8*, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ZSTD_createCCtx() failed!\00", align 1
@ZSTD_c_compressionLevel = common dso_local global i32 0, align 4
@ZSTD_c_checksumFlag = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@ZSTD_e_continue = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [71 x i8] c"Impossible: zstd only returns 0 when the input is completely consumed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i32)* @compressFile_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressFile_orDie(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_6__, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.TYPE_5__, align 8
  %21 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32* @fopen_orDie(i8* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %23, i32** %7, align 8
  %24 = load i8*, i8** %5, align 8
  %25 = call i32* @fopen_orDie(i8* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %8, align 8
  %26 = call i64 (...) @ZSTD_CStreamInSize()
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = call i8* @malloc_orDie(i64 %27)
  store i8* %28, i8** %10, align 8
  %29 = call i64 (...) @ZSTD_CStreamOutSize()
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i8* @malloc_orDie(i64 %30)
  store i8* %31, i8** %12, align 8
  %32 = call i32* (...) @ZSTD_createCCtx()
  store i32* %32, i32** %13, align 8
  %33 = load i32*, i32** %13, align 8
  %34 = icmp ne i32* %33, null
  %35 = zext i1 %34 to i32
  %36 = call i32 @CHECK(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %37 = load i32*, i32** %13, align 8
  %38 = load i32, i32* @ZSTD_c_compressionLevel, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @ZSTD_CCtx_setParameter(i32* %37, i32 %38, i32 %39)
  %41 = call i32 @CHECK_ZSTD(i64 %40)
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* @ZSTD_c_checksumFlag, align 4
  %44 = call i64 @ZSTD_CCtx_setParameter(i32* %42, i32 %43, i32 1)
  %45 = call i32 @CHECK_ZSTD(i64 %44)
  %46 = load i64, i64* %9, align 8
  store i64 %46, i64* %14, align 8
  br label %47

47:                                               ; preds = %118, %3
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %14, align 8
  %50 = load i32*, i32** %7, align 8
  %51 = call i64 @fread_orDie(i8* %48, i64 %49, i32* %50)
  store i64 %51, i64* %15, align 8
  %52 = load i64, i64* %15, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp ult i64 %52, %53
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %16, align 4
  %56 = load i32, i32* %16, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %47
  %59 = load i32, i32* @ZSTD_e_end, align 4
  br label %62

60:                                               ; preds = %47
  %61 = load i32, i32* @ZSTD_e_continue, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  store i32 %63, i32* %17, align 4
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %65 = load i8*, i8** %10, align 8
  store i8* %65, i8** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %67 = load i64, i64* %15, align 8
  store i64 %67, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  store i64 0, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  store i64 0, i64* %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 4
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %103, %62
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %73 = load i8*, i8** %12, align 8
  store i8* %73, i8** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  store i32 0, i32* %76, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 3
  store i32 0, i32* %77, align 4
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i64 @ZSTD_compressStream2(i32* %78, %struct.TYPE_5__* %20, %struct.TYPE_6__* %18, i32 %79)
  store i64 %80, i64* %21, align 8
  %81 = load i64, i64* %21, align 8
  %82 = call i32 @CHECK_ZSTD(i64 %81)
  %83 = load i8*, i8** %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32 @fwrite_orDie(i8* %83, i32 %85, i32* %86)
  %88 = load i32, i32* %16, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %71
  %91 = load i64, i64* %21, align 8
  %92 = icmp eq i64 %91, 0
  %93 = zext i1 %92 to i32
  br label %101

94:                                               ; preds = %71
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp eq i64 %96, %98
  %100 = zext i1 %99 to i32
  br label %101

101:                                              ; preds = %94, %90
  %102 = phi i32 [ %93, %90 ], [ %100, %94 ]
  store i32 %102, i32* %19, align 4
  br label %103

103:                                              ; preds = %101
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  br i1 %106, label %71, label %107

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = icmp eq i64 %109, %111
  %113 = zext i1 %112 to i32
  %114 = call i32 @CHECK(i32 %113, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0))
  %115 = load i32, i32* %16, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %107
  br label %119

118:                                              ; preds = %107
  br label %47

119:                                              ; preds = %117
  %120 = load i32*, i32** %13, align 8
  %121 = call i32 @ZSTD_freeCCtx(i32* %120)
  %122 = load i32*, i32** %8, align 8
  %123 = call i32 @fclose_orDie(i32* %122)
  %124 = load i32*, i32** %7, align 8
  %125 = call i32 @fclose_orDie(i32* %124)
  %126 = load i8*, i8** %10, align 8
  %127 = call i32 @free(i8* %126)
  %128 = load i8*, i8** %12, align 8
  %129 = call i32 @free(i8* %128)
  ret void
}

declare dso_local i32* @fopen_orDie(i8*, i8*) #1

declare dso_local i64 @ZSTD_CStreamInSize(...) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i64 @ZSTD_CStreamOutSize(...) #1

declare dso_local i32* @ZSTD_createCCtx(...) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i64 @ZSTD_CCtx_setParameter(i32*, i32, i32) #1

declare dso_local i64 @fread_orDie(i8*, i64, i32*) #1

declare dso_local i64 @ZSTD_compressStream2(i32*, %struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @fwrite_orDie(i8*, i32, i32*) #1

declare dso_local i32 @ZSTD_freeCCtx(i32*) #1

declare dso_local i32 @fclose_orDie(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
