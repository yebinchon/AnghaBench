; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_generic_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_generic_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"Descriptor %#x:\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_generic_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i32 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  %17 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %18 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %19 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @sbuf_printf(%struct.sbuf* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %23 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %22, i64 1
  %24 = bitcast %struct.scsi_sense_desc_header* %23 to i32*
  store i32* %24, i32** %16, align 8
  store i32 0, i32* %15, align 4
  br label %25

25:                                               ; preds = %36, %7
  %26 = load i32, i32* %15, align 4
  %27 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %28 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %33 = load i32*, i32** %16, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sbuf_printf(%struct.sbuf* %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %15, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %15, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %16, align 8
  br label %25

41:                                               ; preds = %25
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
