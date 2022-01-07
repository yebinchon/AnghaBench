; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_capacity.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_read_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, i32, %struct.TYPE_4__, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.ctl_lun = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.scsi_read_capacity = type { i32, i32 }
%struct.scsi_read_capacity_data = type { i32, i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ctl_read_capacity\0A\00", align 1
@SRC_PMI = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_read_capacity(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_read_capacity*, align 8
  %6 = alloca %struct.scsi_read_capacity_data*, align 8
  %7 = alloca i64, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %8)
  store %struct.ctl_lun* %9, %struct.ctl_lun** %4, align 8
  %10 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %12 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %11, i32 0, i32 7
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.scsi_read_capacity*
  store %struct.scsi_read_capacity* %14, %struct.scsi_read_capacity** %5, align 8
  %15 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %5, align 8
  %16 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @scsi_4btoul(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load %struct.scsi_read_capacity*, %struct.scsi_read_capacity** %5, align 8
  %20 = getelementptr inbounds %struct.scsi_read_capacity, %struct.scsi_read_capacity* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SRC_PMI, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %1
  %26 = load i64, i64* %7, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %29, i32 1, i32 1, i32 2, i32 0, i32 0)
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = bitcast %struct.ctl_scsiio* %31 to %union.ctl_io*
  %33 = call i32 @ctl_done(%union.ctl_io* %32)
  %34 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %34, i32* %2, align 4
  br label %101

35:                                               ; preds = %25, %1
  %36 = load i32, i32* @M_CTL, align 4
  %37 = load i32, i32* @M_WAITOK, align 4
  %38 = load i32, i32* @M_ZERO, align 4
  %39 = or i32 %37, %38
  %40 = call i64 @malloc(i32 8, i32 %36, i32 %39)
  %41 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %42 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %41, i32 0, i32 6
  store i64 %40, i64* %42, align 8
  %43 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %44 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.scsi_read_capacity_data*
  store %struct.scsi_read_capacity_data* %46, %struct.scsi_read_capacity_data** %6, align 8
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %48 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %47, i32 0, i32 0
  store i32 8, i32* %48, align 8
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %50 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %49, i32 0, i32 1
  store i32 8, i32* %50, align 4
  %51 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %52 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %51, i32 0, i32 5
  store i64 0, i64* %52, align 8
  %53 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %54 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %53, i32 0, i32 4
  store i64 0, i64* %54, align 8
  %55 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %56 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = icmp ugt i32 %59, -2
  br i1 %60, label %61, label %66

61:                                               ; preds = %35
  %62 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %6, align 8
  %63 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @scsi_ulto4b(i32 -1, i32 %64)
  br label %76

66:                                               ; preds = %35
  %67 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %68 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %6, align 8
  %73 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @scsi_ulto4b(i32 %71, i32 %74)
  br label %76

76:                                               ; preds = %66, %61
  %77 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %78 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.scsi_read_capacity_data*, %struct.scsi_read_capacity_data** %6, align 8
  %83 = getelementptr inbounds %struct.scsi_read_capacity_data, %struct.scsi_read_capacity_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @scsi_ulto4b(i32 %81, i32 %84)
  %86 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %87 = call i32 @ctl_set_success(%struct.ctl_scsiio* %86)
  %88 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %89 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %90 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  %94 = load i32, i32* @ctl_config_move_done, align 4
  %95 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %96 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %98 = bitcast %struct.ctl_scsiio* %97 to %union.ctl_io*
  %99 = call i32 @ctl_datamove(%union.ctl_io* %98)
  %100 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %76, %28
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i64 @scsi_4btoul(i32) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @scsi_ulto4b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
