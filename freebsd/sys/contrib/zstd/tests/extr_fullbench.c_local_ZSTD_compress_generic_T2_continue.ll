; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compress_generic_T2_continue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_fullbench.c_local_ZSTD_compress_generic_T2_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i8* }
%struct.TYPE_6__ = type { i64, i64, i8* }

@g_cstream = common dso_local global i32 0, align 4
@ZSTD_c_nbWorkers = common dso_local global i32 0, align 4
@ZSTD_e_continue = common dso_local global i32 0, align 4
@ZSTD_e_end = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i8*)* @local_ZSTD_compress_generic_T2_continue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @local_ZSTD_compress_generic_T2_continue(i8* %0, i64 %1, i8* %2, i64 %3, i8* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_6__, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %13 = load i8*, i8** %10, align 8
  %14 = load i32, i32* @g_cstream, align 4
  %15 = load i32, i32* @ZSTD_c_nbWorkers, align 4
  %16 = call i32 @ZSTD_CCtx_setParameter(i32 %14, i32 %15, i32 2)
  %17 = load i8*, i8** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 2
  store i8* %17, i8** %18, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  store i64 %19, i64* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 2
  store i8* %22, i8** %23, align 8
  %24 = load i64, i64* %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @g_cstream, align 4
  %28 = load i32, i32* @ZSTD_e_continue, align 4
  %29 = call i64 @ZSTD_compressStream2(i32 %27, %struct.TYPE_5__* %11, %struct.TYPE_6__* %12, i32 %28)
  br label %30

30:                                               ; preds = %35, %5
  %31 = load i32, i32* @g_cstream, align 4
  %32 = load i32, i32* @ZSTD_e_end, align 4
  %33 = call i64 @ZSTD_compressStream2(i32 %31, %struct.TYPE_5__* %11, %struct.TYPE_6__* %12, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %30

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  ret i64 %38
}

declare dso_local i32 @ZSTD_CCtx_setParameter(i32, i32, i32) #1

declare dso_local i64 @ZSTD_compressStream2(i32, %struct.TYPE_5__*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
