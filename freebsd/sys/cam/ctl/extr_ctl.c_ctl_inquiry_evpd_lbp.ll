; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_lbp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry_evpd_lbp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_4__, i32, i32, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.scsi_vpd_logical_block_prov = type { i32, i32, i8*, i32, i32, i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SID_QUAL_LU_CONNECTED = common dso_local global i32 0, align 4
@SID_QUAL_LU_OFFLINE = common dso_local global i32 0, align 4
@T_DIRECT = common dso_local global i32 0, align 4
@SVPD_LBP = common dso_local global i32 0, align 4
@CTL_LBP_EXPONENT = common dso_local global i32 0, align 4
@CTL_LUN_FLAG_UNMAP = common dso_local global i32 0, align 4
@SVPD_LBP_UNMAP = common dso_local global i32 0, align 4
@SVPD_LBP_WS16 = common dso_local global i32 0, align 4
@SVPD_LBP_WS10 = common dso_local global i32 0, align 4
@SVPD_LBP_RZ = common dso_local global i32 0, align 4
@SVPD_LBP_ANC_SUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"provisioning_type\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"resource\00", align 1
@SVPD_LBP_RESOURCE = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"thin\00", align 1
@SVPD_LBP_THIN = common dso_local global i8* null, align 8
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctl_scsiio*, i32)* @ctl_inquiry_evpd_lbp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_inquiry_evpd_lbp(%struct.ctl_scsiio* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctl_lun*, align 8
  %6 = alloca %struct.scsi_vpd_logical_block_prov*, align 8
  %7 = alloca i8*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %5, align 8
  %10 = load i32, i32* @M_CTL, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call i64 @malloc(i32 32, i32 %10, i32 %13)
  %15 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %15, i32 0, i32 6
  store i64 %14, i64* %16, align 8
  %17 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %18 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.scsi_vpd_logical_block_prov*
  store %struct.scsi_vpd_logical_block_prov* %20, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 4
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @min(i32 32, i32 %25)
  %27 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %28 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %35 = icmp ne %struct.ctl_lun* %34, null
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load i32, i32* @SID_QUAL_LU_CONNECTED, align 4
  %38 = shl i32 %37, 5
  %39 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %40 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %39, i32 0, i32 0
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %38, %43
  %45 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %46 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %54

47:                                               ; preds = %2
  %48 = load i32, i32* @SID_QUAL_LU_OFFLINE, align 4
  %49 = shl i32 %48, 5
  %50 = load i32, i32* @T_DIRECT, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %54

54:                                               ; preds = %47, %36
  %55 = load i32, i32* @SVPD_LBP, align 4
  %56 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %57 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %59 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @scsi_ulto2b(i32 28, i32 %60)
  %62 = load i32, i32* @CTL_LBP_EXPONENT, align 4
  %63 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %64 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %66 = icmp ne %struct.ctl_lun* %65, null
  br i1 %66, label %67, label %119

67:                                               ; preds = %54
  %68 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %69 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @CTL_LUN_FLAG_UNMAP, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %119

76:                                               ; preds = %67
  %77 = load i32, i32* @SVPD_LBP_UNMAP, align 4
  %78 = load i32, i32* @SVPD_LBP_WS16, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @SVPD_LBP_WS10, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @SVPD_LBP_RZ, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @SVPD_LBP_ANC_SUP, align 4
  %85 = or i32 %83, %84
  %86 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %87 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.ctl_lun*, %struct.ctl_lun** %5, align 8
  %89 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %88, i32 0, i32 0
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @dnvlist_get_string(i32 %92, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32* null)
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %114

96:                                               ; preds = %76
  %97 = load i8*, i8** %7, align 8
  %98 = call i64 @strcmp(i8* %97, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %96
  %101 = load i8*, i8** @SVPD_LBP_RESOURCE, align 8
  %102 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %103 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %102, i32 0, i32 2
  store i8* %101, i8** %103, align 8
  br label %113

104:                                              ; preds = %96
  %105 = load i8*, i8** %7, align 8
  %106 = call i64 @strcmp(i8* %105, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i8*, i8** @SVPD_LBP_THIN, align 8
  %110 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %111 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %110, i32 0, i32 2
  store i8* %109, i8** %111, align 8
  br label %112

112:                                              ; preds = %108, %104
  br label %113

113:                                              ; preds = %112, %100
  br label %118

114:                                              ; preds = %76
  %115 = load i8*, i8** @SVPD_LBP_THIN, align 8
  %116 = load %struct.scsi_vpd_logical_block_prov*, %struct.scsi_vpd_logical_block_prov** %6, align 8
  %117 = getelementptr inbounds %struct.scsi_vpd_logical_block_prov, %struct.scsi_vpd_logical_block_prov* %116, i32 0, i32 2
  store i8* %115, i8** %117, align 8
  br label %118

118:                                              ; preds = %114, %113
  br label %119

119:                                              ; preds = %118, %67, %54
  %120 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %121 = call i32 @ctl_set_success(%struct.ctl_scsiio* %120)
  %122 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %123 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %124 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %122
  store i32 %127, i32* %125, align 4
  %128 = load i32, i32* @ctl_config_move_done, align 4
  %129 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %130 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %132 = bitcast %struct.ctl_scsiio* %131 to %union.ctl_io*
  %133 = call i32 @ctl_datamove(%union.ctl_io* %132)
  %134 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %134
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i8* @dnvlist_get_string(i32, i8*, i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
