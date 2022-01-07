; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_parse_tlvs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_fast.c_eap_fast_parse_tlvs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.eap_fast_tlv_parse = type { i32 }

@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"EAP-FAST: TLV overflow\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"EAP-FAST: Received Phase 2: TLV type %d length %u%s\00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" (mandatory)\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"EAP-FAST: Nak unknown mandatory TLV type %d\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"EAP-FAST: Ignored unknown optional TLV type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpabuf*, %struct.eap_fast_tlv_parse*)* @eap_fast_parse_tlvs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_parse_tlvs(%struct.wpabuf* %0, %struct.eap_fast_tlv_parse* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.eap_fast_tlv_parse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.wpabuf* %0, %struct.wpabuf** %4, align 8
  store %struct.eap_fast_tlv_parse* %1, %struct.eap_fast_tlv_parse** %5, align 8
  %12 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %5, align 8
  %13 = call i32 @os_memset(%struct.eap_fast_tlv_parse* %12, i32 0, i32 4)
  %14 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %15 = call i32* @wpabuf_mhead(%struct.wpabuf* %14)
  store i32* %15, i32** %10, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  %18 = call i32 @wpabuf_len(%struct.wpabuf* %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32* %20, i32** %11, align 8
  br label %21

21:                                               ; preds = %88, %2
  %22 = load i32*, i32** %11, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = ptrtoint i32* %22 to i64
  %25 = ptrtoint i32* %23 to i64
  %26 = sub i64 %24, %25
  %27 = sdiv exact i64 %26, 4
  %28 = icmp sgt i64 %27, 4
  br i1 %28, label %29, label %92

29:                                               ; preds = %21
  %30 = load i32*, i32** %10, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 128
  store i32 %33, i32* %6, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @WPA_GET_BE16(i32* %34)
  %36 = and i32 %35, 16383
  store i32 %36, i32* %7, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @WPA_GET_BE16(i32* %39)
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %9, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 2
  store i32* %43, i32** %10, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i32*, i32** %11, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = ptrtoint i32* %45 to i64
  %48 = ptrtoint i32* %46 to i64
  %49 = sub i64 %47, %48
  %50 = sdiv exact i64 %49, 4
  %51 = icmp ugt i64 %44, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %29
  %53 = load i32, i32* @MSG_INFO, align 4
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %53, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %93

55:                                               ; preds = %29
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i64, i64* %9, align 8
  %59 = trunc i64 %58 to i32
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %64 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57, i32 %59, i8* %63)
  %65 = load %struct.eap_fast_tlv_parse*, %struct.eap_fast_tlv_parse** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32*, i32** %10, align 8
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @eap_fast_parse_tlv(%struct.eap_fast_tlv_parse* %65, i32 %66, i32* %67, i64 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp eq i32 %70, -2
  br i1 %71, label %72, label %73

72:                                               ; preds = %55
  br label %92

73:                                               ; preds = %55
  %74 = load i32, i32* %8, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76
  %80 = load i32, i32* @MSG_DEBUG, align 4
  %81 = load i32, i32* %7, align 4
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %80, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %81)
  br label %92

83:                                               ; preds = %76
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32 (i32, i8*, ...) @wpa_printf(i32 %84, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87, %73
  %89 = load i64, i64* %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 %89
  store i32* %91, i32** %10, align 8
  br label %21

92:                                               ; preds = %79, %72, %21
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %52
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @os_memset(%struct.eap_fast_tlv_parse*, i32, i32) #1

declare dso_local i32* @wpabuf_mhead(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @eap_fast_parse_tlv(%struct.eap_fast_tlv_parse*, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
