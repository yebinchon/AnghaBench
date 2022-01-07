; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_cParamsToPVals.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/tests/extr_paramgrill.c_cParamsToPVals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32* }

@wlog_ind = common dso_local global i64 0, align 8
@clog_ind = common dso_local global i64 0, align 8
@hlog_ind = common dso_local global i64 0, align 8
@slog_ind = common dso_local global i64 0, align 8
@mml_ind = common dso_local global i64 0, align 8
@tlen_ind = common dso_local global i64 0, align 8
@strt_ind = common dso_local global i64 0, align 8
@NUM_PARAMS = common dso_local global i64 0, align 8
@mintable = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_6__*)* @cParamsToPVals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cParamsToPVals(%struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %0) #0 {
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 6
  %5 = load i32, i32* %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load i64, i64* @wlog_ind, align 8
  %9 = getelementptr inbounds i32, i32* %7, i64 %8
  store i32 %5, i32* %9, align 4
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 5
  %11 = load i32, i32* %10, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = load i64, i64* @clog_ind, align 8
  %15 = getelementptr inbounds i32, i32* %13, i64 %14
  store i32 %11, i32* %15, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i64, i64* @hlog_ind, align 8
  %21 = getelementptr inbounds i32, i32* %19, i64 %20
  store i32 %17, i32* %21, align 4
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @slog_ind, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 %23, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @mml_ind, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  store i32 %29, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @tlen_ind, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %35, i32* %39, align 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %0, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i64, i64* @strt_ind, align 8
  %45 = getelementptr inbounds i32, i32* %43, i64 %44
  store i32 %41, i32* %45, align 4
  %46 = load i64, i64* @strt_ind, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %3, align 8
  br label %48

48:                                               ; preds = %61, %1
  %49 = load i64, i64* %3, align 8
  %50 = load i64, i64* @NUM_PARAMS, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %48
  %53 = load i32*, i32** @mintable, align 8
  %54 = load i64, i64* %3, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i64, i64* %3, align 8
  %60 = getelementptr inbounds i32, i32* %58, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i64, i64* %3, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %48

64:                                               ; preds = %48
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  ret i32* %66
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
