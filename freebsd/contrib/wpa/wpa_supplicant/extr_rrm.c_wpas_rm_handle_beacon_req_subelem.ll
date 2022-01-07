; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rm_handle_beacon_req_subelem.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_rrm.c_wpas_rm_handle_beacon_req_subelem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32 }
%struct.beacon_rep_data = type { i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"SSID subelement with zero length - wildcard SSID\00", align 1
@SSID_MAX_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Invalid SSID subelement length: %u\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Invalid reporting information subelement length: %u\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"reporting information=%u is not supported\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"Invalid reporting detail subelement length: %u\00", align 1
@BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Invalid reporting detail: %u\00", align 1
@BEACON_REPORT_DETAIL_REQUESTED_ONLY = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [70 x i8] c"Beacon request: request subelement is present but report detail is %u\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"Invalid request subelement length: %u\00", align 1
@.str.8 = private unnamed_addr constant [58 x i8] c"Beacon Request: Request subelement appears more than once\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Failed to allocate EIDs bitmap\00", align 1
@.str.10 = private unnamed_addr constant [70 x i8] c"Beacon request: Invalid last indication request subelement length: %u\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Beacon request: Unknown subelement id %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.beacon_rep_data*, i32, i32, i32*)* @wpas_rm_handle_beacon_req_subelem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_rm_handle_beacon_req_subelem(%struct.wpa_supplicant* %0, %struct.beacon_rep_data* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca %struct.beacon_rep_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store %struct.beacon_rep_data* %1, %struct.beacon_rep_data** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %155 [
    i32 128, label %15
    i32 131, label %41
    i32 132, label %59
    i32 129, label %84
    i32 133, label %141
    i32 130, label %142
  ]

15:                                               ; preds = %5
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %15
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  br label %159

21:                                               ; preds = %15
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @SSID_MAX_LEN, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  store i32 -1, i32* %6, align 4
  br label %160

29:                                               ; preds = %21
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %32 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %34 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load i32*, i32** %11, align 8
  %37 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %38 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @os_memcpy(i32 %35, i32* %36, i32 %39)
  br label %159

41:                                               ; preds = %5
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 2
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load i32, i32* %10, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  store i32 -1, i32* %6, align 4
  br label %160

48:                                               ; preds = %41
  %49 = load i32*, i32** %11, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* @MSG_DEBUG, align 4
  %56 = load i32, i32* %12, align 4
  %57 = call i32 (i32, i8*, ...) @wpa_printf(i32 %55, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store i32 0, i32* %6, align 4
  br label %160

58:                                               ; preds = %48
  br label %159

59:                                               ; preds = %5
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 1
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 (i32, i8*, ...) @wpa_printf(i32 %63, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %64)
  store i32 -1, i32* %6, align 4
  br label %160

66:                                               ; preds = %59
  %67 = load i32*, i32** %11, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %71 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  %72 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %73 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @BEACON_REPORT_DETAIL_ALL_FIELDS_AND_ELEMENTS, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %66
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = load i32*, i32** %11, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %81)
  store i32 -1, i32* %6, align 4
  br label %160

83:                                               ; preds = %66
  br label %159

84:                                               ; preds = %5
  %85 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %86 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @BEACON_REPORT_DETAIL_REQUESTED_ONLY, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @MSG_DEBUG, align 4
  %92 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %93 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.6, i64 0, i64 0), i32 %94)
  store i32 -1, i32* %6, align 4
  br label %160

96:                                               ; preds = %84
  %97 = load i32, i32* %10, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %96
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0), i32 %101)
  store i32 -1, i32* %6, align 4
  br label %160

103:                                              ; preds = %96
  %104 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %105 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %103
  %109 = load i32, i32* @MSG_DEBUG, align 4
  %110 = call i32 (i32, i8*, ...) @wpa_printf(i32 %109, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %160

111:                                              ; preds = %103
  %112 = call i32 @bitfield_alloc(i32 255)
  %113 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %114 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %113, i32 0, i32 3
  store i32 %112, i32* %114, align 4
  %115 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %116 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %111
  %120 = load i32, i32* @MSG_DEBUG, align 4
  %121 = call i32 (i32, i8*, ...) @wpa_printf(i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %160

122:                                              ; preds = %111
  store i32 0, i32* %13, align 4
  br label %123

123:                                              ; preds = %137, %122
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp slt i32 %124, %125
  br i1 %126, label %127, label %140

127:                                              ; preds = %123
  %128 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %129 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32*, i32** %11, align 8
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @bitfield_set(i32 %130, i32 %135)
  br label %137

137:                                              ; preds = %127
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %123

140:                                              ; preds = %123
  br label %159

141:                                              ; preds = %5
  br label %159

142:                                              ; preds = %5
  %143 = load i32, i32* %10, align 4
  %144 = icmp ne i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32, i32* @MSG_DEBUG, align 4
  %147 = load i32, i32* %10, align 4
  %148 = call i32 (i32, i8*, ...) @wpa_printf(i32 %146, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.10, i64 0, i64 0), i32 %147)
  store i32 -1, i32* %6, align 4
  br label %160

149:                                              ; preds = %142
  %150 = load i32*, i32** %11, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.beacon_rep_data*, %struct.beacon_rep_data** %8, align 8
  %154 = getelementptr inbounds %struct.beacon_rep_data, %struct.beacon_rep_data* %153, i32 0, i32 2
  store i32 %152, i32* %154, align 4
  br label %159

155:                                              ; preds = %5
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = load i32, i32* %9, align 4
  %158 = call i32 (i32, i8*, ...) @wpa_printf(i32 %156, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i32 %157)
  br label %159

159:                                              ; preds = %155, %149, %141, %140, %83, %58, %29, %18
  store i32 1, i32* %6, align 4
  br label %160

160:                                              ; preds = %159, %145, %119, %108, %99, %90, %77, %62, %54, %44, %25
  %161 = load i32, i32* %6, align 4
  ret i32 %161
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @os_memcpy(i32, i32*, i32) #1

declare dso_local i32 @bitfield_alloc(i32) #1

declare dso_local i32 @bitfield_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
