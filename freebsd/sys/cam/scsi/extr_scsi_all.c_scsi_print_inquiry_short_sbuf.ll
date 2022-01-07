; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_short_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_print_inquiry_short_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_inquiry_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [2 x i8] c"<\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"> \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_print_inquiry_short_sbuf(%struct.sbuf* %0, %struct.scsi_inquiry_data* %1) #0 {
  %3 = alloca %struct.sbuf*, align 8
  %4 = alloca %struct.scsi_inquiry_data*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %3, align 8
  store %struct.scsi_inquiry_data* %1, %struct.scsi_inquiry_data** %4, align 8
  %5 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %6 = call i32 @sbuf_printf(%struct.sbuf* %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %8 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @cam_strvis_sbuf(%struct.sbuf* %7, i32 %10, i32 4, i32 0)
  %12 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %13 = call i32 @sbuf_printf(%struct.sbuf* %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %14 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %15 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @cam_strvis_sbuf(%struct.sbuf* %14, i32 %17, i32 4, i32 0)
  %19 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %20 = call i32 @sbuf_printf(%struct.sbuf* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %22 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %4, align 8
  %23 = getelementptr inbounds %struct.scsi_inquiry_data, %struct.scsi_inquiry_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @cam_strvis_sbuf(%struct.sbuf* %21, i32 %24, i32 4, i32 0)
  %26 = load %struct.sbuf*, %struct.sbuf** %3, align 8
  %27 = call i32 @sbuf_printf(%struct.sbuf* %26, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*) #1

declare dso_local i32 @cam_strvis_sbuf(%struct.sbuf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
