; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_length.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-cmd-queue.c_cvmx_cmd_queue_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_10__, i8* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_12__, %struct.TYPE_11__, i8* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__, i8* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_18__ = type { %struct.TYPE_14__, i8* }
%struct.TYPE_14__ = type { i32 }

@CVMX_ENABLE_PARAMETER_CHECKING = common dso_local global i64 0, align 8
@CVMX_CMD_QUEUE_INVALID_PARAM = common dso_local global i32 0, align 4
@CVMX_PKO_REG_READ_IDX = common dso_local global i32 0, align 4
@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG9 = common dso_local global i32 0, align 4
@CVMX_PKO_MEM_DEBUG8 = common dso_local global i32 0, align 4
@OCTEON_FEATURE_PKND = common dso_local global i32 0, align 4
@OCTEON_FEATURE_NPEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_cmd_queue_length(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__, align 8
  %5 = alloca %struct.TYPE_16__, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_18__, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i64, i64* @CVMX_ENABLE_PARAMETER_CHECKING, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @__cvmx_cmd_queue_get_state(i32 %11)
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %15, i32* %2, align 4
  br label %77

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16, %1
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 16711680
  switch i32 %19, label %75 [
    i32 130, label %20
    i32 128, label %50
    i32 133, label %50
    i32 129, label %50
    i32 132, label %51
    i32 131, label %73
  ]

20:                                               ; preds = %17
  %21 = load i32, i32* @CVMX_PKO_REG_READ_IDX, align 4
  %22 = load i32, i32* %3, align 4
  %23 = and i32 %22, 65535
  %24 = call i32 @cvmx_write_csr(i32 %21, i32 %23)
  %25 = load i32, i32* @OCTEON_CN3XXX, align 4
  %26 = call i32 @OCTEON_IS_MODEL(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %20
  %29 = load i32, i32* @CVMX_PKO_MEM_DEBUG9, align 4
  %30 = call i8* @cvmx_read_csr(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 1
  store i8* %30, i8** %31, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %4, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %2, align 4
  br label %77

35:                                               ; preds = %20
  %36 = load i32, i32* @CVMX_PKO_MEM_DEBUG8, align 4
  %37 = call i8* @cvmx_read_csr(i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 2
  store i8* %37, i8** %38, align 8
  %39 = load i32, i32* @OCTEON_FEATURE_PKND, align 4
  %40 = call i32 @octeon_has_feature(i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %35
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %2, align 4
  br label %77

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %5, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %2, align 4
  br label %77

50:                                               ; preds = %17, %17, %17
  store i32 0, i32* %2, align 4
  br label %77

51:                                               ; preds = %17
  %52 = load i32, i32* @OCTEON_FEATURE_NPEI, align 4
  %53 = call i32 @octeon_has_feature(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %51
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 7
  %58 = call i32 @CVMX_PEXP_NPEI_DMAX_COUNTS(i32 %57)
  %59 = call i8* @cvmx_read_csr(i32 %58)
  %60 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i8* %59, i8** %60, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  store i32 %63, i32* %2, align 4
  br label %77

64:                                               ; preds = %51
  %65 = load i32, i32* %3, align 4
  %66 = and i32 %65, 7
  %67 = call i32 @CVMX_DPI_DMAX_COUNTS(i32 %66)
  %68 = call i8* @cvmx_read_csr(i32 %67)
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 1
  store i8* %68, i8** %69, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %7, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %2, align 4
  br label %77

73:                                               ; preds = %17
  %74 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %74, i32* %2, align 4
  br label %77

75:                                               ; preds = %17
  %76 = load i32, i32* @CVMX_CMD_QUEUE_INVALID_PARAM, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %73, %64, %55, %50, %46, %42, %28, %14
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32* @__cvmx_cmd_queue_get_state(i32) #1

declare dso_local i32 @cvmx_write_csr(i32, i32) #1

declare dso_local i32 @OCTEON_IS_MODEL(i32) #1

declare dso_local i8* @cvmx_read_csr(i32) #1

declare dso_local i32 @octeon_has_feature(i32) #1

declare dso_local i32 @CVMX_PEXP_NPEI_DMAX_COUNTS(i32) #1

declare dso_local i32 @CVMX_DPI_DMAX_COUNTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
