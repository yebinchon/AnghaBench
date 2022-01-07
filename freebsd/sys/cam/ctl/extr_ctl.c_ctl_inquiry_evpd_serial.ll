; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_serial.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_serial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64 }
%struct.scsi_vpd_unit_serial_number = type { i32, i32, i64, i32 }
%union.ctl_io = type { i32 }

@CTL_SN_LEN = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_UNIT_SERIAL_NUMBER = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_serial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_serial(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_unit_serial_number*, align 8
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %5, align 8
  %10 = load i32, i32* @CTL_SN_LEN, align 4
  %11 = add nsw i32 4, %10
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @M_CTL, align 4
  %14 = load i32, i32* @M_WAITOK, align 4
  %15 = load i32, i32* @M_ZERO, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @malloc(i32 %12, i32 %13, i32 %16)
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 6
  store i64 %17, i64* %19, align 8
  %20 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %21 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.scsi_vpd_unit_serial_number*
  store %struct.scsi_vpd_unit_serial_number* %23, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 5
  store i64 0, i64* %25, align 8
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 4
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @min(i32 %28, i32 %29)
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 8
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %39 = icmp ne %struct.ctl_lun* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %2
  %41 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %42 = shl i32 %41, 5
  %43 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %44 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %42, %47
  %49 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %50 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  br label %58

51:                                               ; preds = %2
  %52 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %53 = shl i32 %52, 5
  %54 = load i32, i32* @T_DIRECT, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %57 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  br label %58

58:                                               ; preds = %51, %40
  %59 = load i32, i32* @SVPD_UNIT_SERIAL_NUMBER, align 4
  %60 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %61 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @CTL_SN_LEN, align 4
  %63 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %66 = icmp ne %struct.ctl_lun* %65, null
  br i1 %66, label %67, label %80

67:                                               ; preds = %58
  %68 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %69 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %73 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %72, i32 0, i32 0
  %74 = load %struct.TYPE_3__*, %struct.TYPE_3__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load i32, i32* @CTL_SN_LEN, align 4
  %79 = call i32 @strncpy(i8* %71, i8* %77, i32 %78)
  br label %86

80:                                               ; preds = %58
  %81 = load %struct.scsi_vpd_unit_serial_number*, %struct.scsi_vpd_unit_serial_number** %6, align 8
  %82 = getelementptr inbounds %struct.scsi_vpd_unit_serial_number, %struct.scsi_vpd_unit_serial_number* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* @CTL_SN_LEN, align 4
  %85 = call i32 @memset(i64 %83, i32 32, i32 %84)
  br label %86

86:                                               ; preds = %80, %67
  %87 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %88 = call i32 @ctl_set_success(%struct.ctl_scsiio* %87)
  %89 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %90 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %91 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = or i32 %93, %89
  store i32 %94, i32* %92, align 4
  %95 = load i32, i32* @ctl_config_move_done, align 4
  %96 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %97 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %99 = bitcast %struct.ctl_scsiio* %98 to %union.ctl_io*
  %100 = call i32 @ctl_datamove(%union.ctl_io* %99)
  %101 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %101
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
