; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_writeEpilogue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_writeEpilogue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"ZSTD_writeEpilogue\00", align 1
@ZSTDcs_created = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"init missing\00", align 1
@ZSTDcs_init = common dso_local global i64 0, align 8
@ZSTDcs_ongoing = common dso_local global i64 0, align 8
@ZSTDcs_ending = common dso_local global i64 0, align 8
@bt_raw = common dso_local global i64 0, align 8
@dstSize_tooSmall = common dso_local global i32 0, align 4
@ZSTD_blockHeaderSize = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"ZSTD_writeEpilogue: write checksum : %08X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_6__*, i8*, i64)* @ZSTD_writeEpilogue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_writeEpilogue(%struct.TYPE_6__* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to i32*
  store i32* %13, i32** %7, align 8
  %14 = load i32*, i32** %7, align 8
  store i32* %14, i32** %8, align 8
  store i64 0, i64* %9, align 8
  %15 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @ZSTDcs_created, align 8
  %20 = icmp eq i64 %18, %19
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* @stage_wrong, align 4
  %23 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %21, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZSTDcs_init, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %46

29:                                               ; preds = %3
  %30 = load i8*, i8** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = call i64 @ZSTD_writeFrameHeader(i8* %30, i64 %31, %struct.TYPE_7__* %33, i32 0, i32 0)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i32 @FORWARD_IF_ERROR(i64 %35)
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %6, align 8
  %39 = sub i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 %40
  store i32* %42, i32** %8, align 8
  %43 = load i64, i64* @ZSTDcs_ongoing, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %29, %3
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @ZSTDcs_ending, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %72

52:                                               ; preds = %46
  %53 = load i64, i64* @bt_raw, align 8
  %54 = trunc i64 %53 to i32
  %55 = shl i32 %54, 1
  %56 = add nsw i32 1, %55
  %57 = add nsw i32 %56, 0
  store i32 %57, i32* %10, align 4
  %58 = load i64, i64* %6, align 8
  %59 = icmp ult i64 %58, 4
  %60 = zext i1 %59 to i32
  %61 = load i32, i32* @dstSize_tooSmall, align 4
  %62 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @MEM_writeLE32(i32* %63, i32 %64)
  %66 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 %66
  store i32* %68, i32** %8, align 8
  %69 = load i64, i64* @ZSTD_blockHeaderSize, align 8
  %70 = load i64, i64* %6, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %6, align 8
  br label %72

72:                                               ; preds = %52, %46
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %96

79:                                               ; preds = %72
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = call i64 @XXH64_digest(i32* %81)
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %11, align 4
  %84 = load i64, i64* %6, align 8
  %85 = icmp ult i64 %84, 4
  %86 = zext i1 %85 to i32
  %87 = load i32, i32* @dstSize_tooSmall, align 4
  %88 = call i32 (i32, i32, ...) @RETURN_ERROR_IF(i32 %86, i32 %87)
  %89 = load i32, i32* %11, align 4
  %90 = call i32 (i32, i8*, ...) @DEBUGLOG(i32 4, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  %91 = load i32*, i32** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @MEM_writeLE32(i32* %91, i32 %92)
  %94 = load i32*, i32** %8, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 4
  store i32* %95, i32** %8, align 8
  br label %96

96:                                               ; preds = %79, %72
  %97 = load i64, i64* @ZSTDcs_created, align 8
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load i32*, i32** %8, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = ptrtoint i32* %100 to i64
  %103 = ptrtoint i32* %101 to i64
  %104 = sub i64 %102, %103
  %105 = sdiv exact i64 %104, 4
  ret i64 %105
}

declare dso_local i32 @DEBUGLOG(i32, i8*, ...) #1

declare dso_local i32 @RETURN_ERROR_IF(i32, i32, ...) #1

declare dso_local i64 @ZSTD_writeFrameHeader(i8*, i64, %struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @FORWARD_IF_ERROR(i64) #1

declare dso_local i32 @MEM_writeLE32(i32*, i32) #1

declare dso_local i64 @XXH64_digest(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
