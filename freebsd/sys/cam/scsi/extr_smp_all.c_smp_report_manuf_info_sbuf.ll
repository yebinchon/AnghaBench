; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_report_manuf_info_sbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/scsi/extr_smp_all.c_smp_report_manuf_info_sbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smp_report_manuf_info_response = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sbuf = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Report Manufacturer Information\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Expander Change count: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"SAS 1.1 Format: %s\0A\00", align 1
@SMP_RMI_SAS11_FORMAT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"<%s %s %s>\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Vendor Specific Data:\0A\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"%08lx  \00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.10 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"Component Vendor: %s\0A\00", align 1
@.str.12 = private unnamed_addr constant [19 x i8] c"Component ID: %#x\0A\00", align 1
@.str.13 = private unnamed_addr constant [25 x i8] c"Component Revision: %#x\0A\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"Vendor Specific: 0x%016jx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_report_manuf_info_sbuf(%struct.smp_report_manuf_info_response* %0, i32 %1, %struct.sbuf* %2) #0 {
  %4 = alloca %struct.smp_report_manuf_info_response*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sbuf*, align 8
  %7 = alloca [16 x i8], align 16
  %8 = alloca [48 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca i8**, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.smp_report_manuf_info_response* %0, %struct.smp_report_manuf_info_response** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.sbuf* %2, %struct.sbuf** %6, align 8
  %14 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %15 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %14, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %17 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %18 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %17, i32 0, i32 9
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @scsi_2btoul(i32 %19)
  %21 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %23 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %24 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @SMP_RMI_SAS11_FORMAT, align 4
  %27 = and i32 %25, %26
  %28 = call i8* @smp_yesno(i32 %27)
  %29 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %22, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* %28)
  %30 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %31 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %32 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @cam_strvis(i8* %30, i32 %33, i32 4, i32 16)
  %35 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %36 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %37 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @cam_strvis(i8* %35, i32 %38, i32 4, i32 48)
  %40 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %41 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %42 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @cam_strvis(i8* %40, i32 %43, i32 4, i32 16)
  %45 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %46 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %47 = getelementptr inbounds [48 x i8], [48 x i8]* %8, i64 0, i64 0
  %48 = getelementptr inbounds [16 x i8], [16 x i8]* %9, i64 0, i64 0
  %49 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %46, i8* %47, i8* %48)
  %50 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %51 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @SMP_RMI_SAS11_FORMAT, align 4
  %54 = and i32 %52, %53
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %111

56:                                               ; preds = %3
  %57 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %58 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %59 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %60 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %59, i32 0, i32 4
  %61 = bitcast i32* %60 to i8**
  store i8** %61, i8*** %11, align 8
  store i32 1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %62

62:                                               ; preds = %99, %56
  %63 = load i8**, i8*** %11, align 8
  %64 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %65 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %64, i32 0, i32 5
  %66 = bitcast i32* %65 to i8**
  %67 = icmp ult i8** %63, %66
  br i1 %67, label %68, label %104

68:                                               ; preds = %62
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %73 = load i8**, i8*** %11, align 8
  %74 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %75 = bitcast %struct.smp_report_manuf_info_response* %74 to i8**
  %76 = ptrtoint i8** %73 to i64
  %77 = ptrtoint i8** %75 to i64
  %78 = sub i64 %76, %77
  %79 = sdiv exact i64 %78, 8
  %80 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %72, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0), i64 %79)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %81

81:                                               ; preds = %71, %68
  %82 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %83 = load i8**, i8*** %11, align 8
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %82, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8* %84)
  %86 = load i32, i32* %13, align 4
  %87 = icmp eq i32 %86, 15
  br i1 %87, label %88, label %91

88:                                               ; preds = %81
  %89 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %90 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %98

91:                                               ; preds = %81
  %92 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %93 = load i32, i32* %13, align 4
  %94 = icmp eq i32 %93, 7
  %95 = zext i1 %94 to i64
  %96 = select i1 %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.10, i64 0, i64 0)
  %97 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %92, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0), i8* %96)
  br label %98

98:                                               ; preds = %91, %88
  br label %99

99:                                               ; preds = %98
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i32 1
  store i8** %101, i8*** %11, align 8
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %13, align 4
  br label %62

104:                                              ; preds = %62
  %105 = load i32, i32* %13, align 4
  %106 = icmp ne i32 %105, 16
  br i1 %106, label %107, label %110

107:                                              ; preds = %104
  %108 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %109 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %104
  br label %138

111:                                              ; preds = %3
  %112 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %113 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %114 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @cam_strvis(i8* %112, i32 %115, i32 4, i32 16)
  %117 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %118 = getelementptr inbounds [16 x i8], [16 x i8]* %10, i64 0, i64 0
  %119 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %117, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i64 0, i64 0), i8* %118)
  %120 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %121 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %122 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @scsi_2btoul(i32 %123)
  %125 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %120, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i64 0, i64 0), i8* %124)
  %126 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %127 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %128 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %126, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.13, i64 0, i64 0), i8* %129)
  %131 = load %struct.sbuf*, %struct.sbuf** %6, align 8
  %132 = load %struct.smp_report_manuf_info_response*, %struct.smp_report_manuf_info_response** %4, align 8
  %133 = getelementptr inbounds %struct.smp_report_manuf_info_response, %struct.smp_report_manuf_info_response* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i64 @scsi_8btou64(i32 %134)
  %136 = inttoptr i64 %135 to i8*
  %137 = call i32 (%struct.sbuf*, i8*, ...) @sbuf_printf(%struct.sbuf* %131, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i64 0, i64 0), i8* %136)
  br label %138

138:                                              ; preds = %111, %110
  ret void
}

declare dso_local i32 @sbuf_printf(%struct.sbuf*, i8*, ...) #1

declare dso_local i8* @scsi_2btoul(i32) #1

declare dso_local i8* @smp_yesno(i32) #1

declare dso_local i32 @cam_strvis(i8*, i32, i32, i32) #1

declare dso_local i64 @scsi_8btou64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
