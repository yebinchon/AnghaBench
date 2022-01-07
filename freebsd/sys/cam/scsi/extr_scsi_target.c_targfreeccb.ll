; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targfreeccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_target.c_targfreeccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.targ_softc = type { i32 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.ccb* }

@CAM_DEBUG_PERIPH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"targfreeccb descr %p and\0A\00", align 1
@M_TARG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"freeing ccb %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"returning queued ccb %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.targ_softc*, %union.ccb*)* @targfreeccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @targfreeccb(%struct.targ_softc* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.targ_softc*, align 8
  %4 = alloca %union.ccb*, align 8
  store %struct.targ_softc* %0, %struct.targ_softc** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %5 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %6 = load %union.ccb*, %union.ccb** %4, align 8
  %7 = bitcast %union.ccb* %6 to %struct.TYPE_2__*
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %union.ccb*, %union.ccb** %8, align 8
  %10 = bitcast %union.ccb* %9 to i8*
  %11 = call i32 @CAM_DEBUG_PRINT(i32 %5, i8* %10)
  %12 = load %union.ccb*, %union.ccb** %4, align 8
  %13 = bitcast %union.ccb* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %union.ccb*, %union.ccb** %14, align 8
  %16 = load i32, i32* @M_TARG, align 4
  %17 = call i32 @free(%union.ccb* %15, i32 %16)
  %18 = load %union.ccb*, %union.ccb** %4, align 8
  %19 = bitcast %union.ccb* %18 to %struct.TYPE_2__*
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %30 [
    i32 130, label %22
    i32 128, label %22
    i32 129, label %22
  ]

22:                                               ; preds = %2, %2, %2
  %23 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %24 = load %union.ccb*, %union.ccb** %4, align 8
  %25 = bitcast %union.ccb* %24 to i8*
  %26 = call i32 @CAM_DEBUG_PRINT(i32 %23, i8* %25)
  %27 = load %union.ccb*, %union.ccb** %4, align 8
  %28 = load i32, i32* @M_TARG, align 4
  %29 = call i32 @free(%union.ccb* %27, i32 %28)
  br label %50

30:                                               ; preds = %2
  %31 = load %union.ccb*, %union.ccb** %4, align 8
  %32 = call i32 @XPT_FC_IS_QUEUED(%union.ccb* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %36 = load %union.ccb*, %union.ccb** %4, align 8
  %37 = bitcast %union.ccb* %36 to i8*
  %38 = call i32 @CAM_DEBUG_PRINT(i32 %35, i8* %37)
  %39 = load %union.ccb*, %union.ccb** %4, align 8
  %40 = call i32 @xpt_release_ccb(%union.ccb* %39)
  br label %49

41:                                               ; preds = %30
  %42 = load i32, i32* @CAM_DEBUG_PERIPH, align 4
  %43 = load %union.ccb*, %union.ccb** %4, align 8
  %44 = bitcast %union.ccb* %43 to i8*
  %45 = call i32 @CAM_DEBUG_PRINT(i32 %42, i8* %44)
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = load i32, i32* @M_TARG, align 4
  %48 = call i32 @free(%union.ccb* %46, i32 %47)
  br label %49

49:                                               ; preds = %41, %34
  br label %50

50:                                               ; preds = %49, %22
  ret void
}

declare dso_local i32 @CAM_DEBUG_PRINT(i32, i8*) #1

declare dso_local i32 @free(%union.ccb*, i32) #1

declare dso_local i32 @XPT_FC_IS_QUEUED(%union.ccb*) #1

declare dso_local i32 @xpt_release_ccb(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
