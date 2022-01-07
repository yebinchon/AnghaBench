; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_stream_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_stream_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"Stream Command Sense Data: \00", align 1
@SSD_DESC_STREAM_FM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"Filemark\00", align 1
@SSD_DESC_STREAM_EOM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%sEOM\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SSD_DESC_STREAM_ILI = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%sILI\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_stream_sbuf(%struct.sbuf* %0, i32 %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %7 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %6, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @SSD_DESC_STREAM_FM, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %14 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %13, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %5, align 4
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @SSD_DESC_STREAM_EOM, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %15
  %21 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %26 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %25)
  store i32 1, i32* %5, align 4
  br label %27

27:                                               ; preds = %20, %15
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @SSD_DESC_STREAM_ILI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0)
  %38 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %37)
  br label %39

39:                                               ; preds = %32, %27
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
