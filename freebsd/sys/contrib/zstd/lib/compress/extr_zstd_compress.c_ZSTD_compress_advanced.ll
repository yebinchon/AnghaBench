; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_advanced.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/compress/extr_zstd_compress.c_ZSTD_compress_advanced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"ZSTD_compress_advanced\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_compress_advanced(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4, i8* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_4__, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %7, i32* %17, align 4
  store i32* %0, i32** %10, align 8
  store i8* %1, i8** %11, align 8
  store i64 %2, i64* %12, align 8
  store i8* %3, i8** %13, align 8
  store i64 %4, i64* %14, align 8
  store i8* %5, i8** %15, align 8
  store i64 %6, i64* %16, align 8
  %18 = call i32 @DEBUGLOG(i32 4, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ZSTD_checkCParams(i32 %20)
  %22 = call i32 @FORWARD_IF_ERROR(i32 %21)
  %23 = load i32*, i32** %10, align 8
  %24 = load i8*, i8** %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load i64, i64* %16, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @ZSTD_compress_internal(i32* %23, i8* %24, i64 %25, i8* %26, i64 %27, i8* %28, i64 %29, i32 %31)
  ret i64 %32
}

declare dso_local i32 @DEBUGLOG(i32, i8*) #1

declare dso_local i32 @FORWARD_IF_ERROR(i32) #1

declare dso_local i32 @ZSTD_checkCParams(i32) #1

declare dso_local i64 @ZSTD_compress_internal(i32*, i8*, i64, i8*, i64, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
