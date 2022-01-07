; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_volcoh_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_scsi_all.c_scsi_attrib_volcoh_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbuf = type { i32 }
%struct.scsi_mam_attribute_header = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [62 x i8] c"Available length of attribute ID 0x%.4x %zu < field length %u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"\0A\09Volume Change Reference Value:\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Volume Change Reference value has length of 0\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c" 0x%jx\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"\09Volume Coherency Count: %ju\0A\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"\09Volume Coherency Set Identifier: 0x%jx\0A\00", align 1
@.str.7 = private unnamed_addr constant [43 x i8] c"\09Application Client Specific Information: \00", align 1
@SCSI_LTFS_VER0_LEN = common dso_local global i32 0, align 4
@SCSI_LTFS_VER1_LEN = common dso_local global i32 0, align 4
@SCSI_LTFS_STR_NAME = common dso_local global i32 0, align 4
@SCSI_LTFS_STR_LEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [6 x i8] c"LTFS\0A\00", align 1
@SCSI_LTFS_UUID_LEN = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"\09LTFS UUID: %s\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"\09LTFS Version: %d\0A\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"Unknown\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_attrib_volcoh_sbuf(%struct.sbuf* %0, %struct.scsi_mam_attribute_header* %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.sbuf*, align 8
  %9 = alloca %struct.scsi_mam_attribute_header*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.sbuf* %0, %struct.sbuf** %8, align 8
  store %struct.scsi_mam_attribute_header* %1, %struct.scsi_mam_attribute_header** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %19, align 4
  store i8 0, i8* %17, align 1
  %22 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %23 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %22, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @scsi_2btoul(i8* %24)
  store i32 %25, i32* %16, align 4
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = sub i64 %27, 24
  store i64 %28, i64* %15, align 8
  %29 = load i32, i32* %16, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %15, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %7
  %34 = load i8*, i8** %13, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load i8*, i8** %13, align 8
  %38 = load i32, i32* %14, align 4
  %39 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %40 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %39, i32 0, i32 1
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @scsi_2btoul(i8* %41)
  %43 = load i64, i64* %15, align 8
  %44 = load i32, i32* %16, align 4
  %45 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %37, i32 %38, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i32 %42, i64 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %33
  store i32 1, i32* %19, align 4
  br label %181

47:                                               ; preds = %7
  %48 = load i32, i32* %16, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %47
  br label %181

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %51
  %53 = load %struct.scsi_mam_attribute_header*, %struct.scsi_mam_attribute_header** %9, align 8
  %54 = getelementptr inbounds %struct.scsi_mam_attribute_header, %struct.scsi_mam_attribute_header* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  store i8* %55, i8** %18, align 8
  %56 = load i8*, i8** %18, align 8
  %57 = load i8, i8* %56, align 1
  %58 = sext i8 %57 to i32
  store i32 %58, i32* %20, align 4
  %59 = load i8*, i8** %18, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %18, align 8
  %61 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %62 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* %20, align 4
  switch i32 %63, label %88 [
    i32 0, label %64
    i32 1, label %72
    i32 2, label %75
    i32 3, label %79
    i32 4, label %82
    i32 8, label %85
  ]

64:                                               ; preds = %52
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i8*, i8** %13, align 8
  %69 = load i32, i32* %14, align 4
  %70 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %68, i32 %69, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %71

71:                                               ; preds = %67, %64
  store i32 1, i32* %19, align 4
  br label %181

72:                                               ; preds = %52
  %73 = load i8*, i8** %18, align 8
  %74 = load i8, i8* %73, align 1
  store i8 %74, i8* %17, align 1
  br label %95

75:                                               ; preds = %52
  %76 = load i8*, i8** %18, align 8
  %77 = call i32 @scsi_2btoul(i8* %76)
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %17, align 1
  br label %95

79:                                               ; preds = %52
  %80 = load i8*, i8** %18, align 8
  %81 = call signext i8 @scsi_3btoul(i8* %80)
  store i8 %81, i8* %17, align 1
  br label %95

82:                                               ; preds = %52
  %83 = load i8*, i8** %18, align 8
  %84 = call signext i8 @scsi_4btoul(i8* %83)
  store i8 %84, i8* %17, align 1
  br label %95

85:                                               ; preds = %52
  %86 = load i8*, i8** %18, align 8
  %87 = call signext i8 @scsi_8btou64(i8* %86)
  store i8 %87, i8* %17, align 1
  br label %95

88:                                               ; preds = %52
  %89 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %91 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %92 = load i8*, i8** %18, align 8
  %93 = load i32, i32* %20, align 4
  %94 = call i32 @sbuf_hexdump(%struct.sbuf* %91, i8* %92, i32 %93, i32* null, i32 0)
  br label %95

95:                                               ; preds = %88, %85, %82, %79, %75, %72
  %96 = load i32, i32* %20, align 4
  %97 = icmp sle i32 %96, 8
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %100 = load i8, i8* %17, align 1
  %101 = sext i8 %100 to i32
  %102 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %98, %95
  %104 = load i32, i32* %20, align 4
  %105 = load i8*, i8** %18, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %18, align 8
  %108 = load i8*, i8** %18, align 8
  %109 = call signext i8 @scsi_8btou64(i8* %108)
  store i8 %109, i8* %17, align 1
  %110 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %111 = load i8, i8* %17, align 1
  %112 = sext i8 %111 to i32
  %113 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %110, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %112)
  %114 = load i8*, i8** %18, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 1
  store i8* %115, i8** %18, align 8
  %116 = load i8*, i8** %18, align 8
  %117 = call signext i8 @scsi_8btou64(i8* %116)
  store i8 %117, i8* %17, align 1
  %118 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %119 = load i8, i8* %17, align 1
  %120 = sext i8 %119 to i32
  %121 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %118, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i32 %120)
  %122 = load i8*, i8** %18, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  store i8* %123, i8** %18, align 8
  %124 = load i8*, i8** %18, align 8
  %125 = call i32 @scsi_2btoul(i8* %124)
  store i32 %125, i32* %21, align 4
  %126 = load i8*, i8** %18, align 8
  %127 = getelementptr inbounds i8, i8* %126, i64 4
  store i8* %127, i8** %18, align 8
  %128 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %129 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %128, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  %130 = load i32, i32* %21, align 4
  %131 = load i32, i32* @SCSI_LTFS_VER0_LEN, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %103
  %134 = load i32, i32* %21, align 4
  %135 = load i32, i32* @SCSI_LTFS_VER1_LEN, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %173

137:                                              ; preds = %133, %103
  %138 = load i8*, i8** %18, align 8
  %139 = load i32, i32* @SCSI_LTFS_STR_NAME, align 4
  %140 = load i64, i64* @SCSI_LTFS_STR_LEN, align 8
  %141 = call i64 @strncmp(i8* %138, i32 %139, i64 %140)
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %173

143:                                              ; preds = %137
  %144 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %145 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %144, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0))
  %146 = load i64, i64* @SCSI_LTFS_STR_LEN, align 8
  %147 = add nsw i64 %146, 1
  %148 = load i8*, i8** %18, align 8
  %149 = getelementptr inbounds i8, i8* %148, i64 %147
  store i8* %149, i8** %18, align 8
  %150 = load i8*, i8** %18, align 8
  %151 = load i64, i64* @SCSI_LTFS_UUID_LEN, align 8
  %152 = getelementptr inbounds i8, i8* %150, i64 %151
  %153 = load i8, i8* %152, align 1
  %154 = sext i8 %153 to i32
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %143
  %157 = load i8*, i8** %18, align 8
  %158 = load i64, i64* @SCSI_LTFS_UUID_LEN, align 8
  %159 = getelementptr inbounds i8, i8* %157, i64 %158
  store i8 0, i8* %159, align 1
  br label %160

160:                                              ; preds = %156, %143
  %161 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %162 = load i8*, i8** %18, align 8
  %163 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %161, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i8* %162)
  %164 = load i64, i64* @SCSI_LTFS_UUID_LEN, align 8
  %165 = add i64 %164, 1
  %166 = load i8*, i8** %18, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 %165
  store i8* %167, i8** %18, align 8
  %168 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %169 = load i8*, i8** %18, align 8
  %170 = load i8, i8* %169, align 1
  %171 = sext i8 %170 to i32
  %172 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %168, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0), i32 %171)
  br label %180

173:                                              ; preds = %137, %133
  %174 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %175 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %174, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0))
  %176 = load %struct.sbuf*, %struct.sbuf** %8, align 8
  %177 = load i8*, i8** %18, align 8
  %178 = load i32, i32* %21, align 4
  %179 = call i32 @sbuf_hexdump(%struct.sbuf* %176, i8* %177, i32 %178, i32* null, i32 0)
  br label %180

180:                                              ; preds = %173, %160
  br label %181

181:                                              ; preds = %180, %71, %50, %46
  %182 = load i32, i32* %19, align 4
  ret i32 %182
}

declare dso_local i32 @scsi_2btoul(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local signext i8 @scsi_3btoul(i8*) #1

declare dso_local signext i8 @scsi_4btoul(i8*) #1

declare dso_local signext i8 @scsi_8btou64(i8*) #1

declare dso_local i32 @sbuf_hexdump(%struct.sbuf*, i8*, i32, i32*, i32) #1

declare dso_local i64 @strncmp(i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
