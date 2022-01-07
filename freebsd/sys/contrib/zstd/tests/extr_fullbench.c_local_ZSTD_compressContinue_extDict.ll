; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compressContinue_extDict.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compressContinue_extDict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_5__ }

@FIRST_BLOCK_SIZE = common dso_local global i32 0, align 4
@__const.local_ZSTD_compressContinue_extDict.f = private unnamed_addr constant %struct.TYPE_5__ { i32 1, i32 0, i32 0 }, align 4
@g_zcc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"local_ZSTD_compressContinue_extDict error : %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @local_ZSTD_compressContinue_extDict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @local_ZSTD_compressContinue_extDict(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca %struct.TYPE_5__, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store i8* %2, i8** %9, align 8
  store i64 %3, i64* %10, align 8
  store i8* %4, i8** %11, align 8
  %18 = load i32, i32* @FIRST_BLOCK_SIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  %22 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %22, i8* align 4 bitcast (%struct.TYPE_5__* @__const.local_ZSTD_compressContinue_extDict.f to i8*), i64 12, i1 false)
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %24 = bitcast %struct.TYPE_5__* %23 to i8*
  %25 = bitcast %struct.TYPE_5__* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 12, i1 false)
  %26 = load i8*, i8** %11, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = load i32, i32* %27, align 4
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @g_zcc, align 4
  %31 = load i64, i64* %8, align 8
  %32 = bitcast %struct.TYPE_4__* %14 to { i64, i64 }*
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 4
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %32, i32 0, i32 1
  %36 = load i64, i64* %35, align 4
  %37 = call i32 @ZSTD_compressBegin_advanced(i32 %30, i32* null, i32 0, i64 %34, i64 %36, i64 %31)
  %38 = load i8*, i8** %7, align 8
  %39 = load i32, i32* @FIRST_BLOCK_SIZE, align 4
  %40 = call i32 @memcpy(i32* %21, i8* %38, i32 %39)
  %41 = load i32, i32* @g_zcc, align 4
  %42 = load i8*, i8** %9, align 8
  %43 = load i64, i64* %10, align 8
  %44 = load i32, i32* @FIRST_BLOCK_SIZE, align 4
  %45 = call i64 @ZSTD_compressContinue(i32 %41, i8* %42, i64 %43, i32* %21, i32 %44)
  store i64 %45, i64* %16, align 8
  %46 = load i64, i64* %16, align 8
  %47 = call i64 @ZSTD_isError(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %5
  %50 = load i64, i64* %16, align 8
  %51 = call i32 @ZSTD_getErrorName(i64 %50)
  %52 = call i32 @DISPLAY(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %16, align 8
  store i64 %53, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %77

54:                                               ; preds = %5
  %55 = load i8*, i8** %9, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i64, i64* %16, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = bitcast i32* %58 to i8*
  store i8* %59, i8** %9, align 8
  %60 = load i64, i64* %16, align 8
  %61 = load i64, i64* %10, align 8
  %62 = sub i64 %61, %60
  store i64 %62, i64* %10, align 8
  %63 = load i32, i32* @g_zcc, align 4
  %64 = load i8*, i8** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i8*, i8** %7, align 8
  %67 = bitcast i8* %66 to i32*
  %68 = load i32, i32* @FIRST_BLOCK_SIZE, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i64, i64* %8, align 8
  %72 = load i32, i32* @FIRST_BLOCK_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = sub i64 %71, %73
  %75 = trunc i64 %74 to i32
  %76 = call i64 @ZSTD_compressEnd(i32 %63, i8* %64, i64 %65, i32* %70, i32 %75)
  store i64 %76, i64* %6, align 8
  store i32 1, i32* %17, align 4
  br label %77

77:                                               ; preds = %54, %49
  %78 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_compressBegin_advanced(i32, i32*, i32, i64, i64, i64) #3

declare dso_local i32 @memcpy(i32*, i8*, i32) #3

declare dso_local i64 @ZSTD_compressContinue(i32, i8*, i64, i32*, i32) #3

declare dso_local i64 @ZSTD_isError(i64) #3

declare dso_local i32 @DISPLAY(i8*, i32) #3

declare dso_local i32 @ZSTD_getErrorName(i64) #3

declare dso_local i64 @ZSTD_compressEnd(i32, i8*, i64, i32*, i32) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
