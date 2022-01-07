; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process_gpsk_4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_gpsk.c_eap_gpsk_process_gpsk_4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_gpsk_data = type { i64, i32, i32, i32, i32 }

@EAP_GPSK_MAX_MIC_LEN = common dso_local global i32 0, align 4
@GPSK_3 = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"EAP-GPSK: Received Response/GPSK-4\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-GPSK: Too short message for PD_Payload_1 length\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [45 x i8] c"EAP-GPSK: Too short message for PD_Payload_1\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: PD_Payload_1\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"EAP-GPSK: Message too short for MIC (left=%lu miclen=%lu)\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"EAP-GPSK: Failed to compute MIC\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"EAP-GPSK: Incorrect MIC in GPSK-4\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Received MIC\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"EAP-GPSK: Computed MIC\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"EAP-GPSK: Ignored %lu bytes of extra data in the end of GPSK-4\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_gpsk_data*, i32*, i64)* @eap_gpsk_process_gpsk_4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_gpsk_process_gpsk_4(%struct.eap_sm* %0, %struct.eap_gpsk_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_gpsk_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_gpsk_data* %1, %struct.eap_gpsk_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = load i32, i32* @EAP_GPSK_MAX_MIC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  %20 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %21 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @GPSK_3, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  br label %173

26:                                               ; preds = %4
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = call i32 (i32, i8*, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %9, align 8
  %30 = load i32*, i32** %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = ptrtoint i32* %33 to i64
  %36 = ptrtoint i32* %34 to i64
  %37 = sub i64 %35, %36
  %38 = sdiv exact i64 %37, 4
  %39 = icmp slt i64 %38, 2
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load i32, i32* @MSG_DEBUG, align 4
  %42 = call i32 (i32, i8*, ...) @wpa_printf(i32 %41, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %44 = load i32, i32* @FAILURE, align 4
  %45 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %43, i32 %44)
  store i32 1, i32* %15, align 4
  br label %173

46:                                               ; preds = %26
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @WPA_GET_BE16(i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  store i32* %50, i32** %9, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = ptrtoint i32* %51 to i64
  %54 = ptrtoint i32* %52 to i64
  %55 = sub i64 %53, %54
  %56 = sdiv exact i64 %55, 4
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %46
  %61 = load i32, i32* @MSG_DEBUG, align 4
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %63 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %64 = load i32, i32* @FAILURE, align 4
  %65 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %63, i32 %64)
  store i32 1, i32* %15, align 4
  br label %173

66:                                               ; preds = %46
  %67 = load i32, i32* @MSG_DEBUG, align 4
  %68 = load i32*, i32** %9, align 8
  %69 = load i32, i32* %11, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @wpa_hexdump(i32 %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32* %68, i64 %70)
  %72 = load i32, i32* %11, align 4
  %73 = load i32*, i32** %9, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %9, align 8
  %76 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %77 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %80 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @eap_gpsk_mic_len(i32 %78, i32 %81)
  store i64 %82, i64* %12, align 8
  %83 = load i32*, i32** %10, align 8
  %84 = load i32*, i32** %9, align 8
  %85 = ptrtoint i32* %83 to i64
  %86 = ptrtoint i32* %84 to i64
  %87 = sub i64 %85, %86
  %88 = sdiv exact i64 %87, 4
  %89 = load i64, i64* %12, align 8
  %90 = trunc i64 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %88, %91
  br i1 %92, label %93, label %106

93:                                               ; preds = %66
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = load i32*, i32** %10, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = ptrtoint i32* %95 to i64
  %98 = ptrtoint i32* %96 to i64
  %99 = sub i64 %97, %98
  %100 = sdiv exact i64 %99, 4
  %101 = load i64, i64* %12, align 8
  %102 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0), i64 %100, i64 %101)
  %103 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %104 = load i32, i32* @FAILURE, align 4
  %105 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %103, i32 %104)
  store i32 1, i32* %15, align 4
  br label %173

106:                                              ; preds = %66
  %107 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %108 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %111 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %114 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %117 = getelementptr inbounds %struct.eap_gpsk_data, %struct.eap_gpsk_data* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %7, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = load i32*, i32** %7, align 8
  %122 = ptrtoint i32* %120 to i64
  %123 = ptrtoint i32* %121 to i64
  %124 = sub i64 %122, %123
  %125 = sdiv exact i64 %124, 4
  %126 = trunc i64 %125 to i32
  %127 = call i64 @eap_gpsk_compute_mic(i32 %109, i32 %112, i32 %115, i32 %118, i32* %119, i32 %126, i32* %19)
  %128 = icmp slt i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %106
  %130 = load i32, i32* @MSG_DEBUG, align 4
  %131 = call i32 (i32, i8*, ...) @wpa_printf(i32 %130, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %132 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %133 = load i32, i32* @FAILURE, align 4
  %134 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %132, i32 %133)
  store i32 1, i32* %15, align 4
  br label %173

135:                                              ; preds = %106
  %136 = load i32*, i32** %9, align 8
  %137 = load i64, i64* %12, align 8
  %138 = call i64 @os_memcmp_const(i32* %19, i32* %136, i64 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %153

140:                                              ; preds = %135
  %141 = load i32, i32* @MSG_INFO, align 4
  %142 = call i32 (i32, i8*, ...) @wpa_printf(i32 %141, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %143 = load i32, i32* @MSG_DEBUG, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = load i64, i64* %12, align 8
  %146 = call i32 @wpa_hexdump(i32 %143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32* %144, i64 %145)
  %147 = load i32, i32* @MSG_DEBUG, align 4
  %148 = load i64, i64* %12, align 8
  %149 = call i32 @wpa_hexdump(i32 %147, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32* %19, i64 %148)
  %150 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %151 = load i32, i32* @FAILURE, align 4
  %152 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %150, i32 %151)
  store i32 1, i32* %15, align 4
  br label %173

153:                                              ; preds = %135
  %154 = load i64, i64* %12, align 8
  %155 = load i32*, i32** %9, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 %154
  store i32* %156, i32** %9, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = icmp ne i32* %157, %158
  br i1 %159, label %160, label %169

160:                                              ; preds = %153
  %161 = load i32, i32* @MSG_DEBUG, align 4
  %162 = load i32*, i32** %10, align 8
  %163 = load i32*, i32** %9, align 8
  %164 = ptrtoint i32* %162 to i64
  %165 = ptrtoint i32* %163 to i64
  %166 = sub i64 %164, %165
  %167 = sdiv exact i64 %166, 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %161, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i64 %167)
  br label %169

169:                                              ; preds = %160, %153
  %170 = load %struct.eap_gpsk_data*, %struct.eap_gpsk_data** %6, align 8
  %171 = load i32, i32* @SUCCESS, align 4
  %172 = call i32 @eap_gpsk_state(%struct.eap_gpsk_data* %170, i32 %171)
  store i32 0, i32* %15, align 4
  br label %173

173:                                              ; preds = %169, %140, %129, %93, %60, %40, %25
  %174 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %174)
  %175 = load i32, i32* %15, align 4
  switch i32 %175, label %177 [
    i32 0, label %176
    i32 1, label %176
  ]

176:                                              ; preds = %173, %173
  ret void

177:                                              ; preds = %173
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @eap_gpsk_state(%struct.eap_gpsk_data*, i32) #2

declare dso_local i32 @WPA_GET_BE16(i32*) #2

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #2

declare dso_local i64 @eap_gpsk_mic_len(i32, i32) #2

declare dso_local i64 @eap_gpsk_compute_mic(i32, i32, i32, i32, i32*, i32, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
