; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_lba_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_lba_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_7__, i32, i32, i32, i64, i64, i64, i64 }
%struct.TYPE_7__ = type { i32*, i32 }
%struct.ctl_lun = type { %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32 (%union.ctl_io*)* }
%union.ctl_io = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.scsi_get_lba_status = type { i32, i32 }
%struct.scsi_get_lba_status_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.ctl_lba_len_flags = type { i32, i64, i64 }

@.str = private unnamed_addr constant [20 x i8] c"ctl_get_lba_status\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_PRIV_LBA_LEN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_get_lba_status(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_get_lba_status*, align 8
  %6 = alloca %struct.scsi_get_lba_status_data*, align 8
  %7 = alloca %struct.ctl_lba_len_flags*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %13 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %12)
  store %struct.ctl_lun* %13, %struct.ctl_lun** %4, align 8
  %14 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %16 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %15, i32 0, i32 7
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.scsi_get_lba_status*
  store %struct.scsi_get_lba_status* %18, %struct.scsi_get_lba_status** %5, align 8
  %19 = load %struct.scsi_get_lba_status*, %struct.scsi_get_lba_status** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_get_lba_status, %struct.scsi_get_lba_status* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @scsi_8btou64(i32 %21)
  store i64 %22, i64* %8, align 8
  %23 = load %struct.scsi_get_lba_status*, %struct.scsi_get_lba_status** %5, align 8
  %24 = getelementptr inbounds %struct.scsi_get_lba_status, %struct.scsi_get_lba_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_4btoul(i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i64, i64* %8, align 8
  %28 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %29 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %28, i32 0, i32 1
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %27, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %1
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio* %35, i64 %36)
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %39 = bitcast %struct.ctl_scsiio* %38 to %union.ctl_io*
  %40 = call i32 @ctl_done(%union.ctl_io* %39)
  %41 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %41, i32* %2, align 4
  br label %138

42:                                               ; preds = %1
  store i32 32, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @M_CTL, align 4
  %45 = load i32, i32* @M_WAITOK, align 4
  %46 = load i32, i32* @M_ZERO, align 4
  %47 = or i32 %45, %46
  %48 = call i64 @malloc(i32 %43, i32 %44, i32 %47)
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %49, i32 0, i32 6
  store i64 %48, i64* %50, align 8
  %51 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to %struct.scsi_get_lba_status_data*
  store %struct.scsi_get_lba_status_data* %54, %struct.scsi_get_lba_status_data** %6, align 8
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %56 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %55, i32 0, i32 5
  store i64 0, i64* %56, align 8
  %57 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %58 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @min(i32 %59, i32 %60)
  %62 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %63 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %65 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %68 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %6, align 8
  %70 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @scsi_ulto4b(i32 20, i32 %71)
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %6, align 8
  %75 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %74, i32 0, i32 0
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @scsi_u64to8b(i64 %73, i32 %79)
  %81 = load i32, i32* @UINT32_MAX, align 4
  %82 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %83 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %82, i32 0, i32 1
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i64, i64* %8, align 8
  %89 = sub nsw i64 %87, %88
  %90 = call i32 @MIN(i32 %81, i64 %89)
  %91 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %6, align 8
  %92 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @scsi_ulto4b(i32 %90, i32 %96)
  %98 = load %struct.scsi_get_lba_status_data*, %struct.scsi_get_lba_status_data** %6, align 8
  %99 = getelementptr inbounds %struct.scsi_get_lba_status_data, %struct.scsi_get_lba_status_data* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i64 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i64 0, i64* %102, align 8
  %103 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %104 = call i32 @ctl_set_success(%struct.ctl_scsiio* %103)
  %105 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %106 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %107 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %105
  store i32 %110, i32* %108, align 8
  %111 = load i32, i32* @ctl_config_move_done, align 4
  %112 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %113 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 8
  %114 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %115 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = load i64, i64* @CTL_PRIV_LBA_LEN, align 8
  %119 = getelementptr inbounds i32, i32* %117, i64 %118
  %120 = bitcast i32* %119 to %struct.ctl_lba_len_flags*
  store %struct.ctl_lba_len_flags* %120, %struct.ctl_lba_len_flags** %7, align 8
  %121 = load i64, i64* %8, align 8
  %122 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %123 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %122, i32 0, i32 2
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %126 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ctl_lba_len_flags*, %struct.ctl_lba_len_flags** %7, align 8
  %128 = getelementptr inbounds %struct.ctl_lba_len_flags, %struct.ctl_lba_len_flags* %127, i32 0, i32 1
  store i64 0, i64* %128, align 8
  %129 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %130 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %129, i32 0, i32 0
  %131 = load %struct.TYPE_8__*, %struct.TYPE_8__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 0
  %133 = load i32 (%union.ctl_io*)*, i32 (%union.ctl_io*)** %132, align 8
  %134 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %135 = bitcast %struct.ctl_scsiio* %134 to %union.ctl_io*
  %136 = call i32 %133(%union.ctl_io* %135)
  store i32 %136, i32* %11, align 4
  %137 = load i32, i32* %11, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %42, %34
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_8btou64(i32) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_lba_out_of_range(%struct.ctl_scsiio*, i64) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @scsi_u64to8b(i64, i32) #1

declare dso_local i32 @MIN(i32, i64) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
