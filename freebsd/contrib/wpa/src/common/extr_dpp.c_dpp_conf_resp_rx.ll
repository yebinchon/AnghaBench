; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_conf_resp_rx.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_conf_resp_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.wpabuf = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Invalid attribute in config response\00", align 1
@DPP_ATTR_WRAPPED_DATA = common dso_local global i32 0, align 4
@AES_BLOCK_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Missing or invalid required Wrapped Data attribute\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"DPP: AES-SIV ciphertext\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"DDP: AES-SIV AD\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"AES-SIV decryption failed\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"DPP: AES-SIV cleartext\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Invalid attribute in unwrapped data\00", align 1
@DPP_ATTR_ENROLLEE_NONCE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [44 x i8] c"Missing or invalid Enrollee Nonce attribute\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"DPP: Enrollee Nonce\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Enrollee Nonce mismatch\00", align 1
@DPP_ATTR_STATUS = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [49 x i8] c"Missing or invalid required DPP Status attribute\00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"DPP: Status %u\00", align 1
@DPP_STATUS_OK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [36 x i8] c"Configurator rejected configuration\00", align 1
@DPP_ATTR_CONFIG_OBJ = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [48 x i8] c"Missing required Configuration Object attribute\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"DPP: configurationObject JSON\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpp_conf_resp_rx(%struct.dpp_authentication* %0, %struct.wpabuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dpp_authentication*, align 8
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca [1 x i64*], align 8
  %15 = alloca [1 x i64], align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.dpp_authentication* %0, %struct.dpp_authentication** %4, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %5, align 8
  store i64* null, i64** %16, align 8
  store i64 0, i64* %17, align 8
  store i32 -1, i32* %18, align 4
  %19 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %20 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %19, i32 0, i32 0
  store i32 255, i32* %20, align 8
  %21 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %22 = call i64* @wpabuf_head(%struct.wpabuf* %21)
  %23 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %24 = call i64 @wpabuf_len(%struct.wpabuf* %23)
  %25 = call i64 @dpp_check_attrs(i64* %22, i64 %24)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %29 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %202

30:                                               ; preds = %2
  %31 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %32 = call i64* @wpabuf_head(%struct.wpabuf* %31)
  %33 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %34 = call i64 @wpabuf_len(%struct.wpabuf* %33)
  %35 = load i32, i32* @DPP_ATTR_WRAPPED_DATA, align 4
  %36 = call i64* @dpp_get_attr(i64* %32, i64 %34, i32 %35, i64* %10)
  store i64* %36, i64** %6, align 8
  %37 = load i64*, i64** %6, align 8
  %38 = icmp ne i64* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39, %30
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %45 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %44, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %202

46:                                               ; preds = %39
  %47 = load i32, i32* @MSG_DEBUG, align 4
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @wpa_hexdump(i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64* %48, i64 %49)
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @AES_BLOCK_SIZE, align 8
  %53 = sub nsw i64 %51, %52
  store i64 %53, i64* %17, align 8
  %54 = load i64, i64* %17, align 8
  %55 = call i64* @os_malloc(i64 %54)
  store i64* %55, i64** %16, align 8
  %56 = load i64*, i64** %16, align 8
  %57 = icmp ne i64* %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %202

59:                                               ; preds = %46
  %60 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %61 = call i64* @wpabuf_head(%struct.wpabuf* %60)
  %62 = getelementptr inbounds [1 x i64*], [1 x i64*]* %14, i64 0, i64 0
  store i64* %61, i64** %62, align 8
  %63 = load i64*, i64** %6, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 -4
  %65 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %66 = call i64* @wpabuf_head(%struct.wpabuf* %65)
  %67 = ptrtoint i64* %64 to i64
  %68 = ptrtoint i64* %66 to i64
  %69 = sub i64 %67, %68
  %70 = sdiv exact i64 %69, 8
  %71 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  store i64 %70, i64* %71, align 8
  %72 = load i32, i32* @MSG_DEBUG, align 4
  %73 = getelementptr inbounds [1 x i64*], [1 x i64*]* %14, i64 0, i64 0
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @wpa_hexdump(i32 %72, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i64* %74, i64 %76)
  %78 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %79 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %82 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = load i64*, i64** %6, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds [1 x i64*], [1 x i64*]* %14, i64 0, i64 0
  %89 = getelementptr inbounds [1 x i64], [1 x i64]* %15, i64 0, i64 0
  %90 = load i64*, i64** %16, align 8
  %91 = call i64 @aes_siv_decrypt(i32 %80, i32 %85, i64* %86, i64 %87, i32 1, i64** %88, i64* %89, i64* %90)
  %92 = icmp slt i64 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %59
  %94 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %95 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %94, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %198

96:                                               ; preds = %59
  %97 = load i32, i32* @MSG_DEBUG, align 4
  %98 = load i64*, i64** %16, align 8
  %99 = load i64, i64* %17, align 8
  %100 = call i32 @wpa_hexdump(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i64* %98, i64 %99)
  %101 = load i64*, i64** %16, align 8
  %102 = load i64, i64* %17, align 8
  %103 = call i64 @dpp_check_attrs(i64* %101, i64 %102)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %96
  %106 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %107 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %106, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  br label %198

108:                                              ; preds = %96
  %109 = load i64*, i64** %16, align 8
  %110 = load i64, i64* %17, align 8
  %111 = load i32, i32* @DPP_ATTR_ENROLLEE_NONCE, align 4
  %112 = call i64* @dpp_get_attr(i64* %109, i64 %110, i32 %111, i64* %11)
  store i64* %112, i64** %7, align 8
  %113 = load i64*, i64** %7, align 8
  %114 = icmp ne i64* %113, null
  br i1 %114, label %115, label %123

115:                                              ; preds = %108
  %116 = load i64, i64* %11, align 8
  %117 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %118 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %117, i32 0, i32 2
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %116, %121
  br i1 %122, label %123, label %126

123:                                              ; preds = %115, %108
  %124 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %125 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %124, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0))
  br label %198

126:                                              ; preds = %115
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load i64*, i64** %7, align 8
  %129 = load i64, i64* %11, align 8
  %130 = call i32 @wpa_hexdump(i32 %127, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i64* %128, i64 %129)
  %131 = load i64*, i64** %7, align 8
  %132 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %133 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i64, i64* %11, align 8
  %136 = call i64 @os_memcmp(i64* %131, i32 %134, i64 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %140 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %139, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  br label %198

141:                                              ; preds = %126
  %142 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %143 = call i64* @wpabuf_head(%struct.wpabuf* %142)
  %144 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  %145 = call i64 @wpabuf_len(%struct.wpabuf* %144)
  %146 = load i32, i32* @DPP_ATTR_STATUS, align 4
  %147 = call i64* @dpp_get_attr(i64* %143, i64 %145, i32 %146, i64* %12)
  store i64* %147, i64** %8, align 8
  %148 = load i64*, i64** %8, align 8
  %149 = icmp ne i64* %148, null
  br i1 %149, label %150, label %153

150:                                              ; preds = %141
  %151 = load i64, i64* %12, align 8
  %152 = icmp slt i64 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %150, %141
  %154 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %155 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %154, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  br label %198

156:                                              ; preds = %150
  %157 = load i64*, i64** %8, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %162 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  %163 = load i32, i32* @MSG_DEBUG, align 4
  %164 = load i64*, i64** %8, align 8
  %165 = getelementptr inbounds i64, i64* %164, i64 0
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @wpa_printf(i32 %163, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.11, i64 0, i64 0), i64 %166)
  %168 = load i64*, i64** %8, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @DPP_STATUS_OK, align 8
  %172 = icmp ne i64 %170, %171
  br i1 %172, label %173, label %176

173:                                              ; preds = %156
  %174 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %175 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %174, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0))
  br label %198

176:                                              ; preds = %156
  %177 = load i64*, i64** %16, align 8
  %178 = load i64, i64* %17, align 8
  %179 = load i32, i32* @DPP_ATTR_CONFIG_OBJ, align 4
  %180 = call i64* @dpp_get_attr(i64* %177, i64 %178, i32 %179, i64* %13)
  store i64* %180, i64** %9, align 8
  %181 = load i64*, i64** %9, align 8
  %182 = icmp ne i64* %181, null
  br i1 %182, label %186, label %183

183:                                              ; preds = %176
  %184 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %185 = call i32 @dpp_auth_fail(%struct.dpp_authentication* %184, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i64 0, i64 0))
  br label %198

186:                                              ; preds = %176
  %187 = load i32, i32* @MSG_DEBUG, align 4
  %188 = load i64*, i64** %9, align 8
  %189 = load i64, i64* %13, align 8
  %190 = call i32 @wpa_hexdump_ascii(i32 %187, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i64* %188, i64 %189)
  %191 = load %struct.dpp_authentication*, %struct.dpp_authentication** %4, align 8
  %192 = load i64*, i64** %9, align 8
  %193 = load i64, i64* %13, align 8
  %194 = call i64 @dpp_parse_conf_obj(%struct.dpp_authentication* %191, i64* %192, i64 %193)
  %195 = icmp slt i64 %194, 0
  br i1 %195, label %196, label %197

196:                                              ; preds = %186
  br label %198

197:                                              ; preds = %186
  store i32 0, i32* %18, align 4
  br label %198

198:                                              ; preds = %197, %196, %183, %173, %153, %138, %123, %105, %93
  %199 = load i64*, i64** %16, align 8
  %200 = call i32 @os_free(i64* %199)
  %201 = load i32, i32* %18, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %198, %58, %43, %27
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i64 @dpp_check_attrs(i64*, i64) #1

declare dso_local i64* @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @dpp_auth_fail(%struct.dpp_authentication*, i8*) #1

declare dso_local i64* @dpp_get_attr(i64*, i64, i32, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i64* @os_malloc(i64) #1

declare dso_local i64 @aes_siv_decrypt(i32, i32, i64*, i64, i32, i64**, i64*, i64*) #1

declare dso_local i64 @os_memcmp(i64*, i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*, i64) #1

declare dso_local i32 @wpa_hexdump_ascii(i32, i8*, i64*, i64) #1

declare dso_local i64 @dpp_parse_conf_obj(%struct.dpp_authentication*, i64*, i64) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
