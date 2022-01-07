; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgdone.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sgdone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_periph = type { i64 }
%union.ccb = type { %struct.TYPE_4__, [8 x i8] }
%struct.TYPE_4__ = type { %struct.sg_rdwr* }
%struct.sg_rdwr = type { i32 }
%struct.sg_softc = type { i32 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@DEVSTAT_NO_DATA = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@DEVSTAT_WRITE = common dso_local global i32 0, align 4
@DEVSTAT_READ = common dso_local global i32 0, align 4
@SG_RDWR_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"unknown sg CCB type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_periph*, %union.ccb*)* @sgdone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgdone(%struct.cam_periph* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_periph*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.sg_softc*, align 8
  %6 = alloca %struct.ccb_scsiio*, align 8
  %7 = alloca %struct.sg_rdwr*, align 8
  %8 = alloca i32, align 4
  store %struct.cam_periph* %0, %struct.cam_periph** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %9 = load %struct.cam_periph*, %struct.cam_periph** %3, align 8
  %10 = getelementptr inbounds %struct.cam_periph, %struct.cam_periph* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.sg_softc*
  store %struct.sg_softc* %12, %struct.sg_softc** %5, align 8
  %13 = load %union.ccb*, %union.ccb** %4, align 8
  %14 = bitcast %union.ccb* %13 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %14, %struct.ccb_scsiio** %6, align 8
  %15 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %16 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %69 [
    i32 128, label %19
  ]

19:                                               ; preds = %2
  %20 = load %struct.sg_softc*, %struct.sg_softc** %5, align 8
  %21 = getelementptr inbounds %struct.sg_softc, %struct.sg_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %27 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %31 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @CAM_DIR_MASK, align 4
  %35 = and i32 %33, %34
  %36 = load i32, i32* @CAM_DIR_NONE, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %19
  %39 = load i32, i32* @DEVSTAT_NO_DATA, align 4
  br label %54

40:                                               ; preds = %19
  %41 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %6, align 8
  %42 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @CAM_DIR_OUT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %40
  %49 = load i32, i32* @DEVSTAT_WRITE, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @DEVSTAT_READ, align 4
  br label %52

52:                                               ; preds = %50, %48
  %53 = phi i32 [ %49, %48 ], [ %51, %50 ]
  br label %54

54:                                               ; preds = %52, %38
  %55 = phi i32 [ %39, %38 ], [ %53, %52 ]
  %56 = call i32 @devstat_end_transaction(i32 %22, i32 %25, i32 %29, i32 %55, i32* null, i32* null)
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to %struct.TYPE_4__*
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load %struct.sg_rdwr*, %struct.sg_rdwr** %59, align 8
  store %struct.sg_rdwr* %60, %struct.sg_rdwr** %7, align 8
  %61 = load %struct.sg_rdwr*, %struct.sg_rdwr** %7, align 8
  %62 = getelementptr inbounds %struct.sg_rdwr, %struct.sg_rdwr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* @SG_RDWR_DONE, align 4
  %65 = load %struct.sg_rdwr*, %struct.sg_rdwr** %7, align 8
  %66 = getelementptr inbounds %struct.sg_rdwr, %struct.sg_rdwr* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  %67 = load %struct.sg_rdwr*, %struct.sg_rdwr** %7, align 8
  %68 = call i32 @wakeup(%struct.sg_rdwr* %67)
  br label %71

69:                                               ; preds = %2
  %70 = call i32 @panic(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %54
  ret void
}

declare dso_local i32 @devstat_end_transaction(i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @wakeup(%struct.sg_rdwr*) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
