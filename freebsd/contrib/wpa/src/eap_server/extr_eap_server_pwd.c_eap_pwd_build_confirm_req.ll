; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_confirm_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_confirm_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32*, i32*, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.crypto_hash = type { i32 }

@SHA256_MAC_LEN = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"EAP-pwd: Confirm/Request\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"EAP-PWD (server): debug allocation fail\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"EAP-PWD (server): confirm point assignment fail\00", align 1
@EAP_PWD_DEFAULT_RAND_FUNC = common dso_local global i32 0, align 4
@EAP_PWD_DEFAULT_PRF = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32)* @eap_pwd_build_confirm_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_build_confirm_req(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_pwd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_hash*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.crypto_hash* null, %struct.crypto_hash** %7, align 8
  %16 = load i32, i32* @SHA256_MAC_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  store i32* null, i32** %10, align 8
  %20 = load i32, i32* @MSG_DEBUG, align 4
  %21 = call i32 @wpa_printf(i32 %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %23 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %22, i32 0, i32 9
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 1, i32* %15, align 4
  br label %206

27:                                               ; preds = %3
  %28 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %29 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %28, i32 0, i32 5
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @crypto_ec_prime_len(i32 %32)
  store i64 %33, i64* %13, align 8
  %34 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %35 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %34, i32 0, i32 5
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @crypto_ec_order_len(i32 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i64, i64* %13, align 8
  %41 = mul i64 %40, 2
  %42 = call i32* @os_malloc(i64 %41)
  store i32* %42, i32** %10, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %27
  %46 = load i32, i32* @MSG_INFO, align 4
  %47 = call i32 @wpa_printf(i32 %46, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %190

48:                                               ; preds = %27
  %49 = call %struct.crypto_hash* (...) @eap_pwd_h_init()
  store %struct.crypto_hash* %49, %struct.crypto_hash** %7, align 8
  %50 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %51 = icmp eq %struct.crypto_hash* %50, null
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  br label %190

53:                                               ; preds = %48
  %54 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %55 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %13, align 8
  %60 = call i32 @crypto_bignum_to_bin(i32 %56, i32* %57, i64 %58, i64 %59)
  %61 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = load i64, i64* %13, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %61, i32* %62, i32 %64)
  %66 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %67 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %66, i32 0, i32 5
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %72 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %71, i32 0, i32 7
  %73 = load i32, i32* %72, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = call i64 @crypto_ec_point_to_bin(i32 %70, i32 %73, i32* %74, i32* %77)
  %79 = icmp slt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %53
  %81 = load i32, i32* @MSG_INFO, align 4
  %82 = call i32 @wpa_printf(i32 %81, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %190

83:                                               ; preds = %53
  %84 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %85 = load i32*, i32** %10, align 8
  %86 = load i64, i64* %13, align 8
  %87 = mul i64 %86, 2
  %88 = trunc i64 %87 to i32
  %89 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %84, i32* %85, i32 %88)
  %90 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %91 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 8
  %93 = load i32*, i32** %10, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %14, align 8
  %96 = call i32 @crypto_bignum_to_bin(i32 %92, i32* %93, i64 %94, i64 %95)
  %97 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %98 = load i32*, i32** %10, align 8
  %99 = load i64, i64* %14, align 8
  %100 = trunc i64 %99 to i32
  %101 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %97, i32* %98, i32 %100)
  %102 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %103 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %102, i32 0, i32 5
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %108 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = load i32*, i32** %10, align 8
  %112 = load i64, i64* %13, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = call i64 @crypto_ec_point_to_bin(i32 %106, i32 %109, i32* %110, i32* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %83
  %117 = load i32, i32* @MSG_INFO, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  br label %190

119:                                              ; preds = %83
  %120 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = load i64, i64* %13, align 8
  %123 = mul i64 %122, 2
  %124 = trunc i64 %123 to i32
  %125 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %120, i32* %121, i32 %124)
  %126 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %127 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* %14, align 8
  %132 = call i32 @crypto_bignum_to_bin(i32 %128, i32* %129, i64 %130, i64 %131)
  %133 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load i64, i64* %14, align 8
  %136 = trunc i64 %135 to i32
  %137 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %133, i32* %134, i32 %136)
  %138 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %139 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @htons(i32 %140)
  store i32 %141, i32* %12, align 4
  %142 = load i32*, i32** %10, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @os_memset(i32* %142, i32 0, i64 %143)
  %145 = load i32*, i32** %10, align 8
  store i32* %145, i32** %11, align 8
  %146 = load i32*, i32** %11, align 8
  %147 = call i32 @os_memcpy(i32* %146, i32* %12, i32 4)
  %148 = load i32*, i32** %11, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 4
  store i32* %149, i32** %11, align 8
  %150 = load i32, i32* @EAP_PWD_DEFAULT_RAND_FUNC, align 4
  %151 = load i32*, i32** %11, align 8
  store i32 %150, i32* %151, align 4
  %152 = load i32*, i32** %11, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 4
  store i32* %153, i32** %11, align 8
  %154 = load i32, i32* @EAP_PWD_DEFAULT_PRF, align 4
  %155 = load i32*, i32** %11, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** %11, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 4
  store i32* %157, i32** %11, align 8
  %158 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load i32*, i32** %11, align 8
  %161 = load i32*, i32** %10, align 8
  %162 = ptrtoint i32* %160 to i64
  %163 = ptrtoint i32* %161 to i64
  %164 = sub i64 %162, %163
  %165 = sdiv exact i64 %164, 4
  %166 = trunc i64 %165 to i32
  %167 = call i32 @eap_pwd_h_update(%struct.crypto_hash* %158, i32* %159, i32 %166)
  %168 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %169 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %168, i32* %19)
  store %struct.crypto_hash* null, %struct.crypto_hash** %7, align 8
  %170 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %171 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @SHA256_MAC_LEN, align 4
  %174 = call i32 @os_memcpy(i32* %172, i32* %19, i32 %173)
  %175 = load i32, i32* @SHA256_MAC_LEN, align 4
  %176 = call i32* @wpabuf_alloc(i32 %175)
  %177 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %178 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %177, i32 0, i32 0
  store i32* %176, i32** %178, align 8
  %179 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %180 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = icmp eq i32* %181, null
  br i1 %182, label %183, label %184

183:                                              ; preds = %119
  br label %190

184:                                              ; preds = %119
  %185 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %186 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %185, i32 0, i32 0
  %187 = load i32*, i32** %186, align 8
  %188 = load i32, i32* @SHA256_MAC_LEN, align 4
  %189 = call i32 @wpabuf_put_data(i32* %187, i32* %19, i32 %188)
  br label %190

190:                                              ; preds = %184, %183, %116, %80, %52, %45
  %191 = load i32*, i32** %10, align 8
  %192 = load i64, i64* %13, align 8
  %193 = mul i64 %192, 2
  %194 = call i32 @bin_clear_free(i32* %191, i64 %193)
  %195 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %196 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = icmp eq i32* %197, null
  br i1 %198, label %199, label %203

199:                                              ; preds = %190
  %200 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %201 = load i32, i32* @FAILURE, align 4
  %202 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %200, i32 %201)
  br label %203

203:                                              ; preds = %199, %190
  %204 = load %struct.crypto_hash*, %struct.crypto_hash** %7, align 8
  %205 = call i32 @eap_pwd_h_final(%struct.crypto_hash* %204, i32* null)
  store i32 0, i32* %15, align 4
  br label %206

206:                                              ; preds = %203, %26
  %207 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %207)
  %208 = load i32, i32* %15, align 4
  switch i32 %208, label %210 [
    i32 0, label %209
    i32 1, label %209
  ]

209:                                              ; preds = %206, %206
  ret void

210:                                              ; preds = %206
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i64 @crypto_ec_prime_len(i32) #2

declare dso_local i64 @crypto_ec_order_len(i32) #2

declare dso_local i32* @os_malloc(i64) #2

declare dso_local %struct.crypto_hash* @eap_pwd_h_init(...) #2

declare dso_local i32 @crypto_bignum_to_bin(i32, i32*, i64, i64) #2

declare dso_local i32 @eap_pwd_h_update(%struct.crypto_hash*, i32*, i32) #2

declare dso_local i64 @crypto_ec_point_to_bin(i32, i32, i32*, i32*) #2

declare dso_local i32 @htons(i32) #2

declare dso_local i32 @os_memset(i32*, i32, i64) #2

declare dso_local i32 @os_memcpy(i32*, i32*, i32) #2

declare dso_local i32 @eap_pwd_h_final(%struct.crypto_hash*, i32*) #2

declare dso_local i32* @wpabuf_alloc(i32) #2

declare dso_local i32 @wpabuf_put_data(i32*, i32*, i32) #2

declare dso_local i32 @bin_clear_free(i32*, i64) #2

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
