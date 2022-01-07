; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_mpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_mpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_6__, i32, i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.scsi_vpd_mode_page_policy = type { i32, %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_MODE_PAGE_POLICY = common dso_local global i32 0, align 4
@SVPD_MPP_SHARED = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_mpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_mpp(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_mode_page_policy*, align 8
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %5, align 8
  store i32 28, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @M_CTL, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @malloc(i32 %10, i32 %11, i32 %14)
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 6
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.scsi_vpd_mode_page_policy*
  store %struct.scsi_vpd_mode_page_policy* %21, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @min(i32 %26, i32 %27)
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %34, i32 0, i32 3
  store i32 %33, i32* %35, align 4
  %36 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %37 = icmp ne %struct.ctl_lun* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %2
  %39 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %40 = shl i32 %39, 5
  %41 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %42 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %40, %45
  %47 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %48 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %56

49:                                               ; preds = %2
  %50 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %51 = shl i32 %50, 5
  %52 = load i32, i32* @T_DIRECT, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %55 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %56

56:                                               ; preds = %49, %38
  %57 = load i32, i32* @SVPD_MODE_PAGE_POLICY, align 4
  %58 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* %7, align 4
  %61 = sub nsw i32 %60, 4
  %62 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @scsi_ulto2b(i32 %61, i32 %64)
  %66 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %67 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 0
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  store i32 63, i32* %70, align 4
  %71 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %72 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %71, i32 0, i32 1
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  store i32 255, i32* %75, align 4
  %76 = load i32, i32* @SVPD_MPP_SHARED, align 4
  %77 = load %struct.scsi_vpd_mode_page_policy*, %struct.scsi_vpd_mode_page_policy** %6, align 8
  %78 = getelementptr inbounds %struct.scsi_vpd_mode_page_policy, %struct.scsi_vpd_mode_page_policy* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 2
  store i32 %76, i32* %81, align 4
  %82 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %83 = call i32 @ctl_set_success(%struct.ctl_scsiio* %82)
  %84 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %85 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %86 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = or i32 %88, %84
  store i32 %89, i32* %87, align 4
  %90 = load i32, i32* @ctl_config_move_done, align 4
  %91 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %92 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %94 = bitcast %struct.ctl_scsiio* %93 to %union.ctl_io*
  %95 = call i32 @ctl_datamove(%union.ctl_io* %94)
  %96 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %96
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
