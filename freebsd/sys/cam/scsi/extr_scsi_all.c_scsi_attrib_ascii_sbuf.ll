; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_ascii_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_ascii_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i32, i32, i32 }

@SCSI_ATTR_OUTPUT_NONASCII_MASK = common dso_local global i32 0, align 4
@CAM_STRVIS_FLAG_NONASCII_TRIM = common dso_local global i32 0, align 4
@CAM_STRVIS_FLAG_NONASCII_RAW = common dso_local global i32 0, align 4
@CAM_STRVIS_FLAG_NONASCII_ESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Available length of attribute ID 0x%.4x %zu < field length %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_ascii_sbuf(%struct.sbuf* %0, %struct.scsi_mam_attribute_header* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_mam_attribute_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_mam_attribute_header* %1, %struct.scsi_mam_attribute_header** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 12
  store i64 %22, i64* %15, align 8
  %23 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %24 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_2btoul(i32 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i64, i64* %15, align 8
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @MIN(i64 %27, i32 %28)
  store i32 %29, i32* %17, align 4
  %30 = load i32, i32* %17, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %7
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* @SCSI_ATTR_OUTPUT_NONASCII_MASK, align 4
  %35 = and i32 %33, %34
  switch i32 %35, label %41 [
    i32 128, label %36
    i32 129, label %38
    i32 130, label %40
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* @CAM_STRVIS_FLAG_NONASCII_TRIM, align 4
  store i32 %37, i32* %19, align 4
  br label %43

38:                                               ; preds = %32
  %39 = load i32, i32* @CAM_STRVIS_FLAG_NONASCII_RAW, align 4
  store i32 %39, i32* %19, align 4
  br label %43

40:                                               ; preds = %32
  br label %41

41:                                               ; preds = %32, %40
  %42 = load i32, i32* @CAM_STRVIS_FLAG_NONASCII_ESC, align 4
  store i32 %42, i32* %19, align 4
  br label %43

43:                                               ; preds = %41, %38, %36
  %44 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %45 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %46 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i32, i32* %19, align 4
  %50 = call i32 @cam_strvis_sbuf(%struct.sbuf* %44, i32 %47, i32 %48, i32 %49)
  br label %71

51:                                               ; preds = %7
  %52 = load i64, i64* %15, align 8
  %53 = load i32, i32* %16, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ult i64 %52, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i8*, i8** %13, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load i8*, i8** %13, align 8
  %61 = load i32, i32* %14, align 4
  %62 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %63 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @scsi_2btoul(i32 %64)
  %66 = load i64, i64* %15, align 8
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %65, i64 %66, i32 %67)
  br label %69

69:                                               ; preds = %59, %56
  store i32 1, i32* %18, align 4
  br label %70

70:                                               ; preds = %69, %51
  br label %71

71:                                               ; preds = %70, %43
  %72 = load i32, i32* %18, align 4
  ret i32 %72
}

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @cam_strvis_sbuf(%struct.sbuf*, i32, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
