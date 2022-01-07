; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_exchange_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/common/extr_dpp.c_dpp_pkex_build_exchange_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.dpp_pkex = type { i32, i32, i8*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.dpp_curve_params* }
%struct.dpp_curve_params = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"DPP: Build PKEX Exchange Request\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"DPP: X\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"DPP: M\00", align 1
@DPP_PA_PKEX_EXCHANGE_REQ = common dso_local global i32 0, align 4
@DPP_ATTR_FINITE_CYCLIC_GROUP = common dso_local global i32 0, align 4
@DPP_ATTR_CODE_IDENTIFIER = common dso_local global i32 0, align 4
@DPP_ATTR_ENCRYPTED_KEY = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"DPP: Failed to build PKEX Exchange Request\00", align 1
@DPP_TEST_INVALID_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_ENCRYPTED_KEY_PKEX_EXCHANGE_REQ = common dso_local global i64 0, align 8
@DPP_TEST_NO_FINITE_CYCLIC_GROUP_PKEX_EXCHANGE_REQ = common dso_local global i64 0, align 8
@dpp_pkex_ephemeral_key_override = common dso_local global i32 0, align 4
@dpp_pkex_ephemeral_key_override_len = common dso_local global i64 0, align 8
@dpp_test = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.dpp_pkex*)* @dpp_pkex_build_exchange_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @dpp_pkex_build_exchange_req(%struct.dpp_pkex* %0) #0 {
  %2 = alloca %struct.dpp_pkex*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.wpabuf*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.dpp_curve_params*, align 8
  store %struct.dpp_pkex* %0, %struct.dpp_pkex** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %5, align 8
  store i32* null, i32** %6, align 8
  store i32* null, i32** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %9, align 8
  store i32* null, i32** %10, align 8
  store i32* null, i32** %11, align 8
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  %15 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %16 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %18, align 8
  store %struct.dpp_curve_params* %19, %struct.dpp_curve_params** %14, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = call i32* (...) @BN_CTX_new()
  store i32* %22, i32** %5, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %224

26:                                               ; preds = %1
  %27 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %28 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %29 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %32 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %35 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32* @dpp_pkex_derive_Qi(%struct.dpp_curve_params* %27, i32 %30, i32 %33, i32 %36, i32* %37, i32** %6)
  store i32* %38, i32** %7, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %26
  br label %224

42:                                               ; preds = %26
  %43 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %44 = call i8* @dpp_gen_keypair(%struct.dpp_curve_params* %43)
  %45 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %46 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %48 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %47, i32 0, i32 2
  %49 = load i8*, i8** %48, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %52, label %51

51:                                               ; preds = %42
  br label %224

52:                                               ; preds = %42
  %53 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %54 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %53, i32 0, i32 2
  %55 = load i8*, i8** %54, align 8
  %56 = call i32* @EVP_PKEY_get1_EC_KEY(i8* %55)
  store i32* %56, i32** %3, align 8
  %57 = load i32*, i32** %3, align 8
  %58 = icmp ne i32* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %224

60:                                               ; preds = %52
  %61 = load i32*, i32** %3, align 8
  %62 = call i32* @EC_KEY_get0_public_key(i32* %61)
  store i32* %62, i32** %4, align 8
  %63 = load i32*, i32** %4, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %60
  br label %224

66:                                               ; preds = %60
  %67 = load i32*, i32** %6, align 8
  %68 = load i32*, i32** %4, align 8
  %69 = call i32 @dpp_debug_print_point(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32* %67, i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = call i32* @EC_POINT_new(i32* %70)
  store i32* %71, i32** %8, align 8
  %72 = call i32* (...) @BN_new()
  store i32* %72, i32** %10, align 8
  %73 = call i32* (...) @BN_new()
  store i32* %73, i32** %11, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %98

76:                                               ; preds = %66
  %77 = load i32*, i32** %10, align 8
  %78 = icmp ne i32* %77, null
  br i1 %78, label %79, label %98

79:                                               ; preds = %76
  %80 = load i32*, i32** %11, align 8
  %81 = icmp ne i32* %80, null
  br i1 %81, label %82, label %98

82:                                               ; preds = %79
  %83 = load i32*, i32** %6, align 8
  %84 = load i32*, i32** %8, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = load i32*, i32** %7, align 8
  %87 = load i32*, i32** %5, align 8
  %88 = call i32 @EC_POINT_add(i32* %83, i32* %84, i32* %85, i32* %86, i32* %87)
  %89 = icmp ne i32 %88, 1
  br i1 %89, label %98, label %90

90:                                               ; preds = %82
  %91 = load i32*, i32** %6, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i32*, i32** %11, align 8
  %95 = load i32*, i32** %5, align 8
  %96 = call i32 @EC_POINT_get_affine_coordinates_GFp(i32* %91, i32* %92, i32* %93, i32* %94, i32* %95)
  %97 = icmp ne i32 %96, 1
  br i1 %97, label %98, label %99

98:                                               ; preds = %90, %82, %79, %76, %66
  br label %224

99:                                               ; preds = %90
  %100 = load i32*, i32** %6, align 8
  %101 = load i32*, i32** %8, align 8
  %102 = call i32 @dpp_debug_print_point(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32* %100, i32* %101)
  store i64 6, i64* %13, align 8
  %103 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %104 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %99
  %108 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %109 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @os_strlen(i32 %110)
  %112 = add nsw i32 4, %111
  %113 = sext i32 %112 to i64
  %114 = load i64, i64* %13, align 8
  %115 = add i64 %114, %113
  store i64 %115, i64* %13, align 8
  br label %116

116:                                              ; preds = %107, %99
  %117 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %118 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 2, %119
  %121 = add nsw i32 4, %120
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %13, align 8
  %124 = add i64 %123, %122
  store i64 %124, i64* %13, align 8
  %125 = load i32, i32* @DPP_PA_PKEX_EXCHANGE_REQ, align 4
  %126 = load i64, i64* %13, align 8
  %127 = call %struct.wpabuf* @dpp_alloc_msg(i32 %125, i64 %126)
  store %struct.wpabuf* %127, %struct.wpabuf** %12, align 8
  %128 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %129 = icmp ne %struct.wpabuf* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %116
  br label %224

131:                                              ; preds = %116
  %132 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %133 = load i32, i32* @DPP_ATTR_FINITE_CYCLIC_GROUP, align 4
  %134 = call i32 @wpabuf_put_le16(%struct.wpabuf* %132, i32 %133)
  %135 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %136 = call i32 @wpabuf_put_le16(%struct.wpabuf* %135, i32 2)
  %137 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %138 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %139 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @wpabuf_put_le16(%struct.wpabuf* %137, i32 %140)
  %142 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %143 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %161

146:                                              ; preds = %131
  %147 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %148 = load i32, i32* @DPP_ATTR_CODE_IDENTIFIER, align 4
  %149 = call i32 @wpabuf_put_le16(%struct.wpabuf* %147, i32 %148)
  %150 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %151 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %152 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @os_strlen(i32 %153)
  %155 = call i32 @wpabuf_put_le16(%struct.wpabuf* %150, i32 %154)
  %156 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %157 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %158 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @wpabuf_put_str(%struct.wpabuf* %156, i32 %159)
  br label %161

161:                                              ; preds = %146, %131
  %162 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %163 = load i32, i32* @DPP_ATTR_ENCRYPTED_KEY, align 4
  %164 = call i32 @wpabuf_put_le16(%struct.wpabuf* %162, i32 %163)
  %165 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %166 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %167 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 2, %168
  %170 = call i32 @wpabuf_put_le16(%struct.wpabuf* %165, i32 %169)
  %171 = load i32*, i32** %10, align 8
  %172 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %173 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %174 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = call i32 @wpabuf_put(%struct.wpabuf* %172, i32 %175)
  %177 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %178 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i64 @dpp_bn2bin_pad(i32* %171, i32 %176, i32 %179)
  %181 = icmp slt i64 %180, 0
  br i1 %181, label %204, label %182

182:                                              ; preds = %161
  %183 = load i32*, i32** %10, align 8
  %184 = load %struct.dpp_pkex*, %struct.dpp_pkex** %2, align 8
  %185 = getelementptr inbounds %struct.dpp_pkex, %struct.dpp_pkex* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %188 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @dpp_bn2bin_pad(i32* %183, i32 %186, i32 %189)
  %191 = icmp slt i64 %190, 0
  br i1 %191, label %204, label %192

192:                                              ; preds = %182
  %193 = load i32*, i32** %11, align 8
  %194 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %195 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %196 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @wpabuf_put(%struct.wpabuf* %194, i32 %197)
  %199 = load %struct.dpp_curve_params*, %struct.dpp_curve_params** %14, align 8
  %200 = getelementptr inbounds %struct.dpp_curve_params, %struct.dpp_curve_params* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i64 @dpp_bn2bin_pad(i32* %193, i32 %198, i32 %201)
  %203 = icmp slt i64 %202, 0
  br i1 %203, label %204, label %205

204:                                              ; preds = %192, %182, %161
  br label %224

205:                                              ; preds = %192
  br label %206

206:                                              ; preds = %224, %205
  %207 = load %struct.wpabuf*, %struct.wpabuf** %9, align 8
  %208 = call i32 @wpabuf_free(%struct.wpabuf* %207)
  %209 = load i32*, i32** %3, align 8
  %210 = call i32 @EC_KEY_free(i32* %209)
  %211 = load i32*, i32** %8, align 8
  %212 = call i32 @EC_POINT_free(i32* %211)
  %213 = load i32*, i32** %7, align 8
  %214 = call i32 @EC_POINT_free(i32* %213)
  %215 = load i32*, i32** %10, align 8
  %216 = call i32 @BN_clear_free(i32* %215)
  %217 = load i32*, i32** %11, align 8
  %218 = call i32 @BN_clear_free(i32* %217)
  %219 = load i32*, i32** %5, align 8
  %220 = call i32 @BN_CTX_free(i32* %219)
  %221 = load i32*, i32** %6, align 8
  %222 = call i32 @EC_GROUP_free(i32* %221)
  %223 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  ret %struct.wpabuf* %223

224:                                              ; preds = %204, %130, %98, %65, %59, %51, %41, %25
  %225 = load i32, i32* @MSG_INFO, align 4
  %226 = call i32 @wpa_printf(i32 %225, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %227 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %228 = call i32 @wpabuf_free(%struct.wpabuf* %227)
  store %struct.wpabuf* null, %struct.wpabuf** %12, align 8
  br label %206
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32* @BN_CTX_new(...) #1

declare dso_local i32* @dpp_pkex_derive_Qi(%struct.dpp_curve_params*, i32, i32, i32, i32*, i32**) #1

declare dso_local i8* @dpp_gen_keypair(%struct.dpp_curve_params*) #1

declare dso_local i32* @EVP_PKEY_get1_EC_KEY(i8*) #1

declare dso_local i32* @EC_KEY_get0_public_key(i32*) #1

declare dso_local i32 @dpp_debug_print_point(i8*, i32*, i32*) #1

declare dso_local i32* @EC_POINT_new(i32*) #1

declare dso_local i32* @BN_new(...) #1

declare dso_local i32 @EC_POINT_add(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @EC_POINT_get_affine_coordinates_GFp(i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @os_strlen(i32) #1

declare dso_local %struct.wpabuf* @dpp_alloc_msg(i32, i64) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_str(%struct.wpabuf*, i32) #1

declare dso_local i64 @dpp_bn2bin_pad(i32*, i32, i32) #1

declare dso_local i32 @wpabuf_put(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @EC_KEY_free(i32*) #1

declare dso_local i32 @EC_POINT_free(i32*) #1

declare dso_local i32 @BN_clear_free(i32*) #1

declare dso_local i32 @BN_CTX_free(i32*) #1

declare dso_local i32 @EC_GROUP_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
