; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_pac_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_fast.c_eap_fast_parse_pac_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_fast_pac = type { i64, i64, i64, i32, i32*, i32*, i32* }
%struct.os_time = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-FAST: PAC-Info - Invalid CRED_LIFETIME length - ignored\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"EAP-FAST: PAC-Info - CRED_LIFETIME %d (%d days)\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"EAP-FAST: PAC-Info - A-ID\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"EAP-FAST: PAC-Info - I-ID\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"EAP-FAST: PAC-Info - A-ID-Info\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [51 x i8] c"EAP-FAST: Invalid PAC-Type length %lu (expected 2)\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"EAP-FAST: PAC-Info - PAC-Type\00", align 1
@PAC_TYPE_TUNNEL_PAC = common dso_local global i32 0, align 4
@PAC_TYPE_USER_AUTHORIZATION = common dso_local global i32 0, align 4
@PAC_TYPE_MACHINE_AUTHENTICATION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [34 x i8] c"EAP-FAST: Unsupported PAC Type %d\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"EAP-FAST: PAC-Info - PAC-Type %d\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"EAP-FAST: Ignored unknown PAC-Info type %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.eap_fast_pac*, i32, i32*, i64)* @eap_fast_parse_pac_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @eap_fast_parse_pac_info(%struct.eap_fast_pac* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.eap_fast_pac*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.os_time, align 4
  store %struct.eap_fast_pac* %0, %struct.eap_fast_pac** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = and i32 %13, 32767
  switch i32 %14, label %105 [
    i32 130, label %15
    i32 132, label %35
    i32 129, label %46
    i32 131, label %57
    i32 128, label %68
  ]

15:                                               ; preds = %4
  %16 = load i64, i64* %9, align 8
  %17 = icmp ne i64 %16, 4
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = load i32*, i32** %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @wpa_hexdump(i32 %19, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32* %20, i64 %21)
  store i32 0, i32* %5, align 4
  br label %110

23:                                               ; preds = %15
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @WPA_GET_BE32(i32* %24)
  store i32 %25, i32* %11, align 4
  %26 = call i32 @os_get_time(%struct.os_time* %12)
  %27 = load i32, i32* @MSG_DEBUG, align 4
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = getelementptr inbounds %struct.os_time, %struct.os_time* %12, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sub nsw i32 %29, %31
  %33 = sdiv i32 %32, 86400
  %34 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %27, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %28, i32 %33)
  br label %109

35:                                               ; preds = %4
  %36 = load i32, i32* @MSG_DEBUG, align 4
  %37 = load i32*, i32** %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @wpa_hexdump_ascii(i32 %36, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32* %37, i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %42 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %41, i32 0, i32 6
  store i32* %40, i32** %42, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %45 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %109

46:                                               ; preds = %4
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @wpa_hexdump_ascii(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32* %48, i64 %49)
  %51 = load i32*, i32** %8, align 8
  %52 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %53 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %52, i32 0, i32 5
  store i32* %51, i32** %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %56 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  br label %109

57:                                               ; preds = %4
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @wpa_hexdump_ascii(i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32* %59, i64 %60)
  %62 = load i32*, i32** %8, align 8
  %63 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %64 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %63, i32 0, i32 4
  store i32* %62, i32** %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %67 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %66, i32 0, i32 2
  store i64 %65, i64* %67, align 8
  br label %109

68:                                               ; preds = %4
  %69 = load i64, i64* %9, align 8
  %70 = icmp ne i64 %69, 2
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load i32, i32* @MSG_INFO, align 4
  %73 = load i64, i64* %9, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @wpa_hexdump_ascii(i32 %76, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %77, i64 %78)
  store i32 -1, i32* %5, align 4
  br label %110

80:                                               ; preds = %68
  %81 = load i32*, i32** %8, align 8
  %82 = call i32 @WPA_GET_BE16(i32* %81)
  store i32 %82, i32* %10, align 4
  %83 = load i32, i32* %10, align 4
  %84 = load i32, i32* @PAC_TYPE_TUNNEL_PAC, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @PAC_TYPE_USER_AUTHORIZATION, align 4
  %89 = icmp ne i32 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %86
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* @PAC_TYPE_MACHINE_AUTHENTICATION, align 4
  %93 = icmp ne i32 %91, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* @MSG_INFO, align 4
  %96 = load i32, i32* %10, align 4
  %97 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %95, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %96)
  store i32 -1, i32* %5, align 4
  br label %110

98:                                               ; preds = %90, %86, %80
  %99 = load i32, i32* @MSG_DEBUG, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %99, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0), i32 %100)
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.eap_fast_pac*, %struct.eap_fast_pac** %6, align 8
  %104 = getelementptr inbounds %struct.eap_fast_pac, %struct.eap_fast_pac* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  br label %109

105:                                              ; preds = %4
  %106 = load i32, i32* @MSG_DEBUG, align 4
  %107 = load i32, i32* %7, align 4
  %108 = call i32 (i32, i8*, i32, ...) @wpa_printf(i32 %106, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %107)
  br label %109

109:                                              ; preds = %105, %98, %57, %46, %35, %23
  store i32 0, i32* %5, align 4
  br label %110

110:                                              ; preds = %109, %94, %71, %18
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i32 @WPA_GET_BE32(i32*) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, ...) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32*, i64) #1

declare dso_local i32 @WPA_GET_BE16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
