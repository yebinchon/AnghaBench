; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_int_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_int_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [62 x i8] c"Available length of attribute ID 0x%.4x %zu < field length %u\00", align 1
@SCSI_ATTR_FLAG_FP = common dso_local global i32 0, align 4
@SCSI_ATTR_FLAG_DIV_10 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*Lf\00", align 1
@SCSI_ATTR_FLAG_FP_1DIGIT = common dso_local global i32 0, align 4
@SCSI_ATTR_FLAG_HEX = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"0x%jx\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%ju\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_int_sbuf(%struct.sbuf* %0, %struct.scsi_mam_attribute_header* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_mam_attribute_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca x86_fp80, align 16
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_mam_attribute_header* %1, %struct.scsi_mam_attribute_header** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %18, align 4
  %20 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %21 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @scsi_2btoul(i32* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 24
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* %16, align 8
  %28 = load i32, i32* %17, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %31, label %45

31:                                               ; preds = %7
  %32 = load i8*, i8** %13, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i8*, i8** %13, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %38 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @scsi_2btoul(i32* %39)
  %41 = load i64, i64* %16, align 8
  %42 = load i32, i32* %17, align 4
  %43 = call i32 @snprintf(i8* %35, i32 %36, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41, i32 %42)
  br label %44

44:                                               ; preds = %34, %31
  store i32 1, i32* %18, align 4
  br label %123

45:                                               ; preds = %7
  %46 = load i32, i32* %17, align 4
  switch i32 %46, label %74 [
    i32 0, label %47
    i32 1, label %48
    i32 2, label %54
    i32 3, label %59
    i32 4, label %64
    i32 8, label %69
  ]

47:                                               ; preds = %45
  br label %123

48:                                               ; preds = %45
  %49 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %50 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %49, i32 0, i32 2
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %15, align 4
  br label %83

54:                                               ; preds = %45
  %55 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %56 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @scsi_2btoul(i32* %57)
  store i32 %58, i32* %15, align 4
  br label %83

59:                                               ; preds = %45
  %60 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %61 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @scsi_3btoul(i32* %62)
  store i32 %63, i32* %15, align 4
  br label %83

64:                                               ; preds = %45
  %65 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %66 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @scsi_4btoul(i32* %67)
  store i32 %68, i32* %15, align 4
  br label %83

69:                                               ; preds = %45
  %70 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %71 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @scsi_8btou64(i32* %72)
  store i32 %73, i32* %15, align 4
  br label %83

74:                                               ; preds = %45
  %75 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %76 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i8*, i8** %13, align 8
  %81 = load i32, i32* %14, align 4
  %82 = call i32 @scsi_attrib_hexdump_sbuf(%struct.sbuf* %75, %struct.scsi_mam_attribute_header* %76, i32 %77, i32 %78, i32 %79, i8* %80, i32 %81)
  store i32 %82, i32* %18, align 4
  br label %123

83:                                               ; preds = %69, %64, %59, %54, %48
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @SCSI_ATTR_FLAG_FP, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %83
  %89 = load i32, i32* %15, align 4
  %90 = sitofp i32 %89 to x86_fp80
  store x86_fp80 %90, x86_fp80* %19, align 16
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @SCSI_ATTR_FLAG_DIV_10, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %88
  %96 = load x86_fp80, x86_fp80* %19, align 16
  %97 = fdiv x86_fp80 %96, 0xK4002A000000000000000
  store x86_fp80 %97, x86_fp80* %19, align 16
  br label %98

98:                                               ; preds = %95, %88
  %99 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @SCSI_ATTR_FLAG_FP_1DIGIT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 1, i32 0
  %106 = load x86_fp80, x86_fp80* %19, align 16
  %107 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %105, x86_fp80 %106)
  br label %122

108:                                              ; preds = %83
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @SCSI_ATTR_FLAG_HEX, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %108
  %114 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %115 = load i32, i32* %15, align 4
  %116 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %114, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %115)
  br label %121

117:                                              ; preds = %108
  %118 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %119 = load i32, i32* %15, align 4
  %120 = call i32 (%struct.sbuf*, i8*, i32, ...) @sbuf_printf(%struct.sbuf* %118, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %119)
  br label %121

121:                                              ; preds = %117, %113
  br label %122

122:                                              ; preds = %121, %98
  br label %123

123:                                              ; preds = %122, %74, %47, %44
  %124 = load i32, i32* %18, align 4
  ret i32 %124
}

declare dso_local i32 @scsi_2btoul(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i64, i32) #1

declare dso_local i32 @scsi_3btoul(i32*) #1

declare dso_local i32 @scsi_4btoul(i32*) #1

declare dso_local i32 @scsi_8btou64(i32*) #1

declare dso_local i32 @scsi_attrib_hexdump_sbuf(%struct.sbuf*, %struct.scsi_mam_attribute_header*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
