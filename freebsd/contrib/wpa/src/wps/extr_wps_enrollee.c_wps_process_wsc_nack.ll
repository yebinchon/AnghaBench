; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_wsc_nack.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/wps/extr_wps_enrollee.c_wps_process_wsc_nack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wps_data = type { i32, %struct.TYPE_2__, i32, i32, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.wpabuf = type { i32 }
%struct.wps_parse_attr = type { i64*, i32*, i32*, i32* }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"WPS: Received WSC_NACK\00", align 1
@WPS_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"WPS: No Message Type attribute\00", align 1
@WPS_WSC_NACK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [29 x i8] c"WPS: Invalid Message Type %d\00", align 1
@WPS_NONCE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"WPS: Mismatch in registrar nonce\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"WPS: Received Registrar Nonce\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"WPS: Expected Registrar Nonce\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"WPS: Mismatch in enrollee nonce\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"WPS: Received Enrollee Nonce\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"WPS: Expected Enrollee Nonce\00", align 1
@.str.9 = private unnamed_addr constant [50 x i8] c"WPS: No Configuration Error attribute in WSC_NACK\00", align 1
@.str.10 = private unnamed_addr constant [66 x i8] c"WPS: Registrar terminated negotiation with Configuration Error %d\00", align 1
@WPS_M3 = common dso_local global i32 0, align 4
@WPS_M5 = common dso_local global i32 0, align 4
@WPS_M7 = common dso_local global i32 0, align 4
@SEND_WSC_NACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wps_data*, %struct.wpabuf*)* @wps_process_wsc_nack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wps_process_wsc_nack(%struct.wps_data* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wps_data*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.wps_parse_attr, align 8
  %7 = alloca i64, align 8
  store %struct.wps_data* %0, %struct.wps_data** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  %8 = load i32, i32* @MSG_DEBUG, align 4
  %9 = call i32 (i32, i8*, ...) @wpa_printf(i32 %8, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %11 = call i64 @wps_parse_msg(%struct.wpabuf* %10, %struct.wps_parse_attr* %6)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %14, i32* %3, align 4
  br label %158

15:                                               ; preds = %2
  %16 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = icmp eq i64* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 (i32, i8*, ...) @wpa_printf(i32 %20, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %22, i32* %3, align 4
  br label %158

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @WPS_WSC_NACK, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %23
  %30 = load i32, i32* @MSG_DEBUG, align 4
  %31 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @wpa_printf(i32 %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0), i64 %33)
  %35 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %35, i32* %3, align 4
  br label %158

36:                                               ; preds = %23
  %37 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %42 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @WPS_NONCE_LEN, align 4
  %47 = call i64 @os_memcmp(i32* %43, i32* %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %40, %36
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* @MSG_DEBUG, align 4
  %53 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 3
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* @WPS_NONCE_LEN, align 4
  %56 = call i32 @wpa_hexdump(i32 %52, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32* %54, i32 %55)
  %57 = load i32, i32* @MSG_DEBUG, align 4
  %58 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %59 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %58, i32 0, i32 5
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* @WPS_NONCE_LEN, align 4
  %62 = call i32 @wpa_hexdump(i32 %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32* %60, i32 %61)
  %63 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %63, i32* %3, align 4
  br label %158

64:                                               ; preds = %40
  %65 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %77, label %68

68:                                               ; preds = %64
  %69 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %70 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* @WPS_NONCE_LEN, align 4
  %75 = call i64 @os_memcmp(i32* %71, i32* %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %92

77:                                               ; preds = %68, %64
  %78 = load i32, i32* @MSG_DEBUG, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 2
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* @WPS_NONCE_LEN, align 4
  %84 = call i32 @wpa_hexdump(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i32* %82, i32 %83)
  %85 = load i32, i32* @MSG_DEBUG, align 4
  %86 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %87 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @WPS_NONCE_LEN, align 4
  %90 = call i32 @wpa_hexdump(i32 %85, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0), i32* %88, i32 %89)
  %91 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %91, i32* %3, align 4
  br label %158

92:                                               ; preds = %68
  %93 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.9, i64 0, i64 0))
  %99 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %99, i32* %3, align 4
  br label %158

100:                                              ; preds = %92
  %101 = getelementptr inbounds %struct.wps_parse_attr, %struct.wps_parse_attr* %6, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = call i64 @WPA_GET_BE16(i32* %102)
  store i64 %103, i64* %7, align 8
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = load i64, i64* %7, align 8
  %106 = call i32 (i32, i8*, ...) @wpa_printf(i32 %104, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.10, i64 0, i64 0), i64 %105)
  %107 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %108 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  switch i32 %109, label %152 [
    i32 130, label %110
    i32 129, label %124
    i32 128, label %138
  ]

110:                                              ; preds = %100
  %111 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %112 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @WPS_M3, align 4
  %115 = load i64, i64* %7, align 8
  %116 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %117 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %120 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @wps_fail_event(i32 %113, i32 %114, i64 %115, i32 %118, i32 %122)
  br label %153

124:                                              ; preds = %100
  %125 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %126 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @WPS_M5, align 4
  %129 = load i64, i64* %7, align 8
  %130 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %131 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %134 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @wps_fail_event(i32 %127, i32 %128, i64 %129, i32 %132, i32 %136)
  br label %153

138:                                              ; preds = %100
  %139 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %140 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @WPS_M7, align 4
  %143 = load i64, i64* %7, align 8
  %144 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %145 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %148 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @wps_fail_event(i32 %141, i32 %142, i64 %143, i32 %146, i32 %150)
  br label %153

152:                                              ; preds = %100
  br label %153

153:                                              ; preds = %152, %138, %124, %110
  %154 = load i32, i32* @SEND_WSC_NACK, align 4
  %155 = load %struct.wps_data*, %struct.wps_data** %4, align 8
  %156 = getelementptr inbounds %struct.wps_data, %struct.wps_data* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load i32, i32* @WPS_FAILURE, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %153, %96, %77, %49, %29, %19, %13
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @wps_parse_msg(%struct.wpabuf*, %struct.wps_parse_attr*) #1

declare dso_local i64 @os_memcmp(i32*, i32*, i32) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wps_fail_event(i32, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
