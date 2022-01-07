; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_ereport_post.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_ereport_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@NV_ENCODE_NATIVE = common dso_local global i32 0, align 4
@ERPT_DATA_SZ = common dso_local global i64 0, align 8
@erpt_kstat_data = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@SUNW_VENDOR = common dso_local global i32 0, align 4
@EC_DEV_STATUS = common dso_local global i32 0, align 4
@ESC_DEV_DLE = common dso_local global i32 0, align 4
@DDI_SLEEP = common dso_local global i32 0, align 4
@EC_FM = common dso_local global i32 0, align 4
@ESC_FM_ERROR = common dso_local global i32 0, align 4
@EVCH_CREAT = common dso_local global i32 0, align 4
@EVCH_HOLD_PEND = common dso_local global i32 0, align 4
@FM_ERROR_CHAN = common dso_local global i32 0, align 4
@FM_PUB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_ereport_post(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i64 0, i64* %5, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = load i32, i32* @NV_ENCODE_NATIVE, align 4
  %10 = call i32 @nvlist_size(i32* %8, i64* %5, i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = load i64, i64* @ERPT_DATA_SZ, align 8
  %13 = icmp ugt i64 %11, %12
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14, %2
  %18 = call i32 @atomic_inc_64(i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @erpt_kstat_data, i32 0, i32 0, i32 0, i32 0))
  br label %26

19:                                               ; preds = %14
  %20 = load i32, i32* @SUNW_VENDOR, align 4
  %21 = load i32, i32* @EC_DEV_STATUS, align 4
  %22 = load i32, i32* @ESC_DEV_DLE, align 4
  %23 = load i32*, i32** %3, align 8
  %24 = load i32, i32* @DDI_SLEEP, align 4
  %25 = call i32 @ddi_log_sysevent(i32* null, i32 %20, i32 %21, i32 %22, i32* %23, i32* %7, i32 %24)
  br label %26

26:                                               ; preds = %19, %17
  ret void
}

declare dso_local i32 @nvlist_size(i32*, i64*, i32) #1

declare dso_local i32 @atomic_inc_64(i32*) #1

declare dso_local i32 @ddi_log_sysevent(i32*, i32, i32, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
