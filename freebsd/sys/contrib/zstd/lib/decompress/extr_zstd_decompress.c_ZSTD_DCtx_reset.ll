; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/decompress/extr_zstd_decompress.c_ZSTD_DCtx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32, i32, i64 }

@ZSTD_reset_session_only = common dso_local global i64 0, align 8
@ZSTD_reset_session_and_parameters = common dso_local global i64 0, align 8
@zdss_init = common dso_local global i64 0, align 8
@ZSTD_reset_parameters = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@ZSTD_f_zstd1 = common dso_local global i32 0, align 4
@ZSTD_MAXWINDOWSIZE_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_DCtx_reset(%struct.TYPE_4__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @ZSTD_reset_session_only, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = load i64, i64* @ZSTD_reset_session_and_parameters, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %8, %2
  %13 = load i64, i64* @zdss_init, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  br label %18

18:                                               ; preds = %12, %8
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ZSTD_reset_parameters, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* @ZSTD_reset_session_and_parameters, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %22, %18
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @zdss_init, align 8
  %31 = icmp ne i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* @stage_wrong, align 4
  %34 = call i32 @RETURN_ERROR_IF(i32 %32, i32 %33)
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %36 = call i32 @ZSTD_clearDict(%struct.TYPE_4__* %35)
  %37 = load i32, i32* @ZSTD_f_zstd1, align 4
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ZSTD_MAXWINDOWSIZE_DEFAULT, align 4
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %26, %22
  ret i64 0
}

declare dso_local i32 @RETURN_ERROR_IF(i32, i32) #1

declare dso_local i32 @ZSTD_clearDict(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
