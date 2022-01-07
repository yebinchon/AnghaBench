; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_jwk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_jwk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.json_token = type { i64, i32 }
%struct.dpp_curve_params = type { i64, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"kty\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"DPP: No kty in JWK\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"DPP: Unexpected JWK kty '%s'\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"crv\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"DPP: No crv in JWK\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"DPP: Unsupported JWK crv '%s'\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"DPP: No x in JWK\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"DPP: JWK x\00", align 1
@.str.10 = private unnamed_addr constant [59 x i8] c"DPP: Unexpected JWK x length %u (expected %u for curve %s)\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"y\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"DPP: No y in JWK\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"DPP: JWK y\00", align 1
@.str.14 = private unnamed_addr constant [59 x i8] c"DPP: Unexpected JWK y length %u (expected %u for curve %s)\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"DPP: Could not prepare group for JWK\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.json_token*, %struct.dpp_curve_params**)* @dpp_parse_jwk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @dpp_parse_jwk(%struct.json_token* %0, %struct.dpp_curve_params** %1) #0 {
  %3 = alloca %struct.json_token*, align 8
  %4 = alloca %struct.dpp_curve_params**, align 8
  %5 = alloca %struct.json_token*, align 8
  %6 = alloca %struct.dpp_curve_params*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.json_token* %0, %struct.json_token** %3, align 8
  store %struct.dpp_curve_params** %1, %struct.dpp_curve_params*** %4, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %7, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %8, align 8
  store i32* null, i32** %10, align 8
  %11 = load %struct.json_token*, %struct.json_token** %3, align 8
  %12 = call %struct.json_token* @json_get_member(%struct.json_token* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store %struct.json_token* %12, %struct.json_token** %5, align 8
  %13 = load %struct.json_token*, %struct.json_token** %5, align 8
  %14 = icmp ne %struct.json_token* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load %struct.json_token*, %struct.json_token** %5, align 8
  %17 = getelementptr inbounds %struct.json_token, %struct.json_token* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @JSON_STRING, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %2
  %22 = load i32, i32* @MSG_DEBUG, align 4
  %23 = call i32 (i32, i8*, ...) @wpa_printf(i32 %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %149

24:                                               ; preds = %15
  %25 = load %struct.json_token*, %struct.json_token** %5, align 8
  %26 = getelementptr inbounds %struct.json_token, %struct.json_token* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i64 @os_strcmp(i32 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %24
  %31 = load i32, i32* @MSG_DEBUG, align 4
  %32 = load %struct.json_token*, %struct.json_token** %5, align 8
  %33 = getelementptr inbounds %struct.json_token, %struct.json_token* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @wpa_printf(i32 %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  br label %149

36:                                               ; preds = %24
  %37 = load %struct.json_token*, %struct.json_token** %3, align 8
  %38 = call %struct.json_token* @json_get_member(%struct.json_token* %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  store %struct.json_token* %38, %struct.json_token** %5, align 8
  %39 = load %struct.json_token*, %struct.json_token** %5, align 8
  %40 = icmp ne %struct.json_token* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %36
  %42 = load %struct.json_token*, %struct.json_token** %5, align 8
  %43 = getelementptr inbounds %struct.json_token, %struct.json_token* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @JSON_STRING, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %36
  %48 = load i32, i32* @MSG_DEBUG, align 4
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %149

50:                                               ; preds = %41
  %51 = load %struct.json_token*, %struct.json_token** %5, align 8
  %52 = getelementptr inbounds %struct.json_token, %struct.json_token* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call %struct.dpp_curve_params* @dpp_get_curve_jwk_crv(i32 %53)
  store %struct.dpp_curve_params* %54, %struct.dpp_curve_params** %6, align 8
  %55 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %56 = icmp ne %struct.dpp_curve_params* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %50
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = load %struct.json_token*, %struct.json_token** %5, align 8
  %60 = getelementptr inbounds %struct.json_token, %struct.json_token* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32 %61)
  br label %149

63:                                               ; preds = %50
  %64 = load %struct.json_token*, %struct.json_token** %3, align 8
  %65 = call %struct.wpabuf* @json_get_member_base64url(%struct.json_token* %64, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  store %struct.wpabuf* %65, %struct.wpabuf** %7, align 8
  %66 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %67 = icmp ne %struct.wpabuf* %66, null
  br i1 %67, label %71, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = call i32 (i32, i8*, ...) @wpa_printf(i32 %69, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  br label %149

71:                                               ; preds = %63
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %74 = call i32 @wpa_hexdump_buf(i32 %72, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), %struct.wpabuf* %73)
  %75 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %76 = call i64 @wpabuf_len(%struct.wpabuf* %75)
  %77 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %78 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %76, %79
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  %82 = load i32, i32* @MSG_DEBUG, align 4
  %83 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %84 = call i64 @wpabuf_len(%struct.wpabuf* %83)
  %85 = trunc i64 %84 to i32
  %86 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %87 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %91 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i32 (i32, i8*, ...) @wpa_printf(i32 %82, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0), i32 %85, i32 %89, i32 %92)
  br label %149

94:                                               ; preds = %71
  %95 = load %struct.json_token*, %struct.json_token** %3, align 8
  %96 = call %struct.wpabuf* @json_get_member_base64url(%struct.json_token* %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  store %struct.wpabuf* %96, %struct.wpabuf** %8, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %98 = icmp ne %struct.wpabuf* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %94
  %100 = load i32, i32* @MSG_DEBUG, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.12, i64 0, i64 0))
  br label %149

102:                                              ; preds = %94
  %103 = load i32, i32* @MSG_DEBUG, align 4
  %104 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %105 = call i32 @wpa_hexdump_buf(i32 %103, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0), %struct.wpabuf* %104)
  %106 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %107 = call i64 @wpabuf_len(%struct.wpabuf* %106)
  %108 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %109 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %107, %110
  br i1 %111, label %112, label %125

112:                                              ; preds = %102
  %113 = load i32, i32* @MSG_DEBUG, align 4
  %114 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %115 = call i64 @wpabuf_len(%struct.wpabuf* %114)
  %116 = trunc i64 %115 to i32
  %117 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %118 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = trunc i64 %119 to i32
  %121 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %122 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = call i32 (i32, i8*, ...) @wpa_printf(i32 %113, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.14, i64 0, i64 0), i32 %116, i32 %120, i32 %123)
  br label %149

125:                                              ; preds = %102
  %126 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %127 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @OBJ_txt2nid(i32 %128)
  %130 = call i32* @EC_GROUP_new_by_curve_name(i32 %129)
  store i32* %130, i32** %9, align 8
  %131 = load i32*, i32** %9, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %136, label %133

133:                                              ; preds = %125
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.15, i64 0, i64 0))
  br label %149

136:                                              ; preds = %125
  %137 = load i32*, i32** %9, align 8
  %138 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %139 = call i32 @wpabuf_head(%struct.wpabuf* %138)
  %140 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %141 = call i32 @wpabuf_head(%struct.wpabuf* %140)
  %142 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %143 = call i64 @wpabuf_len(%struct.wpabuf* %142)
  %144 = call i32* @dpp_set_pubkey_point_group(i32* %137, i32 %139, i32 %141, i64 %143)
  store i32* %144, i32** %10, align 8
  %145 = load i32*, i32** %9, align 8
  %146 = call i32 @EC_GROUP_free(i32* %145)
  %147 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %6, align 8
  %148 = load %struct.dpp_curve_params**, %struct.dpp_curve_params*** %4, align 8
  store %struct.dpp_curve_params* %147, %struct.dpp_curve_params** %148, align 8
  br label %149

149:                                              ; preds = %136, %133, %112, %99, %81, %68, %57, %47, %30, %21
  %150 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %151 = call i32 @wpabuf_free(%struct.wpabuf* %150)
  %152 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %153 = call i32 @wpabuf_free(%struct.wpabuf* %152)
  %154 = load i32*, i32** %10, align 8
  ret i32* %154
}

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local %struct.dpp_curve_params* @dpp_get_curve_jwk_crv(i32) #1

declare dso_local %struct.wpabuf* @json_get_member_base64url(%struct.json_token*, i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32* @EC_GROUP_new_by_curve_name(i32) #1

declare dso_local i32 @OBJ_txt2nid(i32) #1

declare dso_local i32* @dpp_set_pubkey_point_group(i32*, i32, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
