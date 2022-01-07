; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_sense_print.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_sense_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.sbuf = type { i32 }

@SSS_FLAG_PRINT_COMMAND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ctl_scsi_sense_print(%struct.ctl_scsiio* %0, %struct.scsi_inquiry_data* %1, i32* %2) #0 {
  %4 = alloca %struct.ctl_scsiio*, align 8
  %5 = alloca %struct.scsi_inquiry_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sbuf, align 4
  %8 = alloca [512 x i8], align 16
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %4, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %10 = icmp eq %struct.ctl_scsiio* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %3
  br label %26

15:                                               ; preds = %11
  %16 = getelementptr inbounds [512 x i8], [512 x i8]* %8, i64 0, i64 0
  %17 = call i32 @sbuf_new(%struct.sbuf* %7, i8* %16, i32 512, i32 0)
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %4, align 8
  %19 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %5, align 8
  %20 = load i32, i32* @SSS_FLAG_PRINT_COMMAND, align 4
  %21 = call i32 @ctl_scsi_sense_sbuf(%struct.ctl_scsiio* %18, %struct.scsi_inquiry_data* %19, %struct.sbuf* %7, i32 %20)
  %22 = call i32 @sbuf_finish(%struct.sbuf* %7)
  %23 = load i32*, i32** %6, align 8
  %24 = call i8* @sbuf_data(%struct.sbuf* %7)
  %25 = call i32 @fprintf(i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %15, %14
  ret void
}

declare dso_local i32 @sbuf_new(%struct.sbuf*, i8*, i32, i32) #1

declare dso_local i32 @ctl_scsi_sense_sbuf(%struct.ctl_scsiio*, %struct.scsi_inquiry_data*, %struct.sbuf*, i32) #1

declare dso_local i32 @sbuf_finish(%struct.sbuf*) #1

declare dso_local i32 @fprintf(i32*, i8*, i8*) #1

declare dso_local i8* @sbuf_data(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
