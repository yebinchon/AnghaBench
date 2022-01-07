; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_sfs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_sfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scsi_vpd_sfs = type { i32, i32*, i32*, i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_SCSI_SFS = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_UNMAP = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_sfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_sfs(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_sfs*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %5, align 8
  store i32 42, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @M_CTL, align 4
  %13 = load i32, i32* @M_WAITOK, align 4
  %14 = load i32, i32* @M_ZERO, align 4
  %15 = or i32 %13, %14
  %16 = call i64 @malloc(i32 %11, i32 %12, i32 %15)
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %17, i32 0, i32 6
  store i64 %16, i64* %18, align 8
  %19 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %20 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.scsi_vpd_sfs*
  store %struct.scsi_vpd_sfs* %22, %struct.scsi_vpd_sfs** %6, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %26 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %27, i32 0, i32 4
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @min(i32 %29, i32 %30)
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %40 = icmp ne %struct.ctl_lun* %39, null
  br i1 %40, label %41, label %52

41:                                               ; preds = %2
  %42 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %43 = shl i32 %42, 5
  %44 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %45 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %43, %48
  %50 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %51 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  br label %59

52:                                               ; preds = %2
  %53 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %54 = shl i32 %53, 5
  %55 = load i32, i32* @T_DIRECT, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %52, %41
  %60 = load i32, i32* @SVPD_SCSI_SFS, align 4
  %61 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %62 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  store i32 0, i32* %8, align 4
  %63 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %8, align 4
  %68 = mul nsw i32 2, %66
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  %71 = call i32 @scsi_ulto2b(i32 1, i32* %70)
  %72 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %73 = icmp ne %struct.ctl_lun* %72, null
  br i1 %73, label %74, label %120

74:                                               ; preds = %59
  %75 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %76 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %75, i32 0, i32 0
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @T_DIRECT, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %120

82:                                               ; preds = %74
  %83 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %84 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = mul nsw i32 2, %86
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %85, i64 %89
  %91 = call i32 @scsi_ulto2b(i32 257, i32* %90)
  %92 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %93 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  %97 = mul nsw i32 2, %95
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %94, i64 %98
  %100 = call i32 @scsi_ulto2b(i32 258, i32* %99)
  %101 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %102 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %101, i32 0, i32 0
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @CTL_LUN_FLAG_UNMAP, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %119

109:                                              ; preds = %82
  %110 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %8, align 4
  %115 = mul nsw i32 2, %113
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %112, i64 %116
  %118 = call i32 @scsi_ulto2b(i32 259, i32* %117)
  br label %119

119:                                              ; preds = %109, %82
  br label %120

120:                                              ; preds = %119, %74, %59
  %121 = load i32, i32* %8, align 4
  %122 = mul nsw i32 2, %121
  %123 = add nsw i32 4, %122
  %124 = load %struct.scsi_vpd_sfs*, %struct.scsi_vpd_sfs** %6, align 8
  %125 = getelementptr inbounds %struct.scsi_vpd_sfs, %struct.scsi_vpd_sfs* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @scsi_ulto2b(i32 %123, i32* %126)
  %128 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %129 = call i32 @ctl_set_success(%struct.ctl_scsiio* %128)
  %130 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %131 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %132 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %130
  store i32 %135, i32* %133, align 4
  %136 = load i32, i32* @ctl_config_move_done, align 4
  %137 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %138 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %140 = bitcast %struct.ctl_scsiio* %139 to %union.ctl_io*
  %141 = call i32 @ctl_datamove(%union.ctl_io* %140)
  %142 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %142
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
