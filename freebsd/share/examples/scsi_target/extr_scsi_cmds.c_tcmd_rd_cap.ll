; ModuleID = '/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_rd_cap.c'
source_filename = "/home/carl/AnghaBench/freebsd/share/examples/scsi_target/extr_scsi_cmds.c_tcmd_rd_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccb_accept_tio = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_read_capacity_data = type { i32, i32 }
%struct.atio_descr = type { i32 }

@volume_size = common dso_local global i32 0, align 4
@debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"READ CAP from %u (%u, %u): \00", align 1
@sector_size = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@SCSI_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccb_accept_tio*, %struct.ccb_scsiio*)* @tcmd_rd_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcmd_rd_cap(%struct.ccb_accept_tio* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca %struct.ccb_accept_tio*, align 8
  %4 = alloca %struct.ccb_scsiio*, align 8
  %5 = alloca %struct.scsi_read_capacity_data*, align 8
  %6 = alloca %struct.atio_descr*, align 8
  %7 = alloca i32, align 4
  store %struct.ccb_accept_tio* %0, %struct.ccb_accept_tio** %3, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %4, align 8
  %8 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %9 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.atio_descr*
  store %struct.atio_descr* %12, %struct.atio_descr** %6, align 8
  %13 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %14 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.scsi_read_capacity_data*
  store %struct.scsi_read_capacity_data* %16, %struct.scsi_read_capacity_data** %5, align 8
  %17 = load i32, i32* @volume_size, align 4
  %18 = icmp ugt i32 %17, -1
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %7, align 4
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @volume_size, align 4
  %22 = sub nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %19
  %24 = load i64, i64* @debug, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = load %struct.atio_descr*, %struct.atio_descr** %6, align 8
  %28 = getelementptr inbounds %struct.atio_descr, %struct.atio_descr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ccb_accept_tio*, %struct.ccb_accept_tio** %3, align 8
  %31 = getelementptr inbounds %struct.ccb_accept_tio, %struct.ccb_accept_tio* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @sector_size, align 4
  %35 = call i32 @cdb_debug(i32 %29, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %26, %23
  %37 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %5, align 8
  %38 = call i32 @bzero(%struct.scsi_read_capacity_data* %37, i32 8)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %5, align 8
  %41 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scsi_ulto4b(i32 %39, i32 %42)
  %44 = load i32, i32* @sector_size, align 4
  %45 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %5, align 8
  %46 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @scsi_ulto4b(i32 %44, i32 %47)
  %49 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %50 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %49, i32 0, i32 0
  store i32 8, i32* %50, align 8
  %51 = load i32, i32* @CAM_DIR_IN, align 4
  %52 = load i32, i32* @CAM_SEND_STATUS, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %55 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 8
  %59 = load i32, i32* @SCSI_STATUS_OK, align 4
  %60 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %4, align 8
  %61 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  ret i32 0
}

declare dso_local i32 @cdb_debug(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.scsi_read_capacity_data*, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
