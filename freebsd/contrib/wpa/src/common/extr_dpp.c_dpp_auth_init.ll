; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_auth_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpp_authentication = type { i32, i32, i32, i32, i32*, i64, i64, i32, %struct.TYPE_3__*, %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info*, i32, i32, i8*, i8* }
%struct.TYPE_3__ = type { i64, i32, i32 }
%struct.dpp_bootstrap_info = type { i32*, i32, %struct.TYPE_3__* }
%struct.hostapd_hw_modes = type { i32 }
%struct.wpabuf = type { i32 }

@DPP_CAPAB_CONFIGURATOR = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"DPP: Failed to generate I-nonce\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"DPP: I-nonce\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"DPP: ECDH shared secret (M.x)\00", align 1
@DPP_TEST_INVALID_I_BOOTSTRAP_KEY_HASH_AUTH_REQ = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_I_PROTO_KEY_AUTH_REQ = common dso_local global i64 0, align 8
@DPP_TEST_INVALID_R_BOOTSTRAP_KEY_HASH_AUTH_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_BOOTSTRAP_KEY_HASH_AUTH_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_I_PROTO_KEY_AUTH_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_R_BOOTSTRAP_KEY_HASH_AUTH_REQ = common dso_local global i64 0, align 8
@MSG_INFO = common dso_local global i32 0, align 4
@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@dpp_nonce_override = common dso_local global i32* null, align 8
@dpp_nonce_override_len = common dso_local global i64 0, align 8
@dpp_protocol_key_override = common dso_local global i32 0, align 4
@dpp_protocol_key_override_len = common dso_local global i64 0, align 8
@dpp_test = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dpp_authentication* @dpp_auth_init(i8* %0, %struct.dpp_bootstrap_info* %1, %struct.dpp_bootstrap_info* %2, i32 %3, i32 %4, %struct.hostapd_hw_modes* %5, i32 %6) #0 {
  %8 = alloca %struct.dpp_authentication*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.dpp_bootstrap_info*, align 8
  %11 = alloca %struct.dpp_bootstrap_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.hostapd_hw_modes*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.dpp_authentication*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wpabuf*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i8* %0, i8** %9, align 8
  store %struct.dpp_bootstrap_info* %1, %struct.dpp_bootstrap_info** %10, align 8
  store %struct.dpp_bootstrap_info* %2, %struct.dpp_bootstrap_info** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store %struct.hostapd_hw_modes* %5, %struct.hostapd_hw_modes** %14, align 8
  store i32 %6, i32* %15, align 4
  store %struct.wpabuf* null, %struct.wpabuf** %19, align 8
  %22 = call %struct.dpp_authentication* @os_zalloc(i32 96)
  store %struct.dpp_authentication* %22, %struct.dpp_authentication** %16, align 8
  %23 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %24 = icmp ne %struct.dpp_authentication* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %7
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %8, align 8
  br label %190

26:                                               ; preds = %7
  %27 = load i8*, i8** %9, align 8
  %28 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %29 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %28, i32 0, i32 14
  store i8* %27, i8** %29, align 8
  %30 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %31 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %33 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %32, i32 0, i32 1
  store i32 1, i32* %33, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %36 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @DPP_CAPAB_CONFIGURATOR, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %45 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %47 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %48 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %47, i32 0, i32 10
  store %struct.dpp_bootstrap_info* %46, %struct.dpp_bootstrap_info** %48, align 8
  %49 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %11, align 8
  %50 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %51 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %50, i32 0, i32 9
  store %struct.dpp_bootstrap_info* %49, %struct.dpp_bootstrap_info** %51, align 8
  %52 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %10, align 8
  %53 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %52, i32 0, i32 2
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %56 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %55, i32 0, i32 8
  store %struct.TYPE_3__* %54, %struct.TYPE_3__** %56, align 8
  %57 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %58 = call i64 @dpp_autogen_bootstrap_key(%struct.dpp_authentication* %57)
  %59 = icmp slt i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %26
  %61 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %62 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %14, align 8
  %63 = load i32, i32* %15, align 4
  %64 = call i64 @dpp_prepare_channel_list(%struct.dpp_authentication* %61, %struct.hostapd_hw_modes* %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %26
  br label %187

67:                                               ; preds = %60
  %68 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %69 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %68, i32 0, i32 8
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* %17, align 8
  %73 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %74 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %73, i32 0, i32 4
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %17, align 8
  %77 = call i64 @random_get_bytes(i32* %75, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %67
  %80 = load i32, i32* @MSG_ERROR, align 4
  %81 = call i32 @wpa_printf(i32 %80, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %187

82:                                               ; preds = %67
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %85 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %84, i32 0, i32 4
  %86 = load i32*, i32** %85, align 8
  %87 = load i64, i64* %17, align 8
  %88 = call i32 @wpa_hexdump(i32 %83, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32* %86, i64 %87)
  %89 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %90 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %89, i32 0, i32 8
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = call i8* @dpp_gen_keypair(%struct.TYPE_3__* %91)
  %93 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %94 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %93, i32 0, i32 13
  store i8* %92, i8** %94, align 8
  %95 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %96 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %95, i32 0, i32 13
  %97 = load i8*, i8** %96, align 8
  %98 = icmp ne i8* %97, null
  br i1 %98, label %100, label %99

99:                                               ; preds = %82
  br label %187

100:                                              ; preds = %82
  %101 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %102 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %101, i32 0, i32 13
  %103 = load i8*, i8** %102, align 8
  %104 = call %struct.wpabuf* @dpp_get_pubkey_point(i8* %103, i32 0)
  store %struct.wpabuf* %104, %struct.wpabuf** %19, align 8
  %105 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %106 = icmp ne %struct.wpabuf* %105, null
  br i1 %106, label %108, label %107

107:                                              ; preds = %100
  br label %187

108:                                              ; preds = %100
  %109 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %110 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %109, i32 0, i32 13
  %111 = load i8*, i8** %110, align 8
  %112 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %113 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %112, i32 0, i32 10
  %114 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %113, align 8
  %115 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %118 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %117, i32 0, i32 12
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @dpp_ecdh(i8* %111, i32 %116, i32 %119, i64* %18)
  %121 = icmp slt i64 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %108
  br label %187

123:                                              ; preds = %108
  %124 = load i64, i64* %18, align 8
  %125 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %126 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %125, i32 0, i32 5
  store i64 %124, i64* %126, align 8
  %127 = load i32, i32* @MSG_DEBUG, align 4
  %128 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %129 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %128, i32 0, i32 12
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %132 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %131, i32 0, i32 5
  %133 = load i64, i64* %132, align 8
  %134 = call i32 @wpa_hexdump_key(i32 %127, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %130, i64 %133)
  %135 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %136 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %135, i32 0, i32 5
  %137 = load i64, i64* %136, align 8
  %138 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %139 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %138, i32 0, i32 6
  store i64 %137, i64* %139, align 8
  %140 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %141 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %140, i32 0, i32 12
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %144 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %147 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %146, i32 0, i32 11
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %150 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %149, i32 0, i32 8
  %151 = load %struct.TYPE_3__*, %struct.TYPE_3__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @dpp_derive_k1(i32 %142, i64 %145, i32 %148, i32 %153)
  %155 = icmp slt i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %123
  br label %187

157:                                              ; preds = %123
  %158 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %159 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %158, i32 0, i32 10
  %160 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %159, align 8
  %161 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  store i32* %162, i32** %20, align 8
  %163 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %164 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %163, i32 0, i32 9
  %165 = load %struct.dpp_bootstrap_info*, %struct.dpp_bootstrap_info** %164, align 8
  %166 = getelementptr inbounds %struct.dpp_bootstrap_info, %struct.dpp_bootstrap_info* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  store i32* %167, i32** %21, align 8
  %168 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %169 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %170 = load i64, i64* %17, align 8
  %171 = load i32*, i32** %20, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = load i32, i32* %13, align 4
  %174 = call i32 @dpp_auth_build_req(%struct.dpp_authentication* %168, %struct.wpabuf* %169, i64 %170, i32* %171, i32* %172, i32 %173)
  %175 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %176 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %175, i32 0, i32 7
  store i32 %174, i32* %176, align 8
  %177 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %178 = getelementptr inbounds %struct.dpp_authentication, %struct.dpp_authentication* %177, i32 0, i32 7
  %179 = load i32, i32* %178, align 8
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %182, label %181

181:                                              ; preds = %157
  br label %187

182:                                              ; preds = %157
  br label %183

183:                                              ; preds = %187, %182
  %184 = load %struct.wpabuf*, %struct.wpabuf** %19, align 8
  %185 = call i32 @wpabuf_free(%struct.wpabuf* %184)
  %186 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  store %struct.dpp_authentication* %186, %struct.dpp_authentication** %8, align 8
  br label %190

187:                                              ; preds = %181, %156, %122, %107, %99, %79, %66
  %188 = load %struct.dpp_authentication*, %struct.dpp_authentication** %16, align 8
  %189 = call i32 @dpp_auth_deinit(%struct.dpp_authentication* %188)
  store %struct.dpp_authentication* null, %struct.dpp_authentication** %16, align 8
  br label %183

190:                                              ; preds = %183, %25
  %191 = load %struct.dpp_authentication*, %struct.dpp_authentication** %8, align 8
  ret %struct.dpp_authentication* %191
}

declare dso_local %struct.dpp_authentication* @os_zalloc(i32) #1

declare dso_local i64 @dpp_autogen_bootstrap_key(%struct.dpp_authentication*) #1

declare dso_local i64 @dpp_prepare_channel_list(%struct.dpp_authentication*, %struct.hostapd_hw_modes*, i32) #1

declare dso_local i64 @random_get_bytes(i32*, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i8* @dpp_gen_keypair(%struct.TYPE_3__*) #1

declare dso_local %struct.wpabuf* @dpp_get_pubkey_point(i8*, i32) #1

declare dso_local i64 @dpp_ecdh(i8*, i32, i32, i64*) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i32, i64) #1

declare dso_local i64 @dpp_derive_k1(i32, i64, i32, i32) #1

declare dso_local i32 @dpp_auth_build_req(%struct.dpp_authentication*, %struct.wpabuf*, i64, i32*, i32*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @dpp_auth_deinit(%struct.dpp_authentication*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
