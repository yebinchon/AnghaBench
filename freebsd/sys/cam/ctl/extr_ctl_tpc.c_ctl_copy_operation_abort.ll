; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_copy_operation_abort.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_tpc.c_ctl_copy_operation_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.ctl_lun = type { i32 }
%struct.scsi_copy_operation_abort = type { i32 }
%struct.tpc_list = type { i32 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"ctl_copy_operation_abort\0A\00", align 1
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_copy_operation_abort(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.ctl_lun*, align 8
  %5 = alloca %struct.scsi_copy_operation_abort*, align 8
  %6 = alloca %struct.tpc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %10 = call %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio* %9)
  store %struct.ctl_lun* %10, %struct.ctl_lun** %4, align 8
  %11 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %13 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.scsi_copy_operation_abort*
  store %struct.scsi_copy_operation_abort* %15, %struct.scsi_copy_operation_abort** %5, align 8
  %16 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.scsi_copy_operation_abort*, %struct.scsi_copy_operation_abort** %5, align 8
  %18 = getelementptr inbounds %struct.scsi_copy_operation_abort, %struct.scsi_copy_operation_abort* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @scsi_4btoul(i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %22 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %27 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @ctl_get_initindex(i32* %28)
  %30 = call %struct.tpc_list* @tpc_find_list(%struct.ctl_lun* %24, i32 %25, i32 %29)
  store %struct.tpc_list* %30, %struct.tpc_list** %6, align 8
  %31 = load %struct.tpc_list*, %struct.tpc_list** %6, align 8
  %32 = icmp eq %struct.tpc_list* %31, null
  br i1 %32, label %33, label %43

33:                                               ; preds = %1
  %34 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %35 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %34, i32 0, i32 0
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %38 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %37, i32 1, i32 1, i32 2, i32 0, i32 0)
  %39 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %40 = bitcast %struct.ctl_scsiio* %39 to %union.ctl_io*
  %41 = call i32 @ctl_done(%union.ctl_io* %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %2, align 4
  br label %55

43:                                               ; preds = %1
  %44 = load %struct.tpc_list*, %struct.tpc_list** %6, align 8
  %45 = getelementptr inbounds %struct.tpc_list, %struct.tpc_list* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.ctl_lun*, %struct.ctl_lun** %4, align 8
  %47 = getelementptr inbounds %struct.ctl_lun, %struct.ctl_lun* %46, i32 0, i32 0
  %48 = call i32 @mtx_unlock(i32* %47)
  %49 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %50 = call i32 @ctl_set_success(%struct.ctl_scsiio* %49)
  %51 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %52 = bitcast %struct.ctl_scsiio* %51 to %union.ctl_io*
  %53 = call i32 @ctl_done(%union.ctl_io* %52)
  %54 = load i32, i32* %7, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %43, %33
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.ctl_lun* @CTL_LUN(%struct.ctl_scsiio*) #1

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @scsi_4btoul(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.tpc_list* @tpc_find_list(%struct.ctl_lun*, i32, i32) #1

declare dso_local i32 @ctl_get_initindex(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
