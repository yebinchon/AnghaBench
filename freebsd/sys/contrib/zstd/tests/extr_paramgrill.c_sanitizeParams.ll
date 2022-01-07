; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_sanitizeParams.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_sanitizeParams.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64* }

@strt_ind = common dso_local global i64 0, align 8
@ZSTD_fast = common dso_local global i64 0, align 8
@clog_ind = common dso_local global i64 0, align 8
@slog_ind = common dso_local global i64 0, align 8
@ZSTD_dfast = common dso_local global i64 0, align 8
@ZSTD_btopt = common dso_local global i64 0, align 8
@tlen_ind = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64*)* @sanitizeParams to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @sanitizeParams(i64* %0) #0 {
  %2 = alloca %struct.TYPE_4__, align 8
  %3 = alloca %struct.TYPE_4__, align 8
  %4 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  store i64* %0, i64** %4, align 8
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %6 = load i64*, i64** %5, align 8
  %7 = load i64, i64* @strt_ind, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @ZSTD_fast, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @clog_ind, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  store i64 0, i64* %16, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @slog_ind, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  store i64 0, i64* %20, align 8
  br label %21

21:                                               ; preds = %12, %1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load i64, i64* @strt_ind, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @ZSTD_dfast, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @slog_ind, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %29, %21
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @strt_ind, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZSTD_btopt, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %34
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* @strt_ind, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZSTD_fast, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i64, i64* @tlen_ind, align 8
  %54 = getelementptr inbounds i64, i64* %52, i64 %53
  store i64 0, i64* %54, align 8
  br label %55

55:                                               ; preds = %50, %42, %34
  %56 = bitcast %struct.TYPE_4__* %2 to i8*
  %57 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %56, i8* align 8 %57, i64 8, i1 false)
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  ret i64* %59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
