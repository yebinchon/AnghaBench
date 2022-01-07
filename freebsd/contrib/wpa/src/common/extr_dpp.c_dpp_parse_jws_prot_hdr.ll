; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_jws_prot_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_jws_prot_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_curve_params = type { i8* }
%struct.json_token = type { i64, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"DPP: JSON parsing failed for JWS Protected Header\00", align 1
@JSON_OBJECT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"DPP: JWS Protected Header root is not an object\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"typ\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [31 x i8] c"DPP: No typ string value found\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"DPP: JWS Protected Header typ=%s\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"dppCon\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"DPP: Unsupported JWS Protected Header typ=%s\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"alg\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"DPP: No alg string value found\00", align 1
@.str.9 = private unnamed_addr constant [33 x i8] c"DPP: JWS Protected Header alg=%s\00", align 1
@.str.10 = private unnamed_addr constant [78 x i8] c"DPP: Unexpected JWS Protected Header alg=%s (expected %s based on C-sign-key)\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"ES256\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"BS256\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"ES384\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"BS384\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"ES512\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"BS512\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"DPP: Unsupported JWS Protected Header alg=%s\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"kid\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"DPP: No kid string value found\00", align 1
@.str.20 = private unnamed_addr constant [40 x i8] c"DPP: JWS Protected Header kid (decoded)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_curve_params*, i32*, i32, i32**)* @dpp_parse_jws_prot_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_parse_jws_prot_hdr(%struct.dpp_curve_params* %0, i32* %1, i32 %2, i32** %3) #0 {
  %5 = alloca %struct.dpp_curve_params*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca %struct.json_token*, align 8
  %10 = alloca %struct.json_token*, align 8
  %11 = alloca %struct.wpabuf*, align 8
  store %struct.dpp_curve_params* %0, %struct.dpp_curve_params** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32** %3, i32*** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %11, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = bitcast i32* %12 to i8*
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.json_token* @json_parse(i8* %13, i32 %14)
  store %struct.json_token* %15, %struct.json_token** %9, align 8
  %16 = load %struct.json_token*, %struct.json_token** %9, align 8
  %17 = icmp ne %struct.json_token* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @MSG_DEBUG, align 4
  %20 = call i32 (i32, i8*, ...) @wpa_printf(i32 %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %169

21:                                               ; preds = %4
  %22 = load %struct.json_token*, %struct.json_token** %9, align 8
  %23 = getelementptr inbounds %struct.json_token, %struct.json_token* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @JSON_OBJECT, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 (i32, i8*, ...) @wpa_printf(i32 %28, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %169

30:                                               ; preds = %21
  %31 = load %struct.json_token*, %struct.json_token** %9, align 8
  %32 = call %struct.json_token* @json_get_member(%struct.json_token* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store %struct.json_token* %32, %struct.json_token** %10, align 8
  %33 = load %struct.json_token*, %struct.json_token** %10, align 8
  %34 = icmp ne %struct.json_token* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.json_token*, %struct.json_token** %10, align 8
  %37 = getelementptr inbounds %struct.json_token, %struct.json_token* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @JSON_STRING, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %30
  %42 = load i32, i32* @MSG_DEBUG, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %169

44:                                               ; preds = %35
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = load %struct.json_token*, %struct.json_token** %10, align 8
  %47 = getelementptr inbounds %struct.json_token, %struct.json_token* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  %50 = load %struct.json_token*, %struct.json_token** %10, align 8
  %51 = getelementptr inbounds %struct.json_token, %struct.json_token* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @os_strcmp(i32 %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0))
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %44
  %56 = load i32, i32* @MSG_DEBUG, align 4
  %57 = load %struct.json_token*, %struct.json_token** %10, align 8
  %58 = getelementptr inbounds %struct.json_token, %struct.json_token* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = call i32 (i32, i8*, ...) @wpa_printf(i32 %56, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0), i32 %59)
  br label %169

61:                                               ; preds = %44
  %62 = load %struct.json_token*, %struct.json_token** %9, align 8
  %63 = call %struct.json_token* @json_get_member(%struct.json_token* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0))
  store %struct.json_token* %63, %struct.json_token** %10, align 8
  %64 = load %struct.json_token*, %struct.json_token** %10, align 8
  %65 = icmp ne %struct.json_token* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.json_token*, %struct.json_token** %10, align 8
  %68 = getelementptr inbounds %struct.json_token, %struct.json_token* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @JSON_STRING, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %66, %61
  %73 = load i32, i32* @MSG_DEBUG, align 4
  %74 = call i32 (i32, i8*, ...) @wpa_printf(i32 %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %169

75:                                               ; preds = %66
  %76 = load i32, i32* @MSG_DEBUG, align 4
  %77 = load %struct.json_token*, %struct.json_token** %10, align 8
  %78 = getelementptr inbounds %struct.json_token, %struct.json_token* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i32, i8*, ...) @wpa_printf(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load %struct.json_token*, %struct.json_token** %10, align 8
  %82 = getelementptr inbounds %struct.json_token, %struct.json_token* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %5, align 8
  %85 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %84, i32 0, i32 0
  %86 = load i8*, i8** %85, align 8
  %87 = call i64 @os_strcmp(i32 %83, i8* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %98

89:                                               ; preds = %75
  %90 = load i32, i32* @MSG_DEBUG, align 4
  %91 = load %struct.json_token*, %struct.json_token** %10, align 8
  %92 = getelementptr inbounds %struct.json_token, %struct.json_token* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %5, align 8
  %95 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %94, i32 0, i32 0
  %96 = load i8*, i8** %95, align 8
  %97 = call i32 (i32, i8*, ...) @wpa_printf(i32 %90, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.10, i64 0, i64 0), i32 %93, i8* %96)
  br label %169

98:                                               ; preds = %75
  %99 = load %struct.json_token*, %struct.json_token** %10, align 8
  %100 = getelementptr inbounds %struct.json_token, %struct.json_token* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i64 @os_strcmp(i32 %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0))
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.json_token*, %struct.json_token** %10, align 8
  %106 = getelementptr inbounds %struct.json_token, %struct.json_token* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @os_strcmp(i32 %107, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %113

110:                                              ; preds = %104, %98
  %111 = call i32* (...) @EVP_sha256()
  %112 = load i32**, i32*** %8, align 8
  store i32* %111, i32** %112, align 8
  br label %147

113:                                              ; preds = %104
  %114 = load %struct.json_token*, %struct.json_token** %10, align 8
  %115 = getelementptr inbounds %struct.json_token, %struct.json_token* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @os_strcmp(i32 %116, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0))
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.json_token*, %struct.json_token** %10, align 8
  %121 = getelementptr inbounds %struct.json_token, %struct.json_token* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @os_strcmp(i32 %122, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.14, i64 0, i64 0))
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %119, %113
  %126 = call i32* (...) @EVP_sha384()
  %127 = load i32**, i32*** %8, align 8
  store i32* %126, i32** %127, align 8
  br label %146

128:                                              ; preds = %119
  %129 = load %struct.json_token*, %struct.json_token** %10, align 8
  %130 = getelementptr inbounds %struct.json_token, %struct.json_token* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @os_strcmp(i32 %131, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0))
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %140, label %134

134:                                              ; preds = %128
  %135 = load %struct.json_token*, %struct.json_token** %10, align 8
  %136 = getelementptr inbounds %struct.json_token, %struct.json_token* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = call i64 @os_strcmp(i32 %137, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0))
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %134, %128
  %141 = call i32* (...) @EVP_sha512()
  %142 = load i32**, i32*** %8, align 8
  store i32* %141, i32** %142, align 8
  br label %145

143:                                              ; preds = %134
  %144 = load i32**, i32*** %8, align 8
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %125
  br label %147

147:                                              ; preds = %146, %110
  %148 = load i32**, i32*** %8, align 8
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %157, label %151

151:                                              ; preds = %147
  %152 = load i32, i32* @MSG_DEBUG, align 4
  %153 = load %struct.json_token*, %struct.json_token** %10, align 8
  %154 = getelementptr inbounds %struct.json_token, %struct.json_token* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %152, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0), i32 %155)
  br label %169

157:                                              ; preds = %147
  %158 = load %struct.json_token*, %struct.json_token** %9, align 8
  %159 = call %struct.wpabuf* @json_get_member_base64url(%struct.json_token* %158, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0))
  store %struct.wpabuf* %159, %struct.wpabuf** %11, align 8
  %160 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %161 = icmp ne %struct.wpabuf* %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = call i32 (i32, i8*, ...) @wpa_printf(i32 %163, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i64 0, i64 0))
  br label %169

165:                                              ; preds = %157
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %168 = call i32 @wpa_hexdump_buf(i32 %166, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.20, i64 0, i64 0), %struct.wpabuf* %167)
  br label %169

169:                                              ; preds = %165, %162, %151, %89, %72, %55, %41, %27, %18
  %170 = load %struct.json_token*, %struct.json_token** %9, align 8
  %171 = call i32 @json_free(%struct.json_token* %170)
  %172 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  ret %struct.wpabuf* %172
}

declare dso_local %struct.json_token* @json_parse(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32* @EVP_sha256(...) #1

declare dso_local i32* @EVP_sha384(...) #1

declare dso_local i32* @EVP_sha512(...) #1

declare dso_local %struct.wpabuf* @json_get_member_base64url(%struct.json_token*, i8*) #1

declare dso_local i32 @wpa_hexdump_buf(i32, i8*, %struct.wpabuf*) #1

declare dso_local i32 @json_free(%struct.json_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
