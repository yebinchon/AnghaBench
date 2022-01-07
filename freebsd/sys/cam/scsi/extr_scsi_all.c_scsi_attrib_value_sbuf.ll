; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_value_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_value_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i32, i32 }

@SMA_FORMAT_MASK = common dso_local global i32 0, align 4
@SCSI_ATTR_FLAG_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unknown attribute format 0x%x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_value_sbuf(%struct.sbuf* %0, i32 %1, %struct.scsi_mam_attribute_header* %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.sbuf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_mam_attribute_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.scsi_mam_attribute_header* %2, %struct.scsi_mam_attribute_header** %9, align 8
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %15 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @SMA_FORMAT_MASK, align 4
  %18 = and i32 %16, %17
  switch i32 %18, label %62 [
    i32 130, label %19
    i32 129, label %28
    i32 128, label %53
  ]

19:                                               ; preds = %6
  %20 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %21 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @SCSI_ATTR_FLAG_NONE, align 4
  %24 = load i32, i32* %10, align 4
  %25 = load i8*, i8** %11, align 8
  %26 = load i64, i64* %12, align 8
  %27 = call i32 @scsi_attrib_ascii_sbuf(%struct.sbuf* %20, %struct.scsi_mam_attribute_header* %21, i32 %22, i32 %23, i32 %24, i8* %25, i64 %26)
  store i32 %27, i32* %13, align 4
  br label %75

28:                                               ; preds = %6
  %29 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %30 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @scsi_2btoul(i32 %31)
  %33 = icmp sle i32 %32, 8
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %36 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @SCSI_ATTR_FLAG_NONE, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load i8*, i8** %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = call i32 @scsi_attrib_int_sbuf(%struct.sbuf* %35, %struct.scsi_mam_attribute_header* %36, i32 %37, i32 %38, i32 %39, i8* %40, i64 %41)
  store i32 %42, i32* %13, align 4
  br label %52

43:                                               ; preds = %28
  %44 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %45 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @SCSI_ATTR_FLAG_NONE, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i8*, i8** %11, align 8
  %50 = load i64, i64* %12, align 8
  %51 = call i32 @scsi_attrib_hexdump_sbuf(%struct.sbuf* %44, %struct.scsi_mam_attribute_header* %45, i32 %46, i32 %47, i32 %48, i8* %49, i64 %50)
  store i32 %51, i32* %13, align 4
  br label %52

52:                                               ; preds = %43, %34
  br label %75

53:                                               ; preds = %6
  %54 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %55 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SCSI_ATTR_FLAG_NONE, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load i8*, i8** %11, align 8
  %60 = load i64, i64* %12, align 8
  %61 = call i32 @scsi_attrib_text_sbuf(%struct.sbuf* %54, %struct.scsi_mam_attribute_header* %55, i32 %56, i32 %57, i32 %58, i8* %59, i64 %60)
  store i32 %61, i32* %13, align 4
  br label %75

62:                                               ; preds = %6
  %63 = load i8*, i8** %11, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %62
  %66 = load i8*, i8** %11, align 8
  %67 = load i64, i64* %12, align 8
  %68 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %69 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @SMA_FORMAT_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @snprintf(i8* %66, i64 %67, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %65, %62
  store i32 1, i32* %13, align 4
  br label %78

75:                                               ; preds = %53, %52, %19
  %76 = load %struct.sbuf*, %struct.sbuf** %7, align 8
  %77 = call i32 @sbuf_trim(%struct.sbuf* %76)
  br label %78

78:                                               ; preds = %75, %74
  %79 = load i32, i32* %13, align 4
  ret i32 %79
}

declare dso_local i32 @scsi_attrib_ascii_sbuf(%struct.sbuf*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @scsi_attrib_int_sbuf(%struct.sbuf*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @scsi_attrib_hexdump_sbuf(%struct.sbuf*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @scsi_attrib_text_sbuf(%struct.sbuf*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i64) #1

declare dso_local i32 @snprintf(i8*, i64, i8*, i32) #1

declare dso_local i32 @sbuf_trim(%struct.sbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
