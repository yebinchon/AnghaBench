; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_confirm_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_confirm_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_hash = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"EAP-pwd: Unexpected Confirm payload length %u (expected %u)\00", align 1
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i32 0, align 4
@EAP_PWD_DEFAULT_PRF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"EAP-PWD (peer): allocation fail\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"EAP-PWD (server): confirm point assignment fail\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"EAP-PWD (server): confirm did not verify\00", align 1
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"EAP-pwd (server): confirm verified\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64)* @eap_pwd_process_confirm_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_process_confirm_resp(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_pwd_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.crypto_hash*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.crypto_hash* null, %struct.crypto_hash** %9, align 8
  %18 = load i32, i32* @SHA256_MAC_LEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %12, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %13, align 8
  store i32* null, i32** %14, align 8
  %22 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %22, i32 0, i32 7
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @crypto_ec_prime_len(i32 %26)
  store i64 %27, i64* %16, align 8
  %28 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %29 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %28, i32 0, i32 7
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @crypto_ec_order_len(i32 %32)
  store i64 %33, i64* %17, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @SHA256_MAC_LEN, align 4
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %34, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %4
  %39 = load i32, i32* @MSG_INFO, align 4
  %40 = load i64, i64* %8, align 8
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @SHA256_MAC_LEN, align 4
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %39, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  br label %207

44:                                               ; preds = %4
  %45 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %46 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %45, i32 0, i32 10
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @htons(i32 %47)
  store i32 %48, i32* %11, align 4
  store i32* %10, i32** %15, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = call i32 @os_memcpy(i32* %49, i32* %11, i32 4)
  %51 = load i32*, i32** %15, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 4
  store i32* %52, i32** %15, align 8
  %53 = load i32, i32* @EAP_PWD_DEFAULT_RAND_FUNC, align 4
  %54 = load i32*, i32** %15, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i32*, i32** %15, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 4
  store i32* %56, i32** %15, align 8
  %57 = load i32, i32* @EAP_PWD_DEFAULT_PRF, align 4
  %58 = load i32*, i32** %15, align 8
  store i32 %57, i32* %58, align 4
  %59 = load i64, i64* %16, align 8
  %60 = mul i64 %59, 2
  %61 = call i32* @os_malloc(i64 %60)
  store i32* %61, i32** %14, align 8
  %62 = load i32*, i32** %14, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %44
  %65 = load i32, i32* @MSG_INFO, align 4
  %66 = call i32 (i32, i8*, ...) @wpa_printf(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %207

67:                                               ; preds = %44
  %68 = call %struct.crypto_hash* (...) @eap_pwd_h_init()
  store %struct.crypto_hash* %68, %struct.crypto_hash** %9, align 8
  %69 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %70 = icmp eq %struct.crypto_hash* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %67
  br label %207

72:                                               ; preds = %67
  %73 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %74 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i64, i64* %16, align 8
  %78 = load i64, i64* %16, align 8
  %79 = call i32 @crypto_bignum_to_bin(i32 %75, i32* %76, i64 %77, i64 %78)
  %80 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %81 = load i32*, i32** %14, align 8
  %82 = load i64, i64* %16, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %80, i32* %81, i32 %83)
  %85 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %85, i32 0, i32 7
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %91 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %90, i32 0, i32 9
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %14, align 8
  %95 = load i64, i64* %16, align 8
  %96 = getelementptr inbounds i32, i32* %94, i64 %95
  %97 = call i64 @crypto_ec_point_to_bin(i32 %89, i32 %92, i32* %93, i32* %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %72
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 (i32, i8*, ...) @wpa_printf(i32 %100, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %207

102:                                              ; preds = %72
  %103 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i64, i64* %16, align 8
  %106 = mul i64 %105, 2
  %107 = trunc i64 %106 to i32
  %108 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %103, i32* %104, i32 %107)
  %109 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %110 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %14, align 8
  %113 = load i64, i64* %17, align 8
  %114 = load i64, i64* %17, align 8
  %115 = call i32 @crypto_bignum_to_bin(i32 %111, i32* %112, i64 %113, i64 %114)
  %116 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %117 = load i32*, i32** %14, align 8
  %118 = load i64, i64* %17, align 8
  %119 = trunc i64 %118 to i32
  %120 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %116, i32* %117, i32 %119)
  %121 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %122 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %121, i32 0, i32 7
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %127 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %126, i32 0, i32 8
  %128 = load i32, i32* %127, align 8
  %129 = load i32*, i32** %14, align 8
  %130 = load i32*, i32** %14, align 8
  %131 = load i64, i64* %16, align 8
  %132 = getelementptr inbounds i32, i32* %130, i64 %131
  %133 = call i64 @crypto_ec_point_to_bin(i32 %125, i32 %128, i32* %129, i32* %132)
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %102
  %136 = load i32, i32* @MSG_INFO, align 4
  %137 = call i32 (i32, i8*, ...) @wpa_printf(i32 %136, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %207

138:                                              ; preds = %102
  %139 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %140 = load i32*, i32** %14, align 8
  %141 = load i64, i64* %16, align 8
  %142 = mul i64 %141, 2
  %143 = trunc i64 %142 to i32
  %144 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %139, i32* %140, i32 %143)
  %145 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %146 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %145, i32 0, i32 4
  %147 = load i32, i32* %146, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load i64, i64* %17, align 8
  %150 = load i64, i64* %17, align 8
  %151 = call i32 @crypto_bignum_to_bin(i32 %147, i32* %148, i64 %149, i64 %150)
  %152 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %153 = load i32*, i32** %14, align 8
  %154 = load i64, i64* %17, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %152, i32* %153, i32 %155)
  %157 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %158 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %157, i32* %10, i32 4)
  %159 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %160 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %159, i32* %21)
  store %struct.crypto_hash* null, %struct.crypto_hash** %9, align 8
  %161 = load i32*, i32** %7, align 8
  store i32* %161, i32** %15, align 8
  %162 = load i32*, i32** %15, align 8
  %163 = load i32, i32* @SHA256_MAC_LEN, align 4
  %164 = call i64 @os_memcmp_const(i32* %21, i32* %162, i32 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %138
  %167 = load i32, i32* @MSG_INFO, align 4
  %168 = call i32 (i32, i8*, ...) @wpa_printf(i32 %167, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %207

169:                                              ; preds = %138
  %170 = load i32, i32* @MSG_DEBUG, align 4
  %171 = call i32 (i32, i8*, ...) @wpa_printf(i32 %170, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  %172 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %173 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %172, i32 0, i32 7
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %176 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %175, i32 0, i32 6
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %179 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %178, i32 0, i32 5
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %182 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %181, i32 0, i32 4
  %183 = load i32, i32* %182, align 8
  %184 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %185 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %188 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %191 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %194 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @compute_keys(%struct.TYPE_2__* %174, i32 %177, i32 %180, i32 %183, i32* %21, i32 %186, i32* %10, i32 %189, i32 %192, i32 %195)
  %197 = icmp slt i64 %196, 0
  br i1 %197, label %198, label %202

198:                                              ; preds = %169
  %199 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %200 = load i32, i32* @FAILURE, align 4
  %201 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %199, i32 %200)
  br label %206

202:                                              ; preds = %169
  %203 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %204 = load i32, i32* @SUCCESS, align 4
  %205 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %198
  br label %207

207:                                              ; preds = %206, %166, %135, %99, %71, %64, %38
  %208 = load i32*, i32** %14, align 8
  %209 = load i64, i64* %16, align 8
  %210 = mul i64 %209, 2
  %211 = call i32 @bin_clear_free(i32* %208, i64 %210)
  %212 = load %struct.crypto_hash*, %struct.crypto_hash** %9, align 8
  %213 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %212, i32* null)
  %214 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %214)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @crypto_ec_prime_len(i32) #2

declare dso_local i64 @crypto_ec_order_len(i32) #2

declare dso_local i32 @wpa_printf(i32, i8*, ...) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local %struct.crypto_hash* @eap_pwd_h_init(...) #2

declare dso_local i32 @crypto_bignum_to_bin(i32, i32*, i64, i64) #2

declare dso_local i32 @eap_pwd_h_update(%struct.crypto_hash*, i32*, i32) #2

declare dso_local i64 @crypto_ec_point_to_bin(i32, i32, i32*, i32*) #2

declare dso_local i32 @eap_pwd_h_final(%struct.crypto_hash*, i32*) #2

declare dso_local i64 @os_memcmp_const(i32*, i32*, i32) #2

declare dso_local i64 @compute_keys(%struct.TYPE_2__*, i32, i32, i32, i32*, i32, i32*, i32, i32, i32) #2

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #2

declare dso_local i32 @bin_clear_free(i32*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
