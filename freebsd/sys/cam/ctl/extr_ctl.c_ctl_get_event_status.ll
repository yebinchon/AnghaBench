; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_event_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_get_event_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_get_event_status_header = type { i64, i32, i32 }
%struct.scsi_get_event_status = type { i32, i32 }
%union.ctl_io = type { i32 }

@SGESN_POLLED = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4
@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@SGESN_NEA = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_get_event_status(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.scsi_get_event_status_header*, align 8
  %5 = alloca %struct.scsi_get_event_status*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %8 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %9 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %8, i32 0, i32 7
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.scsi_get_event_status*
  store %struct.scsi_get_event_status* %11, %struct.scsi_get_event_status** %5, align 8
  %12 = load %struct.scsi_get_event_status*, %struct.scsi_get_event_status** %5, align 8
  %13 = getelementptr inbounds %struct.scsi_get_event_status, %struct.scsi_get_event_status* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SGESN_POLLED, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %20 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %19, i32 1, i32 1, i32 1, i32 1, i32 0)
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %22 = bitcast %struct.ctl_scsiio* %21 to %union.ctl_io*
  %23 = call i32 @ctl_done(%union.ctl_io* %22)
  %24 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %24, i32* %2, align 4
  br label %80

25:                                               ; preds = %1
  %26 = load %struct.scsi_get_event_status*, %struct.scsi_get_event_status** %5, align 8
  %27 = getelementptr inbounds %struct.scsi_get_event_status, %struct.scsi_get_event_status* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @scsi_2btoul(i32 %28)
  store i32 %29, i32* %6, align 4
  store i32 16, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @M_CTL, align 4
  %32 = load i32, i32* @M_WAITOK, align 4
  %33 = load i32, i32* @M_ZERO, align 4
  %34 = or i32 %32, %33
  %35 = call i64 @malloc(i32 %30, i32 %31, i32 %34)
  %36 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %37 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %36, i32 0, i32 2
  store i64 %35, i64* %37, align 8
  %38 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %39 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %38, i32 0, i32 6
  store i64 0, i64* %39, align 8
  %40 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %41 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @min(i32 %42, i32 %43)
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %46 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %45, i32 0, i32 3
  store i32 %44, i32* %46, align 8
  %47 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %48 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %51 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 4
  %52 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %53 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.scsi_get_event_status_header*
  store %struct.scsi_get_event_status_header* %55, %struct.scsi_get_event_status_header** %4, align 8
  %56 = load %struct.scsi_get_event_status_header*, %struct.scsi_get_event_status_header** %4, align 8
  %57 = getelementptr inbounds %struct.scsi_get_event_status_header, %struct.scsi_get_event_status_header* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scsi_ulto2b(i32 0, i32 %58)
  %60 = load i32, i32* @SGESN_NEA, align 4
  %61 = load %struct.scsi_get_event_status_header*, %struct.scsi_get_event_status_header** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_get_event_status_header, %struct.scsi_get_event_status_header* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  %63 = load %struct.scsi_get_event_status_header*, %struct.scsi_get_event_status_header** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_get_event_status_header, %struct.scsi_get_event_status_header* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %66 = call i32 @ctl_set_success(%struct.ctl_scsiio* %65)
  %67 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %68 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %69 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %67
  store i32 %72, i32* %70, align 4
  %73 = load i32, i32* @ctl_config_move_done, align 4
  %74 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %75 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %74, i32 0, i32 0
  store i32 %73, i32* %75, align 8
  %76 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %77 = bitcast %struct.ctl_scsiio* %76 to %union.ctl_io*
  %78 = call i32 @ctl_datamove(%union.ctl_io* %77)
  %79 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %25, %18
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

declare dso_local i32 @scsi_2btoul(i32) #1

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
