; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_connector.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_parse_connector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i64, i32, i32 }
%struct.json_token = type { i64, i32, %struct.json_token*, %struct.json_token* }
%struct.dpp_curve_params = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"DPP: JSON parsing of connector failed\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"groups\00", align 1
@JSON_ARRAY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"DPP: No groups array found\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"groupId\00", align 1
@JSON_STRING = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [28 x i8] c"DPP: Missing groupId string\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"netRole\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"DPP: Missing netRole string\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"DPP: connector group: groupId='%s' netRole='%s'\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"DPP: Connector includes no groups\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"expiry\00", align 1
@.str.10 = private unnamed_addr constant [56 x i8] c"DPP: No expiry string found - connector does not expire\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"DPP: expiry = %s\00", align 1
@.str.12 = private unnamed_addr constant [42 x i8] c"DPP: Connector (netAccessKey) has expired\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"netAccessKey\00", align 1
@JSON_OBJECT = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [34 x i8] c"DPP: No netAccessKey object found\00", align 1
@.str.15 = private unnamed_addr constant [27 x i8] c"DPP: Received netAccessKey\00", align 1
@.str.16 = private unnamed_addr constant [63 x i8] c"DPP: netAccessKey in connector does not match own protocol key\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpp_authentication*, i8*, i32)* @dpp_parse_connector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpp_parse_connector(%struct.dpp_authentication* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.json_token*, align 8
  %8 = alloca %struct.json_token*, align 8
  %9 = alloca %struct.json_token*, align 8
  %10 = alloca %struct.json_token*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.dpp_curve_params*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.json_token*, align 8
  %16 = alloca %struct.json_token*, align 8
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 -1, i32* %11, align 4
  store i32* null, i32** %12, align 8
  store i32 0, i32* %14, align 4
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.json_token* @json_parse(i8* %17, i32 %18)
  store %struct.json_token* %19, %struct.json_token** %7, align 8
  %20 = load %struct.json_token*, %struct.json_token** %7, align 8
  %21 = icmp ne %struct.json_token* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 (i32, i8*, ...) @wpa_printf(i32 %23, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %160

25:                                               ; preds = %3
  %26 = load %struct.json_token*, %struct.json_token** %7, align 8
  %27 = call %struct.json_token* @json_get_member(%struct.json_token* %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  store %struct.json_token* %27, %struct.json_token** %8, align 8
  %28 = load %struct.json_token*, %struct.json_token** %8, align 8
  %29 = icmp ne %struct.json_token* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %25
  %31 = load %struct.json_token*, %struct.json_token** %8, align 8
  %32 = getelementptr inbounds %struct.json_token, %struct.json_token* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @JSON_ARRAY, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30, %25
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = call i32 (i32, i8*, ...) @wpa_printf(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %90

39:                                               ; preds = %30
  %40 = load %struct.json_token*, %struct.json_token** %8, align 8
  %41 = getelementptr inbounds %struct.json_token, %struct.json_token* %40, i32 0, i32 3
  %42 = load %struct.json_token*, %struct.json_token** %41, align 8
  store %struct.json_token* %42, %struct.json_token** %10, align 8
  br label %43

43:                                               ; preds = %85, %39
  %44 = load %struct.json_token*, %struct.json_token** %10, align 8
  %45 = icmp ne %struct.json_token* %44, null
  br i1 %45, label %46, label %89

46:                                               ; preds = %43
  %47 = load %struct.json_token*, %struct.json_token** %10, align 8
  %48 = call %struct.json_token* @json_get_member(%struct.json_token* %47, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  store %struct.json_token* %48, %struct.json_token** %15, align 8
  %49 = load %struct.json_token*, %struct.json_token** %15, align 8
  %50 = icmp ne %struct.json_token* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.json_token*, %struct.json_token** %15, align 8
  %53 = getelementptr inbounds %struct.json_token, %struct.json_token* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @JSON_STRING, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %46
  %58 = load i32, i32* @MSG_DEBUG, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %160

60:                                               ; preds = %51
  %61 = load %struct.json_token*, %struct.json_token** %10, align 8
  %62 = call %struct.json_token* @json_get_member(%struct.json_token* %61, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  store %struct.json_token* %62, %struct.json_token** %16, align 8
  %63 = load %struct.json_token*, %struct.json_token** %16, align 8
  %64 = icmp ne %struct.json_token* %63, null
  br i1 %64, label %65, label %71

65:                                               ; preds = %60
  %66 = load %struct.json_token*, %struct.json_token** %16, align 8
  %67 = getelementptr inbounds %struct.json_token, %struct.json_token* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @JSON_STRING, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %65, %60
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = call i32 (i32, i8*, ...) @wpa_printf(i32 %72, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0))
  br label %160

74:                                               ; preds = %65
  %75 = load i32, i32* @MSG_DEBUG, align 4
  %76 = load %struct.json_token*, %struct.json_token** %15, align 8
  %77 = getelementptr inbounds %struct.json_token, %struct.json_token* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.json_token*, %struct.json_token** %16, align 8
  %80 = getelementptr inbounds %struct.json_token, %struct.json_token* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call i32 (i32, i8*, ...) @wpa_printf(i32 %75, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %78, i32 %81)
  %83 = load i32, i32* %14, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %14, align 4
  br label %85

85:                                               ; preds = %74
  %86 = load %struct.json_token*, %struct.json_token** %10, align 8
  %87 = getelementptr inbounds %struct.json_token, %struct.json_token* %86, i32 0, i32 2
  %88 = load %struct.json_token*, %struct.json_token** %87, align 8
  store %struct.json_token* %88, %struct.json_token** %10, align 8
  br label %43

89:                                               ; preds = %43
  br label %90

90:                                               ; preds = %89, %36
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* @MSG_DEBUG, align 4
  %95 = call i32 (i32, i8*, ...) @wpa_printf(i32 %94, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0))
  br label %160

96:                                               ; preds = %90
  %97 = load %struct.json_token*, %struct.json_token** %7, align 8
  %98 = call %struct.json_token* @json_get_member(%struct.json_token* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  store %struct.json_token* %98, %struct.json_token** %10, align 8
  %99 = load %struct.json_token*, %struct.json_token** %10, align 8
  %100 = icmp ne %struct.json_token* %99, null
  br i1 %100, label %101, label %107

101:                                              ; preds = %96
  %102 = load %struct.json_token*, %struct.json_token** %10, align 8
  %103 = getelementptr inbounds %struct.json_token, %struct.json_token* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @JSON_STRING, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %101, %96
  %108 = load i32, i32* @MSG_DEBUG, align 4
  %109 = call i32 (i32, i8*, ...) @wpa_printf(i32 %108, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.10, i64 0, i64 0))
  br label %127

110:                                              ; preds = %101
  %111 = load i32, i32* @MSG_DEBUG, align 4
  %112 = load %struct.json_token*, %struct.json_token** %10, align 8
  %113 = getelementptr inbounds %struct.json_token, %struct.json_token* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (i32, i8*, ...) @wpa_printf(i32 %111, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %114)
  %116 = load %struct.json_token*, %struct.json_token** %10, align 8
  %117 = getelementptr inbounds %struct.json_token, %struct.json_token* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %120 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %119, i32 0, i32 2
  %121 = call i64 @dpp_key_expired(i32 %118, i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %110
  %124 = load i32, i32* @MSG_DEBUG, align 4
  %125 = call i32 (i32, i8*, ...) @wpa_printf(i32 %124, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0))
  br label %160

126:                                              ; preds = %110
  br label %127

127:                                              ; preds = %126, %107
  %128 = load %struct.json_token*, %struct.json_token** %7, align 8
  %129 = call %struct.json_token* @json_get_member(%struct.json_token* %128, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i64 0, i64 0))
  store %struct.json_token* %129, %struct.json_token** %9, align 8
  %130 = load %struct.json_token*, %struct.json_token** %9, align 8
  %131 = icmp ne %struct.json_token* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %127
  %133 = load %struct.json_token*, %struct.json_token** %9, align 8
  %134 = getelementptr inbounds %struct.json_token, %struct.json_token* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @JSON_OBJECT, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132, %127
  %139 = load i32, i32* @MSG_DEBUG, align 4
  %140 = call i32 (i32, i8*, ...) @wpa_printf(i32 %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0))
  br label %160

141:                                              ; preds = %132
  %142 = load %struct.json_token*, %struct.json_token** %9, align 8
  %143 = call i32* @dpp_parse_jwk(%struct.json_token* %142, %struct.dpp_curve_params** %13)
  store i32* %143, i32** %12, align 8
  %144 = load i32*, i32** %12, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %147, label %146

146:                                              ; preds = %141
  br label %160

147:                                              ; preds = %141
  %148 = load i32*, i32** %12, align 8
  %149 = call i32 @dpp_debug_print_key(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.15, i64 0, i64 0), i32* %148)
  %150 = load i32*, i32** %12, align 8
  %151 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %152 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @EVP_PKEY_cmp(i32* %150, i32 %153)
  %155 = icmp ne i32 %154, 1
  br i1 %155, label %156, label %159

156:                                              ; preds = %147
  %157 = load i32, i32* @MSG_DEBUG, align 4
  %158 = call i32 (i32, i8*, ...) @wpa_printf(i32 %157, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.16, i64 0, i64 0))
  br label %160

159:                                              ; preds = %147
  store i32 0, i32* %11, align 4
  br label %160

160:                                              ; preds = %159, %156, %146, %138, %123, %93, %71, %57, %22
  %161 = load i32*, i32** %12, align 8
  %162 = call i32 @EVP_PKEY_free(i32* %161)
  %163 = load %struct.json_token*, %struct.json_token** %7, align 8
  %164 = call i32 @json_free(%struct.json_token* %163)
  %165 = load i32, i32* %11, align 4
  ret i32 %165
}

declare dso_local %struct.json_token* @json_parse(i8*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local %struct.json_token* @json_get_member(%struct.json_token*, i8*) #1

declare dso_local i64 @dpp_key_expired(i32, i32*) #1

declare dso_local i32* @dpp_parse_jwk(%struct.json_token*, %struct.dpp_curve_params**) #1

declare dso_local i32 @dpp_debug_print_key(i8*, i32*) #1

declare dso_local i32 @EVP_PKEY_cmp(i32*, i32) #1

declare dso_local i32 @EVP_PKEY_free(i32*) #1

declare dso_local i32 @json_free(%struct.json_token*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
