; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_command_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_command_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i32 }
%struct.scsi_sense_command = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_command_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i32 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca %struct.scsi_sense_command*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  %16 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %17 = bitcast %struct.scsi_sense_desc_header* %16 to %struct.scsi_sense_command*
  store %struct.scsi_sense_command* %17, %struct.scsi_sense_command** %15, align 8
  %18 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %12, align 4
  %21 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %13, align 8
  %22 = load %struct.scsi_sense_command*, %struct.scsi_sense_command** %15, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_command, %struct.scsi_sense_command* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @scsi_8btou64(i32 %24)
  %26 = call i32 @scsi_command_sbuf(%struct.sbuf* %18, i32* %19, i32 %20, %struct.scsi_inquiry_data* %21, i32 %25)
  ret void
}

declare dso_local i32 @scsi_command_sbuf(%struct.sbuf*, i32*, i32, %struct.scsi_inquiry_data*, i32) #1

declare dso_local i32 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
