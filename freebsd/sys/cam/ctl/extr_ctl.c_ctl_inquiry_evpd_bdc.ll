; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_bdc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_bdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scsi_vpd_block_device_characteristics = type { i32, i32, i32, i32, i32, i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_BDC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"rpm\00", align 1
@CTL_DEFAULT_ROTATION_RATE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"formfactor\00", align 1
@SVPD_RBWZ = common dso_local global i32 0, align 4
@SVPD_FUAB = common dso_local global i32 0, align 4
@SVPD_VBULS = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_bdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_bdc(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_block_device_characteristics*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %5, align 8
  %11 = load i32, i32* @M_CTL, align 4
  %12 = load i32, i32* @M_WAITOK, align 4
  %13 = load i32, i32* @M_ZERO, align 4
  %14 = or i32 %12, %13
  %15 = call i64 @malloc(i32 24, i32 %11, i32 %14)
  %16 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %16, i32 0, i32 6
  store i64 %15, i64* %17, align 8
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.scsi_vpd_block_device_characteristics*
  store %struct.scsi_vpd_block_device_characteristics* %21, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %22 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %23 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %22, i32 0, i32 5
  store i64 0, i64* %23, align 8
  %24 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %25 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @min(i32 24, i32 %26)
  %28 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %29 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %34 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %36 = icmp ne %struct.ctl_lun* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %2
  %38 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %39 = shl i32 %38, 5
  %40 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %41 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %39, %44
  %46 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %47 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %55

48:                                               ; preds = %2
  %49 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %50 = shl i32 %49, 5
  %51 = load i32, i32* @T_DIRECT, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %54 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %48, %37
  %56 = load i32, i32* @SVPD_BDC, align 4
  %57 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %58 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 4
  %59 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %60 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @scsi_ulto2b(i32 20, i32 %61)
  %63 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %64 = icmp ne %struct.ctl_lun* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %55
  %66 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %67 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i8* @dnvlist_get_string(i32 %70, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %71, i8** %7, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %76

73:                                               ; preds = %65
  %74 = load i8*, i8** %7, align 8
  %75 = call i32 @strtol(i8* %74, i32* null, i32 0)
  store i32 %75, i32* %8, align 4
  br label %78

76:                                               ; preds = %65, %55
  %77 = load i32, i32* @CTL_DEFAULT_ROTATION_RATE, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %76, %73
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %81 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @scsi_ulto2b(i32 %79, i32 %82)
  %84 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %85 = icmp ne %struct.ctl_lun* %84, null
  br i1 %85, label %86, label %97

86:                                               ; preds = %78
  %87 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %88 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i8* @dnvlist_get_string(i32 %91, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* null)
  store i8* %92, i8** %7, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load i8*, i8** %7, align 8
  %96 = call i32 @strtol(i8* %95, i32* null, i32 0)
  store i32 %96, i32* %8, align 4
  br label %98

97:                                               ; preds = %86, %78
  store i32 0, i32* %8, align 4
  br label %98

98:                                               ; preds = %97, %94
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 15
  %101 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %102 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %101, i32 0, i32 1
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* @SVPD_RBWZ, align 4
  %104 = load i32, i32* @SVPD_FUAB, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @SVPD_VBULS, align 4
  %107 = or i32 %105, %106
  %108 = load %struct.scsi_vpd_block_device_characteristics*, %struct.scsi_vpd_block_device_characteristics** %6, align 8
  %109 = getelementptr inbounds %struct.scsi_vpd_block_device_characteristics, %struct.scsi_vpd_block_device_characteristics* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  %110 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %111 = call i32 @ctl_set_success(%struct.ctl_scsiio* %110)
  %112 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %113 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %114 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %112
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @ctl_config_move_done, align 4
  %119 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %120 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %122 = bitcast %struct.ctl_scsiio* %121 to %union.ctl_io*
  %123 = call i32 @ctl_datamove(%union.ctl_io* %122)
  %124 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %124
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i32 @strtol(i8*, i32*, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
