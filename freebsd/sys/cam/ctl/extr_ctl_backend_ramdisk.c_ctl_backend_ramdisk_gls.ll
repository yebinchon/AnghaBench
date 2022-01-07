; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_gls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_backend_ramdisk.c_ctl_backend_ramdisk_gls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ctl_io = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.ctl_be_lun = type { i32, %struct.ctl_be_ramdisk_lun* }
%struct.ctl_be_ramdisk_lun = type { i64 }
%struct.scsi_get_lba_status_data = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@GP_OTHER = common dso_local global i32 0, align 4
@P_UNMAPPED = common dso_local global i32* null, align 8
@P_ANCHORED = common dso_local global i32* null, align 8
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.ctl_io*)* @ctl_backend_ramdisk_gls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctl_backend_ramdisk_gls(%union.ctl_io* %0) #0 {
  %2 = alloca %union.ctl_io*, align 8
  %3 = alloca %struct.ctl_be_lun*, align 8
  %4 = alloca %struct.ctl_be_ramdisk_lun*, align 8
  %5 = alloca %struct.scsi_get_lba_status_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %union.ctl_io* %0, %union.ctl_io** %2, align 8
  %8 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %9 = call %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io* %8)
  store %struct.ctl_be_lun* %9, %struct.ctl_be_lun** %3, align 8
  %10 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %11 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %10, i32 0, i32 1
  %12 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %11, align 8
  store %struct.ctl_be_ramdisk_lun* %12, %struct.ctl_be_ramdisk_lun** %4, align 8
  %13 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %14 = bitcast %union.ctl_io* %13 to %struct.TYPE_4__*
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.scsi_get_lba_status_data*
  store %struct.scsi_get_lba_status_data* %17, %struct.scsi_get_lba_status_data** %5, align 8
  %18 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %19 = call %struct.TYPE_6__* @ARGS(%union.ctl_io* %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %5, align 8
  %23 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @scsi_u64to8b(i32 %21, i32 %27)
  %29 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %30 = call %struct.TYPE_6__* @ARGS(%union.ctl_io* %29)
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @UINT_MAX, align 4
  %34 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %35 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %33, %36
  %38 = xor i32 %37, -1
  %39 = and i32 %32, %38
  store i32 %39, i32* %7, align 4
  %40 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %4, align 8
  %41 = getelementptr inbounds %struct.ctl_be_ramdisk_lun, %struct.ctl_be_ramdisk_lun* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = sub nsw i64 %42, %44
  %46 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %5, align 8
  %47 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @scsi_ulto4b(i64 %45, i32 %51)
  %53 = load %struct.ctl_be_ramdisk_lun*, %struct.ctl_be_ramdisk_lun** %4, align 8
  %54 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %55 = call %struct.TYPE_6__* @ARGS(%union.ctl_io* %54)
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ctl_be_lun*, %struct.ctl_be_lun** %3, align 8
  %59 = getelementptr inbounds %struct.ctl_be_lun, %struct.ctl_be_lun* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %57, %60
  %62 = load i32, i32* @GP_OTHER, align 4
  %63 = call i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun* %53, i32 %61, i32 %62)
  store i32* %63, i32** %6, align 8
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** @P_UNMAPPED, align 8
  %66 = icmp eq i32* %64, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %1
  %68 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %5, align 8
  %69 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %90

73:                                               ; preds = %1
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** @P_ANCHORED, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %73
  %78 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %5, align 8
  %79 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 2, i32* %82, align 4
  br label %89

83:                                               ; preds = %73
  %84 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %5, align 8
  %85 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %77
  br label %90

90:                                               ; preds = %89, %67
  %91 = load %union.ctl_io*, %union.ctl_io** %2, align 8
  %92 = call i32 @ctl_config_read_done(%union.ctl_io* %91)
  %93 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %93
}

declare dso_local %struct.ctl_be_lun* @CTL_BACKEND_LUN(%union.ctl_io*) #1

declare dso_local i32 @scsi_u64to8b(i32, i32) #1

declare dso_local %struct.TYPE_6__* @ARGS(%union.ctl_io*) #1

declare dso_local i32 @scsi_ulto4b(i64, i32) #1

declare dso_local i32* @ctl_backend_ramdisk_getpage(%struct.ctl_be_ramdisk_lun*, i32, i32) #1

declare dso_local i32 @ctl_config_read_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
