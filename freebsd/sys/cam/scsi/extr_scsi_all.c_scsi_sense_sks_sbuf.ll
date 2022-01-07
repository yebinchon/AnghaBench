; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_sks_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_sks_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i32 }
%struct.scsi_sense_sks = type { i32* }

@SSD_SKS_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_sks_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i32 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca %struct.scsi_sense_sks*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  %20 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %21 = bitcast %struct.scsi_sense_desc_header* %20 to %struct.scsi_sense_sks*
  store %struct.scsi_sense_sks* %21, %struct.scsi_sense_sks** %15, align 8
  %22 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %15, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @SSD_SKS_VALID, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %7
  br label %41

31:                                               ; preds = %7
  %32 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @scsi_extract_sense_len(%struct.scsi_sense_data* %32, i32 %33, i32* %16, i32* %17, i32* %18, i32* %19, i32 1)
  %35 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %36 = load i32, i32* %17, align 4
  %37 = load %struct.scsi_sense_sks*, %struct.scsi_sense_sks** %15, align 8
  %38 = getelementptr inbounds %struct.scsi_sense_sks, %struct.scsi_sense_sks* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @scsi_sks_sbuf(%struct.sbuf* %35, i32 %36, i32* %39)
  br label %41

41:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @scsi_extract_sense_len(%struct.scsi_sense_data*, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @scsi_sks_sbuf(%struct.sbuf*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
