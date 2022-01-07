; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_mechanism_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_mechanism_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, %struct.TYPE_2__, i64, i32, i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_mechanism_status_header = type { i32, i32, i32, i64, i32 }
%struct.scsi_mechanism_status = type { i32 }
%union.ctl_io = type { i32 }

@M_CTL = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@CTL_FLAG_ALLOCATED = common dso_local global i32 0, align 4
@ctl_config_move_done = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_mechanism_status(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca %struct.ctl_scsiio*, align 8
  %3 = alloca %struct.scsi_mechanism_status_header*, align 8
  %4 = alloca %struct.scsi_mechanism_status*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %2, align 8
  %7 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %8 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %7, i32 0, i32 7
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.scsi_mechanism_status*
  store %struct.scsi_mechanism_status* %10, %struct.scsi_mechanism_status** %4, align 8
  %11 = load %struct.scsi_mechanism_status*, %struct.scsi_mechanism_status** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_mechanism_status, %struct.scsi_mechanism_status* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @scsi_2btoul(i32 %13)
  store i32 %14, i32* %5, align 4
  store i32 32, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @M_CTL, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @malloc(i32 %15, i32 %16, i32 %19)
  %21 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %22 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %21, i32 0, i32 2
  store i64 %20, i64* %22, align 8
  %23 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %24 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %23, i32 0, i32 6
  store i64 0, i64* %24, align 8
  %25 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %26 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %31 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %33 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %36 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to %struct.scsi_mechanism_status_header*
  store %struct.scsi_mechanism_status_header* %40, %struct.scsi_mechanism_status_header** %3, align 8
  %41 = load %struct.scsi_mechanism_status_header*, %struct.scsi_mechanism_status_header** %3, align 8
  %42 = getelementptr inbounds %struct.scsi_mechanism_status_header, %struct.scsi_mechanism_status_header* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.scsi_mechanism_status_header*, %struct.scsi_mechanism_status_header** %3, align 8
  %44 = getelementptr inbounds %struct.scsi_mechanism_status_header, %struct.scsi_mechanism_status_header* %43, i32 0, i32 1
  store i32 224, i32* %44, align 4
  %45 = load %struct.scsi_mechanism_status_header*, %struct.scsi_mechanism_status_header** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_mechanism_status_header, %struct.scsi_mechanism_status_header* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @scsi_ulto3b(i32 0, i32 %47)
  %49 = load %struct.scsi_mechanism_status_header*, %struct.scsi_mechanism_status_header** %3, align 8
  %50 = getelementptr inbounds %struct.scsi_mechanism_status_header, %struct.scsi_mechanism_status_header* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.scsi_mechanism_status_header*, %struct.scsi_mechanism_status_header** %3, align 8
  %52 = getelementptr inbounds %struct.scsi_mechanism_status_header, %struct.scsi_mechanism_status_header* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @scsi_ulto2b(i32 0, i32 %53)
  %55 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %56 = call i32 @ctl_set_success(%struct.ctl_scsiio* %55)
  %57 = load i32, i32* @CTL_FLAG_ALLOCATED, align 4
  %58 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %59 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %57
  store i32 %62, i32* %60, align 4
  %63 = load i32, i32* @ctl_config_move_done, align 4
  %64 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %65 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %2, align 8
  %67 = bitcast %struct.ctl_scsiio* %66 to %union.ctl_io*
  %68 = call i32 @ctl_datamove(%union.ctl_io* %67)
  %69 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  ret i32 %69
}

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @scsi_ulto3b(i32, i32) #1

declare dso_local i32 @scsi_ulto2b(i32, i32) #1

declare dso_local i32 @ctl_set_success(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_datamove(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
