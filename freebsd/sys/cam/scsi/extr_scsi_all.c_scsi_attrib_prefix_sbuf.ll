; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_prefix_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_prefix_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i32, i32, i32 }

@SCSI_ATTR_OUTPUT_FIELD_MASK = common dso_local global i32 0, align 4
@SCSI_ATTR_OUTPUT_FIELD_NONE = common dso_local global i32 0, align 4
@SCSI_ATTR_OUTPUT_FIELD_DESC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@SCSI_ATTR_OUTPUT_FIELD_NUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"%s(0x%.4x)\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SCSI_ATTR_OUTPUT_FIELD_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"%s[%d]\00", align 1
@SCSI_ATTR_OUTPUT_FIELD_RW = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%s(%s)\00", align 1
@SMA_READ_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [3 x i8] c"RO\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"RW\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c": \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @scsi_attrib_prefix_sbuf(%struct.sbuf* %0, i32 %1, %struct.scsi_mam_attribute_header* %2, i32 %3, i8* %4) #0 {
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_mam_attribute_header*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.scsi_mam_attribute_header* %2, %struct.scsi_mam_attribute_header** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = icmp ult i64 %15, 12
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %94

18:                                               ; preds = %5
  %19 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %8, align 8
  %20 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @scsi_2btoul(i32 %21)
  store i32 %22, i32* %13, align 4
  %23 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %8, align 8
  %24 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @scsi_2btoul(i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_NONE, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %18
  br label %94

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_DESC, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %45

41:                                               ; preds = %38
  %42 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %42, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %43)
  store i32 1, i32* %11, align 4
  br label %45

45:                                               ; preds = %41, %38, %33
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_NUM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %56 = load i32, i32* %13, align 4
  %57 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %51, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i8* %55, i32 %56)
  store i32 0, i32* %11, align 4
  br label %58

58:                                               ; preds = %50, %45
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_SIZE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %71

63:                                               ; preds = %58
  %64 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %69 = load i32, i32* %12, align 4
  %70 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %64, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i8* %68, i32 %69)
  store i32 0, i32* %11, align 4
  br label %71

71:                                               ; preds = %63, %58
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* @SCSI_ATTR_OUTPUT_FIELD_RW, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %91

76:                                               ; preds = %71
  %77 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %82 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %8, align 8
  %83 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @SMA_READ_ONLY, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0)
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %77, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %81, i8* %89)
  br label %91

91:                                               ; preds = %76, %71
  %92 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %93 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i64 0, i64 0))
  br label %94

94:                                               ; preds = %91, %32, %17
  ret void
}

declare dso_local i32 @scsi_2btoul(i32) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
