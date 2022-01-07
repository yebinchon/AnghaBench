; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_text_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_text_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i8*, i32, i32 }

@SCSI_ATTR_OUTPUT_TEXT_MASK = common dso_local global i32 0, align 4
@SCSI_ATTR_OUTPUT_TEXT_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%%%02x\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"Available length of attribute ID 0x%.4x %zu < field length %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_text_sbuf(%struct.sbuf* %0, %struct.scsi_mam_attribute_header* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
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
  %20 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_mam_attribute_header* %1, %struct.scsi_mam_attribute_header** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  store i32 1, i32* %19, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = sub i64 %22, 16
  store i64 %23, i64* %15, align 8
  %24 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %25 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @scsi_2btoul(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load i64, i64* %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = call i32 @MIN(i64 %28, i32 %29)
  store i32 %30, i32* %17, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @SCSI_ATTR_OUTPUT_TEXT_MASK, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SCSI_ATTR_OUTPUT_TEXT_RAW, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %7
  store i32 0, i32* %19, align 4
  br label %37

37:                                               ; preds = %36, %7
  %38 = load i32, i32* %17, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %95

40:                                               ; preds = %37
  store i32 0, i32* %20, align 4
  br label %41

41:                                               ; preds = %91, %40
  %42 = load i32, i32* %20, align 4
  %43 = load i32, i32* %17, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %94

45:                                               ; preds = %41
  %46 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %47 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i32, i32* %20, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %48, i64 %50
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %91

56:                                               ; preds = %45
  %57 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %58 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i32, i32* %20, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp slt i32 %64, 128
  br i1 %65, label %69, label %66

66:                                               ; preds = %56
  %67 = load i32, i32* %19, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %66, %56
  %70 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %71 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %72 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %20, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = call i32 @sbuf_putc(%struct.sbuf* %70, i8 signext %77)
  br label %89

79:                                               ; preds = %66
  %80 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %81 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %82 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %81, i32 0, i32 0
  %83 = load i8*, i8** %82, align 8
  %84 = load i32, i32* %20, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = load i8, i8* %86, align 1
  %88 = call i32 @sbuf_printf(%struct.sbuf* %80, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8 zeroext %87)
  br label %89

89:                                               ; preds = %79, %69
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90, %55
  %92 = load i32, i32* %20, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %20, align 4
  br label %41

94:                                               ; preds = %41
  br label %115

95:                                               ; preds = %37
  %96 = load i64, i64* %15, align 8
  %97 = load i32, i32* %16, align 4
  %98 = sext i32 %97 to i64
  %99 = icmp ult i64 %96, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i8*, i8** %13, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %113

103:                                              ; preds = %100
  %104 = load i8*, i8** %13, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %107 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @scsi_2btoul(i32 %108)
  %110 = load i64, i64* %15, align 8
  %111 = load i32, i32* %16, align 4
  %112 = call i32 @snprintf(i8* %104, i32 %105, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %109, i64 %110, i32 %111)
  br label %113

113:                                              ; preds = %103, %100
  store i32 1, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %95
  br label %115

115:                                              ; preds = %114, %94
  %116 = load i32, i32* %18, align 4
  ret i32 %116
}

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @MIN(i64, i32) #1

declare dso_local i32 @sbuf_putc(%struct.sbuf*, i8 signext) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i8 zeroext) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
