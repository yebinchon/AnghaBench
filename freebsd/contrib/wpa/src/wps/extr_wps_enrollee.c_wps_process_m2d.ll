; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m2d.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_m2d.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 (i32, i32, %union.wps_event_data*)* }
%union.wps_event_data = type { %struct.wps_event_m2d }
%struct.wps_event_m2d = type { i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8* }
%struct.wps_parse_attr = type { i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"WPS: Received M2D\00", align 1
@RECV_M2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"WPS: Unexpected state (%d) for receiving M2D\00", align 1
@SEND_WSC_NACK = common dso_local global i64 0, align 8
@WPS_CONTINUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"WPS: Manufacturer\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"WPS: Model Name\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"WPS: Model Number\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"WPS: Serial Number\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"WPS: Device Name\00", align 1
@WPS_EV_M2D = common dso_local global i32 0, align 4
@RECEIVED_M2D = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wps_parse_attr*)* @wps_process_m2d to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_m2d(%struct.wps_data* %0, %struct.wps_parse_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wps_parse_attr*, align 8
  %6 = alloca %union.wps_event_data, align 8
  %7 = alloca %struct.wps_event_m2d*, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wps_parse_attr* %1, %struct.wps_parse_attr** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %11 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @RECV_M2, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32, i32* @MSG_DEBUG, align 4
  %17 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %18 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %16, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  %21 = load i64, i64* @SEND_WSC_NACK, align 8
  %22 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %23 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %24, i32* %3, align 4
  br label %183

25:                                               ; preds = %2
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %28 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %27, i32 0, i32 12
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %30, i32 0, i32 11
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @wpa_hexdump_ascii(i32 %26, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %29, i32 %32)
  %34 = load i32, i32* @MSG_DEBUG, align 4
  %35 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %36 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %35, i32 0, i32 10
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %39 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @wpa_hexdump_ascii(i32 %34, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %43, i32 0, i32 8
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %47 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @wpa_hexdump_ascii(i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %52 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %51, i32 0, i32 6
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %55 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %54, i32 0, i32 5
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @wpa_hexdump_ascii(i32 %50, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i32 %53, i32 %56)
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %60 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %63 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @wpa_hexdump_ascii(i32 %58, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %67 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %69, align 8
  %71 = icmp ne i32 (i32, i32, %union.wps_event_data*)* %70, null
  br i1 %71, label %72, label %178

72:                                               ; preds = %25
  %73 = bitcast %union.wps_event_data* %6 to %struct.wps_event_m2d*
  store %struct.wps_event_m2d* %73, %struct.wps_event_m2d** %7, align 8
  %74 = call i32 @os_memset(%union.wps_event_data* %6, i32 0, i32 72)
  %75 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %76 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %75, i32 0, i32 13
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %72
  %80 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %81 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %80, i32 0, i32 13
  %82 = load i64, i64* %81, align 8
  %83 = call i8* @WPA_GET_BE16(i64 %82)
  %84 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %85 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %84, i32 0, i32 13
  store i8* %83, i8** %85, align 8
  br label %86

86:                                               ; preds = %79, %72
  %87 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %88 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %87, i32 0, i32 12
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %91 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 8
  %92 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %93 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %92, i32 0, i32 11
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %96 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %95, i32 0, i32 11
  store i32 %94, i32* %96, align 4
  %97 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %98 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %97, i32 0, i32 10
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %101 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %100, i32 0, i32 10
  store i32 %99, i32* %101, align 8
  %102 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %103 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %102, i32 0, i32 9
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %106 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %105, i32 0, i32 9
  store i32 %104, i32* %106, align 4
  %107 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %108 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %107, i32 0, i32 8
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %111 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %110, i32 0, i32 8
  store i32 %109, i32* %111, align 8
  %112 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %113 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %116 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %115, i32 0, i32 7
  store i32 %114, i32* %116, align 4
  %117 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %118 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %121 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %120, i32 0, i32 6
  store i32 %119, i32* %121, align 8
  %122 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %123 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %126 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %125, i32 0, i32 5
  store i32 %124, i32* %126, align 4
  %127 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %128 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %131 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %130, i32 0, i32 4
  store i32 %129, i32* %131, align 8
  %132 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %133 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %136 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %135, i32 0, i32 3
  store i32 %134, i32* %136, align 4
  %137 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %138 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %141 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %140, i32 0, i32 2
  store i32 %139, i32* %141, align 8
  %142 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %143 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %86
  %147 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %148 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = call i8* @WPA_GET_BE16(i64 %149)
  %151 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %152 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %146, %86
  %154 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %155 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = load %struct.wps_parse_attr*, %struct.wps_parse_attr** %5, align 8
  %160 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i8* @WPA_GET_BE16(i64 %161)
  %163 = load %struct.wps_event_m2d*, %struct.wps_event_m2d** %7, align 8
  %164 = getelementptr inbounds %struct.wps_event_m2d, %struct.wps_event_m2d* %163, i32 0, i32 0
  store i8* %162, i8** %164, align 8
  br label %165

165:                                              ; preds = %158, %153
  %166 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %167 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %166, i32 0, i32 1
  %168 = load %struct.TYPE_2__*, %struct.TYPE_2__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 1
  %170 = load i32 (i32, i32, %union.wps_event_data*)*, i32 (i32, i32, %union.wps_event_data*)** %169, align 8
  %171 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %172 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %171, i32 0, i32 1
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @WPS_EV_M2D, align 4
  %177 = call i32 %170(i32 %175, i32 %176, %union.wps_event_data* %6)
  br label %178

178:                                              ; preds = %165, %25
  %179 = load i64, i64* @RECEIVED_M2D, align 8
  %180 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %181 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %180, i32 0, i32 0
  store i64 %179, i64* %181, align 8
  %182 = load i32, i32* @WPS_CONTINUE, align 4
  store i32 %182, i32* %3, align 4
  br label %183

183:                                              ; preds = %178, %15
  %184 = load i32, i32* %3, align 4
  ret i32 %184
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i32) #1

declare dso_local i32 @os_memset(%union.wps_event_data*, i32, i32) #1

declare dso_local i8* @WPA_GET_BE16(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
