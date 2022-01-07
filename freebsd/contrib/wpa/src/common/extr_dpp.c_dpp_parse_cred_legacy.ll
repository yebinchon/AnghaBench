; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_cred_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_cred_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32*, i32, i32 }
%struct.json_token = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"DPP: Legacy akm=psk credential\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"pass\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"psk_hex\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"DPP: Legacy passphrase\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"DPP: Unexpected psk_hex with akm=sae\00", align 1
@PMK_LEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"DPP: Invalid psk_hex encoding\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"DPP: Legacy PSK\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"DPP: No pass or psk_hex strings found\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"DPP: No pass for sae found\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, %struct.json_token*)* @dpp_parse_cred_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_parse_cred_legacy(%struct.dpp_authentication* %0, %struct.json_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca %struct.json_token*, align 8
  %7 = alloca %struct.json_token*, align 8
  %8 = alloca i64, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store %struct.json_token* %1, %struct.json_token** %5, align 8
  %9 = load i32, i32* @MSG_DEBUG, align 4
  %10 = call i32 @wpa_printf(i32 %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.json_token*, %struct.json_token** %5, align 8
  %12 = call %struct.json_token* @json_get_member(%struct.json_token* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store %struct.json_token* %12, %struct.json_token** %6, align 8
  %13 = load %struct.json_token*, %struct.json_token** %5, align 8
  %14 = call %struct.json_token* @json_get_member(%struct.json_token* %13, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  store %struct.json_token* %14, %struct.json_token** %7, align 8
  %15 = load %struct.json_token*, %struct.json_token** %6, align 8
  %16 = icmp ne %struct.json_token* %15, null
  br i1 %16, label %17, label %49

17:                                               ; preds = %2
  %18 = load %struct.json_token*, %struct.json_token** %6, align 8
  %19 = getelementptr inbounds %struct.json_token, %struct.json_token* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @JSON_STRING, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.json_token*, %struct.json_token** %6, align 8
  %25 = getelementptr inbounds %struct.json_token, %struct.json_token* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @os_strlen(i32 %26)
  %28 = sext i32 %27 to i64
  store i64 %28, i64* %8, align 8
  %29 = load i32, i32* @MSG_DEBUG, align 4
  %30 = load %struct.json_token*, %struct.json_token** %6, align 8
  %31 = getelementptr inbounds %struct.json_token, %struct.json_token* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i64, i64* %8, align 8
  %34 = call i32 @wpa_hexdump_ascii_key(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %32, i64 %33)
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %35, 8
  br i1 %36, label %40, label %37

37:                                               ; preds = %23
  %38 = load i64, i64* %8, align 8
  %39 = icmp ugt i64 %38, 63
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %23
  store i32 -1, i32* %3, align 4
  br label %124

41:                                               ; preds = %37
  %42 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %43 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.json_token*, %struct.json_token** %6, align 8
  %46 = getelementptr inbounds %struct.json_token, %struct.json_token* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @os_strlcpy(i32* %44, i32 %47, i32 8)
  br label %107

49:                                               ; preds = %17, %2
  %50 = load %struct.json_token*, %struct.json_token** %7, align 8
  %51 = icmp ne %struct.json_token* %50, null
  br i1 %51, label %52, label %103

52:                                               ; preds = %49
  %53 = load %struct.json_token*, %struct.json_token** %7, align 8
  %54 = getelementptr inbounds %struct.json_token, %struct.json_token* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @JSON_STRING, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %103

58:                                               ; preds = %52
  %59 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %60 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @dpp_akm_sae(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %58
  %65 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %66 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dpp_akm_psk(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %64
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = call i32 @wpa_printf(i32 %71, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %124

73:                                               ; preds = %64, %58
  %74 = load %struct.json_token*, %struct.json_token** %7, align 8
  %75 = getelementptr inbounds %struct.json_token, %struct.json_token* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @os_strlen(i32 %76)
  %78 = load i32, i32* @PMK_LEN, align 4
  %79 = mul nsw i32 %78, 2
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %91, label %81

81:                                               ; preds = %73
  %82 = load %struct.json_token*, %struct.json_token** %7, align 8
  %83 = getelementptr inbounds %struct.json_token, %struct.json_token* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %86 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @PMK_LEN, align 4
  %89 = call i64 @hexstr2bin(i32 %84, i32 %87, i32 %88)
  %90 = icmp slt i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %81, %73
  %92 = load i32, i32* @MSG_DEBUG, align 4
  %93 = call i32 @wpa_printf(i32 %92, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %124

94:                                               ; preds = %81
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %97 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @PMK_LEN, align 4
  %100 = call i32 @wpa_hexdump_key(i32 %95, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %98, i32 %99)
  %101 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %102 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %101, i32 0, i32 0
  store i32 1, i32* %102, align 8
  br label %106

103:                                              ; preds = %52, %49
  %104 = load i32, i32* @MSG_DEBUG, align 4
  %105 = call i32 @wpa_printf(i32 %104, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %124

106:                                              ; preds = %94
  br label %107

107:                                              ; preds = %106, %41
  %108 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %109 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i64 @dpp_akm_sae(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %115 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %114, i32 0, i32 1
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @MSG_DEBUG, align 4
  %122 = call i32 @wpa_printf(i32 %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %124

123:                                              ; preds = %113, %107
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %120, %103, %91, %70, %40
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local i32 @wpa_hexdump_ascii_key(i32, i8*, i32, i64) #1

declare dso_local i32 @os_strlcpy(i32*, i32, i32) #1

declare dso_local i64 @dpp_akm_sae(i32) #1

declare dso_local i32 @dpp_akm_psk(i32) #1

declare dso_local i64 @hexstr2bin(i32, i32, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
