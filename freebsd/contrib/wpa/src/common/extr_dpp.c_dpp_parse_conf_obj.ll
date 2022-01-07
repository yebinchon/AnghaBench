; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_conf_obj.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_conf_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i64, i32 }
%struct.json_token = type { i64, i32 }

@JSON_OBJECT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [27 x i8] c"JSON root is not an object\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"wi-fi_tech\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"No wi-fi_tech string value found\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"infra\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [40 x i8] c"DPP: Unsupported wi-fi_tech value: '%s'\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Unsupported wi-fi_tech value\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"discovery\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"No discovery object in JSON\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"ssid\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c"No discovery::ssid string value found\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"DPP: discovery::ssid\00", align 1
@SSID_MAX_LEN = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [38 x i8] c"Too long discovery::ssid string value\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"cred\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"No cred object in JSON\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"akm\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"No cred::akm string value found\00", align 1
@.str.16 = private unnamed_addr constant [25 x i8] c"DPP: Unsupported akm: %s\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"Unsupported akm\00", align 1
@.str.18 = private unnamed_addr constant [41 x i8] c"DPP: JSON parsing completed successfully\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i32*, i32)* @dpp_parse_conf_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_parse_conf_obj(%struct.dpp_authentication* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpp_authentication*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.json_token*, align 8
  %10 = alloca %struct.json_token*, align 8
  %11 = alloca %struct.json_token*, align 8
  %12 = alloca %struct.json_token*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.json_token* @json_parse(i8* %14, i32 %15)
  store %struct.json_token* %16, %struct.json_token** %9, align 8
  %17 = load %struct.json_token*, %struct.json_token** %9, align 8
  %18 = icmp ne %struct.json_token* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %196

20:                                               ; preds = %3
  %21 = load %struct.json_token*, %struct.json_token** %9, align 8
  %22 = getelementptr inbounds %struct.json_token, %struct.json_token* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @JSON_OBJECT, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %28 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %192

29:                                               ; preds = %20
  %30 = load %struct.json_token*, %struct.json_token** %9, align 8
  %31 = call %struct.json_token* @json_get_member(%struct.json_token* %30, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.json_token* %31, %struct.json_token** %10, align 8
  %32 = load %struct.json_token*, %struct.json_token** %10, align 8
  %33 = icmp ne %struct.json_token* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.json_token*, %struct.json_token** %10, align 8
  %36 = getelementptr inbounds %struct.json_token, %struct.json_token* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @JSON_STRING, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %34, %29
  %41 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %42 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %192

43:                                               ; preds = %34
  %44 = load %struct.json_token*, %struct.json_token** %10, align 8
  %45 = getelementptr inbounds %struct.json_token, %struct.json_token* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @os_strcmp(i32 %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load i32, i32* @MSG_DEBUG, align 4
  %51 = load %struct.json_token*, %struct.json_token** %10, align 8
  %52 = getelementptr inbounds %struct.json_token, %struct.json_token* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (i32, i8*, ...) @wpa_printf(i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %53)
  %55 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %56 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %192

57:                                               ; preds = %43
  %58 = load %struct.json_token*, %struct.json_token** %9, align 8
  %59 = call %struct.json_token* @json_get_member(%struct.json_token* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  store %struct.json_token* %59, %struct.json_token** %11, align 8
  %60 = load %struct.json_token*, %struct.json_token** %11, align 8
  %61 = icmp ne %struct.json_token* %60, null
  br i1 %61, label %62, label %68

62:                                               ; preds = %57
  %63 = load %struct.json_token*, %struct.json_token** %11, align 8
  %64 = getelementptr inbounds %struct.json_token, %struct.json_token* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @JSON_OBJECT, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %62, %57
  %69 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %70 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %192

71:                                               ; preds = %62
  %72 = load %struct.json_token*, %struct.json_token** %11, align 8
  %73 = call %struct.json_token* @json_get_member(%struct.json_token* %72, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  store %struct.json_token* %73, %struct.json_token** %10, align 8
  %74 = load %struct.json_token*, %struct.json_token** %10, align 8
  %75 = icmp ne %struct.json_token* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.json_token*, %struct.json_token** %10, align 8
  %78 = getelementptr inbounds %struct.json_token, %struct.json_token* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @JSON_STRING, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %76, %71
  %83 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %84 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %83, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  br label %192

85:                                               ; preds = %76
  %86 = load i32, i32* @MSG_DEBUG, align 4
  %87 = load %struct.json_token*, %struct.json_token** %10, align 8
  %88 = getelementptr inbounds %struct.json_token, %struct.json_token* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.json_token*, %struct.json_token** %10, align 8
  %91 = getelementptr inbounds %struct.json_token, %struct.json_token* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = call i64 @os_strlen(i32 %92)
  %94 = call i32 @wpa_hexdump_ascii(i32 %86, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 %89, i64 %93)
  %95 = load %struct.json_token*, %struct.json_token** %10, align 8
  %96 = getelementptr inbounds %struct.json_token, %struct.json_token* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = call i64 @os_strlen(i32 %97)
  %99 = load i64, i64* @SSID_MAX_LEN, align 8
  %100 = icmp sgt i64 %98, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %85
  %102 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %103 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %102, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0))
  br label %192

104:                                              ; preds = %85
  %105 = load %struct.json_token*, %struct.json_token** %10, align 8
  %106 = getelementptr inbounds %struct.json_token, %struct.json_token* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 8
  %108 = call i64 @os_strlen(i32 %107)
  %109 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %110 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %109, i32 0, i32 1
  store i64 %108, i64* %110, align 8
  %111 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %112 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.json_token*, %struct.json_token** %10, align 8
  %115 = getelementptr inbounds %struct.json_token, %struct.json_token* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %118 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @os_memcpy(i32 %113, i32 %116, i64 %119)
  %121 = load %struct.json_token*, %struct.json_token** %9, align 8
  %122 = call %struct.json_token* @json_get_member(%struct.json_token* %121, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0))
  store %struct.json_token* %122, %struct.json_token** %12, align 8
  %123 = load %struct.json_token*, %struct.json_token** %12, align 8
  %124 = icmp ne %struct.json_token* %123, null
  br i1 %124, label %125, label %131

125:                                              ; preds = %104
  %126 = load %struct.json_token*, %struct.json_token** %12, align 8
  %127 = getelementptr inbounds %struct.json_token, %struct.json_token* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* @JSON_OBJECT, align 8
  %130 = icmp ne i64 %128, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %125, %104
  %132 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %133 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %132, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.13, i64 0, i64 0))
  br label %192

134:                                              ; preds = %125
  %135 = load %struct.json_token*, %struct.json_token** %12, align 8
  %136 = call %struct.json_token* @json_get_member(%struct.json_token* %135, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i64 0, i64 0))
  store %struct.json_token* %136, %struct.json_token** %10, align 8
  %137 = load %struct.json_token*, %struct.json_token** %10, align 8
  %138 = icmp ne %struct.json_token* %137, null
  br i1 %138, label %139, label %145

139:                                              ; preds = %134
  %140 = load %struct.json_token*, %struct.json_token** %10, align 8
  %141 = getelementptr inbounds %struct.json_token, %struct.json_token* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @JSON_STRING, align 8
  %144 = icmp ne i64 %142, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %139, %134
  %146 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %147 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %146, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.15, i64 0, i64 0))
  br label %192

148:                                              ; preds = %139
  %149 = load %struct.json_token*, %struct.json_token** %10, align 8
  %150 = getelementptr inbounds %struct.json_token, %struct.json_token* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dpp_akm_from_str(i32 %151)
  %153 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %154 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 8
  %155 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %156 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call i64 @dpp_akm_legacy(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %167

160:                                              ; preds = %148
  %161 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %162 = load %struct.json_token*, %struct.json_token** %12, align 8
  %163 = call i64 @dpp_parse_cred_legacy(%struct.dpp_authentication* %161, %struct.json_token* %162)
  %164 = icmp slt i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %192

166:                                              ; preds = %160
  br label %189

167:                                              ; preds = %148
  %168 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %169 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @dpp_akm_dpp(i32 %170)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %167
  %174 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %175 = load %struct.json_token*, %struct.json_token** %12, align 8
  %176 = call i64 @dpp_parse_cred_dpp(%struct.dpp_authentication* %174, %struct.json_token* %175)
  %177 = icmp slt i64 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %192

179:                                              ; preds = %173
  br label %188

180:                                              ; preds = %167
  %181 = load i32, i32* @MSG_DEBUG, align 4
  %182 = load %struct.json_token*, %struct.json_token** %10, align 8
  %183 = getelementptr inbounds %struct.json_token, %struct.json_token* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i64 0, i64 0), i32 %184)
  %186 = load %struct.dpp_authentication*, %struct.dpp_authentication** %5, align 8
  %187 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %186, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  br label %192

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188, %166
  %190 = load i32, i32* @MSG_DEBUG, align 4
  %191 = call i32 (i32, i8*, ...) @wpa_printf(i32 %190, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %192

192:                                              ; preds = %189, %180, %178, %165, %145, %131, %101, %82, %68, %49, %40, %26
  %193 = load %struct.json_token*, %struct.json_token** %9, align 8
  %194 = call i32 @json_free(%struct.json_token* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %19
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local %struct.json_token* @json_parse(i8*, i32) #1

declare dso_local i32 @dpp_auth_fail(%struct.dpp_authentication*, i8*) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i64 @os_strcmp(i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i32, i64) #1

declare dso_local i64 @os_strlen(i32) #1

declare dso_local i32 @os_memcpy(i32, i32, i64) #1

declare dso_local i32 @dpp_akm_from_str(i32) #1

declare dso_local i64 @dpp_akm_legacy(i32) #1

declare dso_local i64 @dpp_parse_cred_legacy(%struct.dpp_authentication*, %struct.json_token*) #1

declare dso_local i64 @dpp_akm_dpp(i32) #1

declare dso_local i64 @dpp_parse_cred_dpp(%struct.dpp_authentication*, %struct.json_token*) #1

declare dso_local i32 @json_free(%struct.json_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
