; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_desc_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_sense_desc_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_desc_printer = type { i64, i32 (%struct.sbuf.0*, %struct.scsi_sense_data.1*, i64, i32*, i32, %struct.scsi_inquiry_data.2*, %struct.scsi_sense_desc_header.3*)* }
%struct.sbuf.0 = type opaque
%struct.scsi_sense_data.1 = type opaque
%struct.scsi_inquiry_data.2 = type opaque
%struct.scsi_sense_desc_header.3 = type opaque
%struct.sbuf = type { i32 }
%struct.scsi_sense_data = type { i32 }
%struct.scsi_inquiry_data = type { i32 }
%struct.scsi_sense_desc_header = type { i64 }

@scsi_sense_printers = common dso_local global %struct.scsi_sense_desc_printer* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_sense_desc_sbuf(%struct.sbuf* %0, %struct.scsi_sense_data* %1, i64 %2, i32* %3, i32 %4, %struct.scsi_inquiry_data* %5, %struct.scsi_sense_desc_header* %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_sense_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scsi_inquiry_data*, align 8
  %14 = alloca %struct.scsi_sense_desc_header*, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.scsi_sense_desc_printer*, align 8
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_sense_data* %1, %struct.scsi_sense_data** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.scsi_inquiry_data* %5, %struct.scsi_inquiry_data** %13, align 8
  store %struct.scsi_sense_desc_header* %6, %struct.scsi_sense_desc_header** %14, align 8
  store i64 0, i64* %15, align 8
  br label %17

17:                                               ; preds = %59, %7
  %18 = load i64, i64* %15, align 8
  %19 = load %struct.scsi_sense_desc_printer*, %struct.scsi_sense_desc_printer** @scsi_sense_printers, align 8
  %20 = call i64 @nitems(%struct.scsi_sense_desc_printer* %19)
  %21 = icmp ult i64 %18, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %17
  %23 = load %struct.scsi_sense_desc_printer*, %struct.scsi_sense_desc_printer** @scsi_sense_printers, align 8
  %24 = load i64, i64* %15, align 8
  %25 = getelementptr inbounds %struct.scsi_sense_desc_printer, %struct.scsi_sense_desc_printer* %23, i64 %24
  store %struct.scsi_sense_desc_printer* %25, %struct.scsi_sense_desc_printer** %16, align 8
  %26 = load %struct.scsi_sense_desc_printer*, %struct.scsi_sense_desc_printer** %16, align 8
  %27 = getelementptr inbounds %struct.scsi_sense_desc_printer, %struct.scsi_sense_desc_printer* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %30 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  br label %62

34:                                               ; preds = %22
  %35 = load %struct.scsi_sense_desc_printer*, %struct.scsi_sense_desc_printer** %16, align 8
  %36 = getelementptr inbounds %struct.scsi_sense_desc_printer, %struct.scsi_sense_desc_printer* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %39 = getelementptr inbounds %struct.scsi_sense_desc_header, %struct.scsi_sense_desc_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %59

43:                                               ; preds = %34
  %44 = load %struct.scsi_sense_desc_printer*, %struct.scsi_sense_desc_printer** %16, align 8
  %45 = getelementptr inbounds %struct.scsi_sense_desc_printer, %struct.scsi_sense_desc_printer* %44, i32 0, i32 1
  %46 = load i32 (%struct.sbuf.0*, %struct.scsi_sense_data.1*, i64, i32*, i32, %struct.scsi_inquiry_data.2*, %struct.scsi_sense_desc_header.3*)*, i32 (%struct.sbuf.0*, %struct.scsi_sense_data.1*, i64, i32*, i32, %struct.scsi_inquiry_data.2*, %struct.scsi_sense_desc_header.3*)** %45, align 8
  %47 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %48 = bitcast %struct.sbuf* %47 to %struct.sbuf.0*
  %49 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %50 = bitcast %struct.scsi_sense_data* %49 to %struct.scsi_sense_data.1*
  %51 = load i64, i64* %10, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %13, align 8
  %55 = bitcast %struct.scsi_inquiry_data* %54 to %struct.scsi_inquiry_data.2*
  %56 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %57 = bitcast %struct.scsi_sense_desc_header* %56 to %struct.scsi_sense_desc_header.3*
  %58 = call i32 %46(%struct.sbuf.0* %48, %struct.scsi_sense_data.1* %50, i64 %51, i32* %52, i32 %53, %struct.scsi_inquiry_data.2* %55, %struct.scsi_sense_desc_header.3* %57)
  br label %71

59:                                               ; preds = %42
  %60 = load i64, i64* %15, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %15, align 8
  br label %17

62:                                               ; preds = %33, %17
  %63 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %64 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %9, align 8
  %65 = load i64, i64* %10, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load %struct.scsi_inquiry_data*, %struct.scsi_inquiry_data** %13, align 8
  %69 = load %struct.scsi_sense_desc_header*, %struct.scsi_sense_desc_header** %14, align 8
  %70 = call i32 @scsi_sense_generic_sbuf(%struct.sbuf* %63, %struct.scsi_sense_data* %64, i64 %65, i32* %66, i32 %67, %struct.scsi_inquiry_data* %68, %struct.scsi_sense_desc_header* %69)
  br label %71

71:                                               ; preds = %62, %43
  ret void
}

declare dso_local i64 @nitems(%struct.scsi_sense_desc_printer*) #1

declare dso_local i32 @scsi_sense_generic_sbuf(%struct.sbuf*, %struct.scsi_sense_data*, i64, i32*, i32, %struct.scsi_inquiry_data*, %struct.scsi_sense_desc_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
