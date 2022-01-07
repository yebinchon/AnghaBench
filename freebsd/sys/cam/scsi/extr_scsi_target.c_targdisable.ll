; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdisable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targdisable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_softc = type { i32, i32 }

@TARG_STATE_LUN_ENABLED = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"targdisable\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Disable lun failed, status %#x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.targ_softc*)* @targdisable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @targdisable(%struct.targ_softc* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.targ_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.targ_softc* %0, %struct.targ_softc** %3, align 8
  %5 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %6 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %12, i64* %2, align 8
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %15 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %18 = call i32 @CAM_DEBUG(i32 %16, i32 %17, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %20 = call i32 @abort_all_pending(%struct.targ_softc* %19)
  %21 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %22 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @targendislun(i32 %23, i32 0, i32 0, i32 0)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @CAM_REQ_CMP, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %13
  %29 = load i32, i32* @TARG_STATE_LUN_ENABLED, align 4
  %30 = xor i32 %29, -1
  %31 = load %struct.targ_softc*, %struct.targ_softc** %3, align 8
  %32 = getelementptr inbounds %struct.targ_softc, %struct.targ_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %30
  store i32 %34, i32* %32, align 4
  br label %38

35:                                               ; preds = %13
  %36 = load i64, i64* %4, align 8
  %37 = call i32 @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %36)
  br label %38

38:                                               ; preds = %35, %28
  %39 = load i64, i64* %4, align 8
  store i64 %39, i64* %2, align 8
  br label %40

40:                                               ; preds = %38, %11
  %41 = load i64, i64* %2, align 8
  ret i64 %41
}

declare dso_local i32 @CAM_DEBUG(i32, i32, i8*) #1

declare dso_local i32 @abort_all_pending(%struct.targ_softc*) #1

declare dso_local i64 @targendislun(i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
