; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_progress_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_progress_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i32 }
%struct.scsi_sense_progress = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c" asc:%x,%x (%s): \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_progress_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i32 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca %struct.scsi_sense_progress*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  %19 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %20 = bitcast %struct.scsi_sense_desc_header* %19 to %struct.scsi_sense_progress*
  store %struct.scsi_sense_progress* %20, %struct.scsi_sense_progress** %15, align 8
  %21 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %22 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %25 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %28 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %13, align 8
  %31 = call i32 @scsi_sense_desc(i32 %23, i32 %26, i32 %29, %struct.scsi_inquiry_data* %30, i8** %16, i8** %17)
  %32 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %33 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @scsi_2btoul(i32 %34)
  store i32 %35, i32* %18, align 4
  %36 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i32 @sbuf_cat(%struct.sbuf* %36, i8* %37)
  %39 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %40 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %41 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.scsi_sense_progress*, %struct.scsi_sense_progress** %15, align 8
  %44 = getelementptr inbounds %struct.scsi_sense_progress, %struct.scsi_sense_progress* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i8*, i8** %17, align 8
  %47 = call i32 @sbuf_printf(%struct.sbuf* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %45, i8* %46)
  %48 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %49 = load i32, i32* %18, align 4
  %50 = call i32 @scsi_progress_sbuf(%struct.sbuf* %48, i32 %49)
  ret void
}

declare dso_local i32 @scsi_sense_desc(i32, i32, i32, %struct.scsi_inquiry_data*, i8**, i8**) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @sbuf_cat(%struct.sbuf*, i8*) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, i32, i8*) #1

declare dso_local i32 @scsi_progress_sbuf(%struct.sbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
