; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_createDResources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/programs/extr_fileio.c_FIO_createDResources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i8*, i8*, i32, i32 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"Error: %s : can't create ZSTD_DStream\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Allocation error : not enough memory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_7__*, i8*)* @FIO_createDResources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FIO_createDResources(%struct.TYPE_6__* noalias sret %0, %struct.TYPE_7__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  store i8* %2, i8** %5, align 8
  %8 = call i32 @memset(%struct.TYPE_6__* %0, i32 0, i32 32)
  %9 = call i32* (...) @ZSTD_createDStream()
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  store i32* %9, i32** %10, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @errno, align 4
  %16 = call i32 @strerror(i32 %15)
  %17 = call i32 (i32, i8*, ...) @EXM_THROW(i32 60, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %16)
  br label %18

18:                                               ; preds = %14, %3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ZSTD_DCtx_setMaxWindowSize(i32* %20, i32 %23)
  %25 = call i32 @CHECK(i32 %24)
  %26 = call i32 (...) @ZSTD_DStreamInSize()
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  store i32 %26, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @malloc(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = call i32 (...) @ZSTD_DStreamOutSize()
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  store i32 %32, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @malloc(i32 %35)
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %18
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41, %18
  %46 = call i32 (i32, i8*, ...) @EXM_THROW(i32 61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = load i8*, i8** %5, align 8
  %49 = call i64 @FIO_createDictBuffer(i8** %6, i8* %48)
  store i64 %49, i64* %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i8*, i8** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32 @ZSTD_initDStream_usingDict(i32* %51, i8* %52, i64 %53)
  %55 = call i32 @CHECK(i32 %54)
  %56 = load i8*, i8** %6, align 8
  %57 = call i32 @free(i8* %56)
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32* @ZSTD_createDStream(...) #1

declare dso_local i32 @EXM_THROW(i32, i8*, ...) #1

declare dso_local i32 @strerror(i32) #1

declare dso_local i32 @CHECK(i32) #1

declare dso_local i32 @ZSTD_DCtx_setMaxWindowSize(i32*, i32) #1

declare dso_local i32 @ZSTD_DStreamInSize(...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @ZSTD_DStreamOutSize(...) #1

declare dso_local i64 @FIO_createDictBuffer(i8**, i8*) #1

declare dso_local i32 @ZSTD_initDStream_usingDict(i32*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
