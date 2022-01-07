; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_status_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl_scsi_all.c_ctl_scsi_status_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_scsiio = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Check Condition\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"Busy\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"Intermediate\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Intermediate-Condition Met\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Reservation Conflict\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"Command Terminated\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"Queue Full\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"ACA Active\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"Task Aborted\00", align 1
@ctl_scsi_status_string.unkstr = internal global [64 x i8] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [12 x i8] c"Unknown %#x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @ctl_scsi_status_string(%struct.ctl_scsiio* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ctl_scsiio*, align 8
  store %struct.ctl_scsiio* %0, %struct.ctl_scsiio** %3, align 8
  %4 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %5 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %17 [
    i32 131, label %7
    i32 135, label %8
    i32 136, label %9
    i32 133, label %10
    i32 132, label %11
    i32 129, label %12
    i32 134, label %13
    i32 130, label %14
    i32 137, label %15
    i32 128, label %16
  ]

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %22

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %22

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %22

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %22

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %22

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %22

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %22

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %22

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %22

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %22

17:                                               ; preds = %1
  %18 = load %struct.ctl_scsiio*, %struct.ctl_scsiio** %3, align 8
  %19 = getelementptr inbounds %struct.ctl_scsiio, %struct.ctl_scsiio* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @snprintf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ctl_scsi_status_string.unkstr, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %20)
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @ctl_scsi_status_string.unkstr, i64 0, i64 0), i8** %2, align 8
  br label %22

22:                                               ; preds = %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7
  %23 = load i8*, i8** %2, align 8
  ret i8* %23
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
