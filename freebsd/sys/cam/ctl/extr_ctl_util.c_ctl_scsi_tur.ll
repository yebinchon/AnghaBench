; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_tur.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_util.c_ctl_scsi_tur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.ctl_scsiio }
%struct.ctl_scsiio = type { i32, i32, i64, i64, i32*, i64, i32, i64 }
%struct.scsi_test_unit_ready = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@CTL_IO_SCSI = common dso_local global i32 0, align 4
@TEST_UNIT_READY = common dso_local global i32 0, align 4
@CTL_FLAG_DATA_NONE = common dso_local global i32 0, align 4
@SSD_FULL_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_tur(%union.ctl_io* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %union.ctl_io*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ctl_scsiio*, align 8
  %8 = alloca %struct.scsi_test_unit_ready*, align 8
  store %union.ctl_io* %0, %union.ctl_io** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %10 = call i32 @ctl_scsi_zero_io(%union.ctl_io* %9)
  %11 = load i32, i32* @CTL_IO_SCSI, align 4
  %12 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %13 = bitcast %union.ctl_io* %12 to %struct.TYPE_2__*
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 %11, i32* %14, align 4
  %15 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %16 = bitcast %union.ctl_io* %15 to %struct.ctl_scsiio*
  store %struct.ctl_scsiio* %16, %struct.ctl_scsiio** %7, align 8
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %18 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %17, i32 0, i32 7
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_test_unit_ready*
  store %struct.scsi_test_unit_ready* %20, %struct.scsi_test_unit_ready** %8, align 8
  %21 = load i32, i32* @TEST_UNIT_READY, align 4
  %22 = load %struct.scsi_test_unit_ready*, %struct.scsi_test_unit_ready** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_test_unit_ready, %struct.scsi_test_unit_ready* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.scsi_test_unit_ready*, %struct.scsi_test_unit_ready** %8, align 8
  %26 = getelementptr inbounds %struct.scsi_test_unit_ready, %struct.scsi_test_unit_ready* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @CTL_FLAG_DATA_NONE, align 4
  %28 = load %union.ctl_io*, %union.ctl_io** %4, align 8
  %29 = bitcast %union.ctl_io* %28 to %struct.TYPE_2__*
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 %27, i32* %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 6
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %35 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %34, i32 0, i32 0
  store i32 8, i32* %35, align 8
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %39 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %43 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @SSD_FULL_SIZE, align 4
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %7, align 8
  %46 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @ctl_scsi_zero_io(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
