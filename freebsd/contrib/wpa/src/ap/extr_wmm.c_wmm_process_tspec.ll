; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_process_tspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_wmm.c_wmm_process_tspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wmm_tspec_element = type { i32*, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"WMM: TS Info: UP=%d PSB=%d Direction=%d TID=%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"WMM: Nominal MSDU Size: %d%s\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c" (fixed)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"WMM: Mean Data Rate: %u bps\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"WMM: Minimum PHY Rate: %u bps\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"WMM: Surplus Bandwidth Allowance: %u.%04u\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"WMM: Invalid Nominal MSDU Size (0)\00", align 1
@WMM_ADDTS_STATUS_INVALID_PARAMETERS = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [47 x i8] c"WMM: Packets-per-second estimate for TSPEC: %d\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"WMM: Too small Minimum PHY Rate\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"WMM: Surplus Bandwidth Allowance not greater than unity\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"WMM: Estimated medium time: %lu\00", align 1
@.str.12 = private unnamed_addr constant [63 x i8] c"WMM: Refuse TSPEC request for over 75%% of available bandwidth\00", align 1
@WMM_ADDTS_STATUS_REFUSED = common dso_local global i32 0, align 4
@WMM_ADDTS_STATUS_ADMISSION_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmm_process_tspec(%struct.wmm_tspec_element* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wmm_tspec_element*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.wmm_tspec_element* %0, %struct.wmm_tspec_element** %3, align 8
  %13 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %14 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  %17 = load i32, i32* %16, align 4
  %18 = ashr i32 %17, 3
  %19 = and i32 %18, 7
  store i32 %19, i32* %7, align 4
  %20 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %21 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 2
  %26 = and i32 %25, 1
  store i32 %26, i32* %8, align 4
  %27 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %28 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 5
  %33 = and i32 %32, 3
  store i32 %33, i32* %9, align 4
  %34 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %35 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = ashr i32 %38, 1
  %40 = and i32 %39, 15
  store i32 %40, i32* %10, align 4
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* %10, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %48 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le_to_host16(i32 %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, 32767
  %54 = load i32, i32* %11, align 4
  %55 = and i32 %54, 32768
  %56 = icmp ne i32 %55, 0
  %57 = zext i1 %56 to i64
  %58 = select i1 %56, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %53, i8* %58)
  %60 = load i32, i32* @MSG_DEBUG, align 4
  %61 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %62 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @le_to_host32(i32 %63)
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %60, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %68 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @le_to_host32(i32 %69)
  %71 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %73 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @le_to_host16(i32 %74)
  store i32 %75, i32* %11, align 4
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load i32, i32* %11, align 4
  %78 = ashr i32 %77, 13
  %79 = load i32, i32* %11, align 4
  %80 = and i32 %79, 8191
  %81 = mul nsw i32 10000, %80
  %82 = sdiv i32 %81, 8192
  %83 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %78, i32 %82)
  %84 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %85 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le_to_host16(i32 %86)
  store i32 %87, i32* %11, align 4
  %88 = load i32, i32* %11, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %1
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %93 = load i32, i32* @WMM_ADDTS_STATUS_INVALID_PARAMETERS, align 4
  store i32 %93, i32* %2, align 4
  br label %165

94:                                               ; preds = %1
  %95 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %96 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @le_to_host32(i32 %97)
  %99 = sdiv i32 %98, 8
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %99, %100
  %102 = sub nsw i32 %101, 1
  %103 = load i32, i32* %11, align 4
  %104 = sdiv i32 %102, %103
  store i32 %104, i32* %5, align 4
  %105 = load i32, i32* @MSG_DEBUG, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 (i32, i8*, ...) @wpa_printf(i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.8, i64 0, i64 0), i32 %106)
  %108 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %109 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @le_to_host32(i32 %110)
  %112 = icmp slt i32 %111, 1000000
  br i1 %112, label %113, label %117

113:                                              ; preds = %94
  %114 = load i32, i32* @MSG_DEBUG, align 4
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %114, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  %116 = load i32, i32* @WMM_ADDTS_STATUS_INVALID_PARAMETERS, align 4
  store i32 %116, i32* %2, align 4
  br label %165

117:                                              ; preds = %94
  %118 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %119 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @le_to_host16(i32 %120)
  %122 = and i32 %121, 32767
  %123 = mul nsw i32 %122, 8
  %124 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %125 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @le_to_host32(i32 %126)
  %128 = sdiv i32 %127, 1000000
  %129 = sdiv i32 %123, %128
  %130 = add nsw i32 %129, 50
  store i32 %130, i32* %6, align 4
  %131 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %132 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @le_to_host16(i32 %133)
  store i32 %134, i32* %12, align 4
  %135 = load i32, i32* %12, align 4
  %136 = icmp sle i32 %135, 8192
  br i1 %136, label %137, label %141

137:                                              ; preds = %117
  %138 = load i32, i32* @MSG_DEBUG, align 4
  %139 = call i32 (i32, i8*, ...) @wpa_printf(i32 %138, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  %140 = load i32, i32* @WMM_ADDTS_STATUS_INVALID_PARAMETERS, align 4
  store i32 %140, i32* %2, align 4
  br label %165

141:                                              ; preds = %117
  %142 = load i32, i32* %12, align 4
  %143 = load i32, i32* %5, align 4
  %144 = mul i32 %142, %143
  %145 = load i32, i32* %6, align 4
  %146 = mul i32 %144, %145
  %147 = udiv i32 %146, 8192
  store i32 %147, i32* %4, align 4
  %148 = load i32, i32* @MSG_DEBUG, align 4
  %149 = load i32, i32* %4, align 4
  %150 = zext i32 %149 to i64
  %151 = call i32 (i32, i8*, ...) @wpa_printf(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i64 %150)
  %152 = load i32, i32* %4, align 4
  %153 = icmp ugt i32 %152, 750000
  br i1 %153, label %154, label %158

154:                                              ; preds = %141
  %155 = load i32, i32* @MSG_DEBUG, align 4
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %155, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.12, i64 0, i64 0))
  %157 = load i32, i32* @WMM_ADDTS_STATUS_REFUSED, align 4
  store i32 %157, i32* %2, align 4
  br label %165

158:                                              ; preds = %141
  %159 = load i32, i32* %4, align 4
  %160 = udiv i32 %159, 32
  %161 = call i32 @host_to_le16(i32 %160)
  %162 = load %struct.wmm_tspec_element*, %struct.wmm_tspec_element** %3, align 8
  %163 = getelementptr inbounds %struct.wmm_tspec_element, %struct.wmm_tspec_element* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load i32, i32* @WMM_ADDTS_STATUS_ADMISSION_ACCEPTED, align 4
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %158, %154, %137, %113, %90
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @le_to_host16(i32) #1

declare dso_local i32 @le_to_host32(i32) #1

declare dso_local i32 @host_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
