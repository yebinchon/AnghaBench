; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sg_scsiio_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_sg.c_sg_scsiio_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_scsiio = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i32 0, align 4
@DID_ERROR = common dso_local global i32 0, align 4
@DID_ABORT = common dso_local global i32 0, align 4
@DRIVER_INVALID = common dso_local global i32 0, align 4
@DID_BAD_TARGET = common dso_local global i32 0, align 4
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_TIME_OUT = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@DID_PARITY = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DRIVER_ERROR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@DRIVER_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccb_scsiio*, i32*, i32*)* @sg_scsiio_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sg_scsiio_status(%struct.ccb_scsiio* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.ccb_scsiio* %0, %struct.ccb_scsiio** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %9 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @CAM_STATUS_MASK, align 4
  %14 = and i32 %12, %13
  switch i32 %14, label %60 [
    i32 135, label %15
    i32 134, label %19
    i32 136, label %23
    i32 133, label %27
    i32 137, label %32
    i32 129, label %36
    i32 138, label %40
    i32 130, label %44
    i32 131, label %48
    i32 128, label %52
    i32 132, label %56
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* @DID_OK, align 4
  %17 = load i32*, i32** %5, align 8
  store i32 %16, i32* %17, align 4
  %18 = load i32*, i32** %6, align 8
  store i32 0, i32* %18, align 4
  br label %65

19:                                               ; preds = %3
  %20 = load i32, i32* @DID_ERROR, align 4
  %21 = load i32*, i32** %5, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  store i32 0, i32* %22, align 4
  br label %65

23:                                               ; preds = %3
  %24 = load i32, i32* @DID_ABORT, align 4
  %25 = load i32*, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 0, i32* %26, align 4
  br label %65

27:                                               ; preds = %3
  %28 = load i32, i32* @DID_ERROR, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @DRIVER_INVALID, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  br label %65

32:                                               ; preds = %3
  %33 = load i32, i32* @DID_BAD_TARGET, align 4
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 0, i32* %35, align 4
  br label %65

36:                                               ; preds = %3
  %37 = load i32, i32* @DID_NO_CONNECT, align 4
  %38 = load i32*, i32** %5, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 0, i32* %39, align 4
  br label %65

40:                                               ; preds = %3
  %41 = load i32, i32* @DID_TIME_OUT, align 4
  %42 = load i32*, i32** %5, align 8
  store i32 %41, i32* %42, align 4
  %43 = load i32*, i32** %6, align 8
  store i32 0, i32* %43, align 4
  br label %65

44:                                               ; preds = %3
  %45 = load i32, i32* @DID_ERROR, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  %47 = load i32*, i32** %6, align 8
  store i32 0, i32* %47, align 4
  br label %65

48:                                               ; preds = %3
  %49 = load i32, i32* @DID_RESET, align 4
  %50 = load i32*, i32** %5, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  store i32 0, i32* %51, align 4
  br label %65

52:                                               ; preds = %3
  %53 = load i32, i32* @DID_PARITY, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %6, align 8
  store i32 0, i32* %55, align 4
  br label %65

56:                                               ; preds = %3
  %57 = load i32, i32* @DID_BUS_BUSY, align 4
  %58 = load i32*, i32** %5, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** %6, align 8
  store i32 0, i32* %59, align 4
  br label %65

60:                                               ; preds = %3
  %61 = load i32, i32* @DID_ERROR, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  %63 = load i32, i32* @DRIVER_ERROR, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  br label %65

65:                                               ; preds = %60, %56, %52, %48, %44, %40, %36, %32, %27, %23, %19, %15
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load i32, i32* @DRIVER_SENSE, align 4
  %72 = load i32*, i32** %6, align 8
  store i32 %71, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %65
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
