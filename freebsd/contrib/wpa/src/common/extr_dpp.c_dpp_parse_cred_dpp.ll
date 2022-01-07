; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_cred_dpp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_cred_dpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32 }
%struct.json_token = type { i64, i8* }
%struct.dpp_signed_connector_info = type { i32, i32 }
%struct.dpp_curve_params = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"DPP: Legacy credential included in Connector credential\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"DPP: Connector credential\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"csign\00", align 1
@JSON_OBJECT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [26 x i8] c"DPP: No csign JWK in JSON\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"DPP: Failed to parse csign JWK\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"DPP: Received C-sign-key\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"signedConnector\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [37 x i8] c"DPP: No signedConnector string found\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"DPP: signedConnector\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"DPP: Unexpected character in signedConnector\00", align 1
@DPP_STATUS_OK = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [31 x i8] c"DPP: Failed to parse connector\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, %struct.json_token*)* @dpp_parse_cred_dpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_parse_cred_dpp(%struct.dpp_authentication* %0, %struct.json_token* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca %struct.dpp_signed_connector_info, align 4
  %7 = alloca %struct.json_token*, align 8
  %8 = alloca %struct.json_token*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.dpp_curve_params*, align 8
  %12 = alloca i8*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store %struct.json_token* %1, %struct.json_token** %5, align 8
  store i32 -1, i32* %9, align 4
  store i32* null, i32** %10, align 8
  store %struct.dpp_curve_params* null, %struct.dpp_curve_params** %11, align 8
  %13 = call i32 @os_memset(%struct.dpp_signed_connector_info* %6, i32 0, i32 8)
  %14 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %15 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @dpp_akm_psk(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %21 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @dpp_akm_sae(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19, %2
  %26 = load i32, i32* @MSG_DEBUG, align 4
  %27 = call i32 @wpa_printf(i32 %26, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %29 = load %struct.json_token*, %struct.json_token** %5, align 8
  %30 = call i64 @dpp_parse_cred_legacy(%struct.dpp_authentication* %28, %struct.json_token* %29)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  store i32 -1, i32* %3, align 4
  br label %136

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %19
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.json_token*, %struct.json_token** %5, align 8
  %38 = call %struct.json_token* @json_get_member(%struct.json_token* %37, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store %struct.json_token* %38, %struct.json_token** %8, align 8
  %39 = load %struct.json_token*, %struct.json_token** %8, align 8
  %40 = icmp ne %struct.json_token* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.json_token*, %struct.json_token** %8, align 8
  %43 = getelementptr inbounds %struct.json_token, %struct.json_token* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @JSON_OBJECT, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %34
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 @wpa_printf(i32 %48, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  br label %129

50:                                               ; preds = %41
  %51 = load %struct.json_token*, %struct.json_token** %8, align 8
  %52 = call i32* @dpp_parse_jwk(%struct.json_token* %51, %struct.dpp_curve_params** %11)
  store i32* %52, i32** %10, align 8
  %53 = load i32*, i32** %10, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = call i32 @wpa_printf(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %129

58:                                               ; preds = %50
  %59 = load i32*, i32** %10, align 8
  %60 = call i32 @dpp_debug_print_key(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32* %59)
  %61 = load %struct.json_token*, %struct.json_token** %5, align 8
  %62 = call %struct.json_token* @json_get_member(%struct.json_token* %61, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  store %struct.json_token* %62, %struct.json_token** %7, align 8
  %63 = load %struct.json_token*, %struct.json_token** %7, align 8
  %64 = icmp ne %struct.json_token* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.json_token*, %struct.json_token** %7, align 8
  %67 = getelementptr inbounds %struct.json_token, %struct.json_token* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @JSON_STRING, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %58
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 @wpa_printf(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %129

74:                                               ; preds = %65
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load %struct.json_token*, %struct.json_token** %7, align 8
  %77 = getelementptr inbounds %struct.json_token, %struct.json_token* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = load %struct.json_token*, %struct.json_token** %7, align 8
  %80 = getelementptr inbounds %struct.json_token, %struct.json_token* %79, i32 0, i32 1
  %81 = load i8*, i8** %80, align 8
  %82 = call i32 @os_strlen(i8* %81)
  %83 = call i32 @wpa_hexdump_ascii(i32 %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8* %78, i32 %82)
  %84 = load %struct.json_token*, %struct.json_token** %7, align 8
  %85 = getelementptr inbounds %struct.json_token, %struct.json_token* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  store i8* %86, i8** %12, align 8
  %87 = load i8*, i8** %12, align 8
  %88 = call i64 @os_strchr(i8* %87, i8 signext 34)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %74
  %91 = load i8*, i8** %12, align 8
  %92 = call i64 @os_strchr(i8* %91, i8 signext 10)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90, %74
  %95 = load i32, i32* @MSG_DEBUG, align 4
  %96 = call i32 @wpa_printf(i32 %95, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.9, i64 0, i64 0))
  br label %129

97:                                               ; preds = %90
  %98 = load i32*, i32** %10, align 8
  %99 = load i8*, i8** %12, align 8
  %100 = call i64 @dpp_process_signed_connector(%struct.dpp_signed_connector_info* %6, i32* %98, i8* %99)
  %101 = load i64, i64* @DPP_STATUS_OK, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %129

104:                                              ; preds = %97
  %105 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %106 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %6, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %6, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i64 @dpp_parse_connector(%struct.dpp_authentication* %105, i32 %107, i32 %109)
  %111 = icmp slt i64 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %104
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = call i32 @wpa_printf(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0))
  br label %129

115:                                              ; preds = %104
  %116 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %117 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @os_free(i32 %118)
  %120 = load i8*, i8** %12, align 8
  %121 = call i32 @os_strdup(i8* %120)
  %122 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %123 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %125 = load i32*, i32** %10, align 8
  %126 = call i32 @dpp_copy_csign(%struct.dpp_authentication* %124, i32* %125)
  %127 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %128 = call i32 @dpp_copy_netaccesskey(%struct.dpp_authentication* %127)
  store i32 0, i32* %9, align 4
  br label %129

129:                                              ; preds = %115, %112, %103, %94, %71, %55, %47
  %130 = load i32*, i32** %10, align 8
  %131 = call i32 @EVP_PKEY_free(i32* %130)
  %132 = getelementptr inbounds %struct.dpp_signed_connector_info, %struct.dpp_signed_connector_info* %6, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @os_free(i32 %133)
  %135 = load i32, i32* %9, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %129, %32
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local i32 @os_memset(%struct.dpp_signed_connector_info*, i32, i32) #1

declare dso_local i64 @dpp_akm_psk(i32) #1

declare dso_local i64 @dpp_akm_sae(i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @dpp_parse_cred_legacy(%struct.dpp_authentication*, %struct.json_token*) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i32* @dpp_parse_jwk(%struct.json_token*, %struct.dpp_curve_params**) #1

declare dso_local i32 @dpp_debug_print_key(i8*, i32*) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i8*, i32) #1

declare dso_local i32 @os_strlen(i8*) #1

declare dso_local i64 @os_strchr(i8*, i8 signext) #1

declare dso_local i64 @dpp_process_signed_connector(%struct.dpp_signed_connector_info*, i32*, i8*) #1

declare dso_local i64 @dpp_parse_connector(%struct.dpp_authentication*, i32, i32) #1

declare dso_local i32 @os_free(i32) #1

declare dso_local i32 @os_strdup(i8*) #1

declare dso_local i32 @dpp_copy_csign(%struct.dpp_authentication*, i32*) #1

declare dso_local i32 @dpp_copy_netaccesskey(%struct.dpp_authentication*) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
