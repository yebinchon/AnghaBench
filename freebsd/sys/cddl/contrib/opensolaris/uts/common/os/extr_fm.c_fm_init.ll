; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/os/extr_fm.c_fm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }

@ereport_qlen = common dso_local global i32 0, align 4
@ERPT_MAX_ERRS = common dso_local global i32 0, align 4
@max_ncpus = common dso_local global i32 0, align 4
@ereport_size = common dso_local global i64 0, align 8
@ERPT_DATA_SZ = common dso_local global i64 0, align 8
@KM_SLEEP = common dso_local global i32 0, align 4
@ereport_dumpbuf = common dso_local global i32 0, align 4
@ereport_dumplen = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"unix\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"fm\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"misc\00", align 1
@KSTAT_TYPE_NAMED = common dso_local global i32 0, align 4
@KSTAT_FLAG_VIRTUAL = common dso_local global i32 0, align 4
@erpt_kstat_data = common dso_local global i32 0, align 4
@CE_NOTE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to create fm/misc kstat\0A\00", align 1
@ERRORQ_VITAL = common dso_local global i32 0, align 4
@EVCH_CREAT = common dso_local global i32 0, align 4
@EVCH_HOLD_PEND = common dso_local global i32 0, align 4
@EVCH_SET_CHAN_LEN = common dso_local global i32 0, align 4
@FM_ERROR_CHAN = common dso_local global i32 0, align 4
@FM_ERR_PIL = common dso_local global i32 0, align 4
@ereport_chan = common dso_local global i32 0, align 4
@ereport_chanlen = common dso_local global i32 0, align 4
@ereport_errorq = common dso_local global i32* null, align 8
@fm_drain = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm_init() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = load i32, i32* @ereport_qlen, align 4
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %0
  %5 = load i32, i32* @ERPT_MAX_ERRS, align 4
  %6 = load i32, i32* @max_ncpus, align 4
  %7 = call i32 @MAX(i32 %6, i32 4)
  %8 = mul nsw i32 %5, %7
  store i32 %8, i32* @ereport_qlen, align 4
  br label %9

9:                                                ; preds = %4, %0
  %10 = load i64, i64* @ereport_size, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %9
  %13 = load i64, i64* @ERPT_DATA_SZ, align 8
  store i64 %13, i64* @ereport_size, align 8
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i64, i64* @ereport_size, align 8
  %16 = load i32, i32* @KM_SLEEP, align 4
  %17 = call i32 @kmem_alloc(i64 %15, i32 %16)
  store i32 %17, i32* @ereport_dumpbuf, align 4
  %18 = load i64, i64* @ereport_size, align 8
  store i64 %18, i64* @ereport_dumplen, align 8
  %19 = load i32, i32* @KSTAT_TYPE_NAMED, align 4
  %20 = load i32, i32* @KSTAT_FLAG_VIRTUAL, align 4
  %21 = call %struct.TYPE_4__* @kstat_create(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 1, i32 %20)
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %1, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %23 = icmp ne %struct.TYPE_4__* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %14
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32* @erpt_kstat_data, i32** %26, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %28 = call i32 @kstat_install(%struct.TYPE_4__* %27)
  br label %32

29:                                               ; preds = %14
  %30 = load i32, i32* @CE_NOTE, align 4
  %31 = call i32 @cmn_err(i32 %30, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @kmem_alloc(i64, i32) #1

declare dso_local %struct.TYPE_4__* @kstat_create(i8*, i32, i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @kstat_install(%struct.TYPE_4__*) #1

declare dso_local i32 @cmn_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
