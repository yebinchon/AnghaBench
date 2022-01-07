; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i64 }
%struct.scsi_inquiry = type { i32, i64 }
%union.ctl_io = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"ctl_inquiry\0A\00", align 1
@SI_EVPD = common dso_local global i32 0, align 4
@CTL_RETVAL_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_inquiry(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ctl_scsiio*, align 8
  %4 = alloca %struct.scsi_inquiry*, align 8
  %5 = alloca i32, align 4
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %6 = call i32 @CTL_DEBUG_PRINT(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %8 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.scsi_inquiry*
  store %struct.scsi_inquiry* %10, %struct.scsi_inquiry** %4, align 8
  %11 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %4, align 8
  %12 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SI_EVPD, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = call i32 @ctl_inquiry_evpd(%struct.ctl_scsiio* %18)
  store i32 %19, i32* %5, align 4
  br label %36

20:                                               ; preds = %1
  %21 = load %struct.scsi_inquiry*, %struct.scsi_inquiry** %4, align 8
  %22 = getelementptr inbounds %struct.scsi_inquiry, %struct.scsi_inquiry* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %27 = call i32 @ctl_inquiry_std(%struct.ctl_scsiio* %26)
  store i32 %27, i32* %5, align 4
  br label %35

28:                                               ; preds = %20
  %29 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %30 = call i32 @ctl_set_invalid_field(%struct.ctl_scsiio* %29, i32 1, i32 1, i32 2, i32 0, i32 0)
  %31 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %32 = bitcast %struct.ctl_scsiio* %31 to %union.ctl_io*
  %33 = call i32 @ctl_done(%union.ctl_io* %32)
  %34 = load i32, i32* @CTL_RETVAL_COMPLETE, align 4
  store i32 %34, i32* %2, align 4
  br label %38

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %36, %28
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @CTL_DEBUG_PRINT(i8*) #1

declare dso_local i32 @ctl_inquiry_evpd(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_inquiry_std(%struct.ctl_scsiio*) #1

declare dso_local i32 @ctl_set_invalid_field(%struct.ctl_scsiio*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ctl_done(%union.ctl_io*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
