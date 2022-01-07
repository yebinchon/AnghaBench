; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_sense_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_sense_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32, i32, i32, i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.sbuf = type { i32 }
%union.ctl_io = type { i32 }

@SSS_FLAG_PRINT_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_scsi_sense_sbuf(%struct.ctl_scsiio* %0, %struct.scsi_inquiry_data* %1, %struct.sbuf* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_scsiio*, align 8
  %7 = alloca %struct.scsi_inquiry_data*, align 8
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %6, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %7, align 8
  store %struct.sbuf* %2, %struct.sbuf** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %12 = icmp eq %struct.ctl_scsiio* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %4
  %14 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %15 = icmp eq %struct.sbuf* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %4
  store i32 -1, i32* %5, align 4
  br label %52

17:                                               ; preds = %13
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %19 = bitcast %struct.ctl_scsiio* %18 to %union.ctl_io*
  %20 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %21 = call i32 @ctl_scsi_path_string(%union.ctl_io* %19, i8* %20, i32 64)
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @SSS_FLAG_PRINT_COMMAND, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %17
  %27 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %28 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %29 = call i32 @sbuf_cat(%struct.sbuf* %27, i8* %28)
  %30 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %31 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %32 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %33 = call i32 @ctl_scsi_command_string(%struct.ctl_scsiio* %30, %struct.scsi_inquiry_data* %31, %struct.sbuf* %32)
  %34 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %35 = call i32 @sbuf_printf(%struct.sbuf* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %26, %17
  %37 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %38 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %37, i32 0, i32 3
  %39 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %40 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %43 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %44 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %7, align 8
  %45 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %46 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %6, align 8
  %49 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @scsi_sense_only_sbuf(i32* %38, i32 %41, %struct.sbuf* %42, i8* %43, %struct.scsi_inquiry_data* %44, i32 %47, i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %36, %16
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @ctl_scsi_path_string(%union.ctl_io*, i8*, i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @ctl_scsi_command_string(%struct.ctl_scsiio*, %struct.scsi_inquiry_data*, %struct.sbuf*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @scsi_sense_only_sbuf(i32*, i32, %struct.sbuf*, i8*, %struct.scsi_inquiry_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
