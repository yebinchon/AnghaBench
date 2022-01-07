; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/examples/extr_parallel_processing.c_sumFrame.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/contrib/seekable_format/examples/extr_parallel_processing.c_sumFrame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sum_job = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"ZSTD_seekable_create() error \0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"ZSTD_seekable_init() error : %s \0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"ZSTD_seekable_decompressFrame() error : %s \0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sumFrame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sumFrame(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sum_job*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.sum_job*
  store %struct.sum_job* %13, %struct.sum_job** %3, align 8
  %14 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %15 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %17 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @fopen_orDie(i32 %18, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %19, i32** %4, align 8
  %20 = call i32* (...) @ZSTD_seekable_create()
  store i32* %20, i32** %5, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %1
  %24 = load i32, i32* @stderr, align 4
  %25 = call i32 (i32, i8*, ...) @fprintf(i32 %24, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %26 = call i32 @exit(i32 10) #3
  unreachable

27:                                               ; preds = %1
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %4, align 8
  %30 = call i64 @ZSTD_seekable_initFile(i32* %28, i32* %29)
  store i64 %30, i64* %6, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i64 @ZSTD_isError(i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load i32, i32* @stderr, align 4
  %36 = load i64, i64* %6, align 8
  %37 = call i8* @ZSTD_getErrorName(i64 %36)
  %38 = call i32 (i32, i8*, ...) @fprintf(i32 %35, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  %39 = call i32 @exit(i32 11) #3
  unreachable

40:                                               ; preds = %27
  %41 = load i32*, i32** %5, align 8
  %42 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %43 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @ZSTD_seekable_getFrameDecompressedSize(i32* %41, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i8* @malloc_orDie(i64 %46)
  store i8* %47, i8** %8, align 8
  %48 = load i32*, i32** %5, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %52 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i64 @ZSTD_seekable_decompressFrame(i32* %48, i8* %49, i64 %50, i32 %53)
  store i64 %54, i64* %9, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @ZSTD_isError(i64 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load i32, i32* @stderr, align 4
  %60 = load i64, i64* %9, align 8
  %61 = call i8* @ZSTD_getErrorName(i64 %60)
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %59, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  %63 = call i32 @exit(i32 12) #3
  unreachable

64:                                               ; preds = %40
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  br label %65

65:                                               ; preds = %77, %64
  %66 = load i64, i64* %11, align 8
  %67 = load i64, i64* %7, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load i8*, i8** %8, align 8
  %71 = load i64, i64* %11, align 8
  %72 = getelementptr inbounds i8, i8* %70, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i64
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, %74
  store i64 %76, i64* %10, align 8
  br label %77

77:                                               ; preds = %69
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %11, align 8
  br label %65

80:                                               ; preds = %65
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %83 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %82, i32 0, i32 1
  store i64 %81, i64* %83, align 8
  %84 = load %struct.sum_job*, %struct.sum_job** %3, align 8
  %85 = getelementptr inbounds %struct.sum_job, %struct.sum_job* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32*, i32** %4, align 8
  %87 = call i32 @fclose(i32* %86)
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @ZSTD_seekable_free(i32* %88)
  %90 = load i8*, i8** %8, align 8
  %91 = call i32 @free(i8* %90)
  ret void
}

declare dso_local i32* @fopen_orDie(i32, i8*) #1

declare dso_local i32* @ZSTD_seekable_create(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i64 @ZSTD_seekable_initFile(i32*, i32*) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i8* @ZSTD_getErrorName(i64) #1

declare dso_local i64 @ZSTD_seekable_getFrameDecompressedSize(i32*, i32) #1

declare dso_local i8* @malloc_orDie(i64) #1

declare dso_local i64 @ZSTD_seekable_decompressFrame(i32*, i8*, i64, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @ZSTD_seekable_free(i32*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
