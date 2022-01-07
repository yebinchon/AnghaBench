; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_phase2_eap.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_ttls.c_eap_ttls_process_phase2_eap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_ttls_data = type { i32 }
%struct.eap_method_ret = type { i32 }
%struct.ttls_parse_avp = type { i32, i32* }
%struct.wpabuf = type { i32 }
%struct.eap_hdr = type { i64, i32, i32 }

@MSG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"EAP-TTLS: No EAP Message in the packet - dropped\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"EAP-TTLS: Phase 2 EAP\00", align 1
@.str.2 = private unnamed_addr constant [80 x i8] c"EAP-TTLS: Too short Phase 2 EAP frame (len=%lu, expected %lu or more) - dropped\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [90 x i8] c"EAP-TTLS: Length mismatch in Phase 2 EAP frame (EAP hdr len=%lu, EAP data len in AVP=%lu)\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c"EAP-TTLS: received Phase 2: code=%d identifier=%d length=%lu\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"EAP-TTLS: Phase2 Request processing failed\00", align 1
@.str.6 = private unnamed_addr constant [51 x i8] c"EAP-TTLS: Unexpected code=%d in Phase 2 EAP header\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.ttls_parse_avp*, %struct.wpabuf**)* @eap_ttls_process_phase2_eap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_ttls_process_phase2_eap(%struct.eap_sm* %0, %struct.eap_ttls_data* %1, %struct.eap_method_ret* %2, %struct.ttls_parse_avp* %3, %struct.wpabuf** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_ttls_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.ttls_parse_avp*, align 8
  %11 = alloca %struct.wpabuf**, align 8
  %12 = alloca %struct.eap_hdr*, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_ttls_data* %1, %struct.eap_ttls_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.ttls_parse_avp* %3, %struct.ttls_parse_avp** %10, align 8
  store %struct.wpabuf** %4, %struct.wpabuf*** %11, align 8
  %14 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %15 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %5
  %19 = load i32, i32* @MSG_WARNING, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %97

21:                                               ; preds = %5
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %24 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %27 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @wpa_hexdump(i32 %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32* %25, i32 %28)
  %30 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %31 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to %struct.eap_hdr*
  store %struct.eap_hdr* %33, %struct.eap_hdr** %12, align 8
  %34 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %35 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 16
  br i1 %38, label %39, label %46

39:                                               ; preds = %21
  %40 = load i32, i32* @MSG_WARNING, align 4
  %41 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %42 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sext i32 %43 to i64
  %45 = call i32 (i32, i8*, ...) @wpa_printf(i32 %40, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.2, i64 0, i64 0), i64 %44, i64 16)
  store i32 -1, i32* %6, align 4
  br label %97

46:                                               ; preds = %21
  %47 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %48 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @be_to_host16(i32 %49)
  store i64 %50, i64* %13, align 8
  %51 = load i64, i64* %13, align 8
  %52 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %53 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = icmp ugt i64 %51, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %46
  %58 = load i32, i32* @MSG_INFO, align 4
  %59 = load i64, i64* %13, align 8
  %60 = load %struct.ttls_parse_avp*, %struct.ttls_parse_avp** %10, align 8
  %61 = getelementptr inbounds %struct.ttls_parse_avp, %struct.ttls_parse_avp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i64 %59, i64 %63)
  store i32 -1, i32* %6, align 4
  br label %97

65:                                               ; preds = %46
  %66 = load i32, i32* @MSG_DEBUG, align 4
  %67 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %68 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %71 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %13, align 8
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i64 %69, i32 %72, i64 %73)
  %75 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %76 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  switch i64 %77, label %90 [
    i64 128, label %78
  ]

78:                                               ; preds = %65
  %79 = load %struct.eap_sm*, %struct.eap_sm** %7, align 8
  %80 = load %struct.eap_ttls_data*, %struct.eap_ttls_data** %8, align 8
  %81 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %82 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %83 = load %struct.wpabuf**, %struct.wpabuf*** %11, align 8
  %84 = call i32 @eap_ttls_phase2_request(%struct.eap_sm* %79, %struct.eap_ttls_data* %80, %struct.eap_method_ret* %81, %struct.eap_hdr* %82, %struct.wpabuf** %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* @MSG_INFO, align 4
  %88 = call i32 (i32, i8*, ...) @wpa_printf(i32 %87, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %97

89:                                               ; preds = %78
  br label %96

90:                                               ; preds = %65
  %91 = load i32, i32* @MSG_INFO, align 4
  %92 = load %struct.eap_hdr*, %struct.eap_hdr** %12, align 8
  %93 = getelementptr inbounds %struct.eap_hdr, %struct.eap_hdr* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %91, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.6, i64 0, i64 0), i64 %94)
  store i32 -1, i32* %6, align 4
  br label %97

96:                                               ; preds = %89
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %96, %90, %86, %57, %39, %18
  %98 = load i32, i32* %6, align 4
  ret i32 %98
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i64 @be_to_host16(i32) #1

declare dso_local i32 @eap_ttls_phase2_request(%struct.eap_sm*, %struct.eap_ttls_data*, %struct.eap_method_ret*, %struct.eap_hdr*, %struct.wpabuf**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
