; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_streaming_compression.c_compressFile_orDie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/examples/extr_multiple_streaming_compression.c_compressFile_orDie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@ZSTD_reset_session_only = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@ZSTD_e_continue = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"Impossible: zstd only returns 0 when the input is completely consumed!\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i8*, i8*)* @compressFile_orDie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compressFile_orDie(%struct.TYPE_7__* byval(%struct.TYPE_7__) align 8 %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_9__, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__, align 4
  %15 = alloca i64, align 8
  store i8* %1, i8** %4, align 8
  store i8* %2, i8** %5, align 8
  %16 = load i8*, i8** %4, align 8
  %17 = call i32* @fopen_orDie(i8* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %17, i32** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32* @fopen_orDie(i8* %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %19, i32** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ZSTD_reset_session_only, align 4
  %23 = call i64 @ZSTD_CCtx_reset(i32 %21, i32 %22)
  %24 = call i32 @CHECK_ZSTD(i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %96, %3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i32*, i32** %6, align 8
  %32 = call i64 @fread_orDie(i32 %29, i64 %30, i32* %31)
  store i64 %32, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %104

34:                                               ; preds = %27
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %8, align 8
  %37 = icmp ult i64 %35, %36
  %38 = zext i1 %37 to i32
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %34
  %42 = load i32, i32* @ZSTD_e_end, align 4
  br label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @ZSTD_e_continue, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi i32 [ %42, %41 ], [ %44, %43 ]
  store i32 %46, i32* %11, align 4
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %47, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %52 = load i64, i64* %9, align 8
  store i64 %52, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  store i64 0, i64* %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 3
  store i32 0, i32* %54, align 8
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 4
  store i32 0, i32* %55, align 4
  br label %56

56:                                               ; preds = %92, %45
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %57, align 4
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %60, align 4
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i64 @ZSTD_compressStream2(i32 %66, %struct.TYPE_8__* %14, %struct.TYPE_9__* %12, i32 %67)
  store i64 %68, i64* %15, align 8
  %69 = load i64, i64* %15, align 8
  %70 = call i32 @CHECK_ZSTD(i64 %69)
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %0, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %7, align 8
  %76 = call i32 @fwrite_orDie(i32 %72, i32 %74, i32* %75)
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %56
  %80 = load i64, i64* %15, align 8
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  br label %90

83:                                               ; preds = %56
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %85, %87
  %89 = zext i1 %88 to i32
  br label %90

90:                                               ; preds = %83, %79
  %91 = phi i32 [ %82, %79 ], [ %89, %83 ]
  store i32 %91, i32* %13, align 4
  br label %92

92:                                               ; preds = %90
  %93 = load i32, i32* %13, align 4
  %94 = icmp ne i32 %93, 0
  %95 = xor i1 %94, true
  br i1 %95, label %56, label %96

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %98, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @CHECK(i32 %102, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0))
  br label %27

104:                                              ; preds = %27
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @fclose_orDie(i32* %105)
  %107 = load i32*, i32** %6, align 8
  %108 = call i32 @fclose_orDie(i32* %107)
  ret void
}

declare dso_local i32* @fopen_orDie(i8*, i8*) #1

declare dso_local i32 @CHECK_ZSTD(i64) #1

declare dso_local i64 @ZSTD_CCtx_reset(i32, i32) #1

declare dso_local i64 @fread_orDie(i32, i64, i32*) #1

declare dso_local i64 @ZSTD_compressStream2(i32, %struct.TYPE_8__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @fwrite_orDie(i32, i32, i32*) #1

declare dso_local i32 @CHECK(i32, i8*) #1

declare dso_local i32 @fclose_orDie(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
