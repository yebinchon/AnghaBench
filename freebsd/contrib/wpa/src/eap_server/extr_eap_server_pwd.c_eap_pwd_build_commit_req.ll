; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_commit_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_build_commit_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, i32*, i32, %struct.TYPE_2__*, i8*, i64, i8*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.crypto_bignum = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"EAP-pwd: Commit/Request\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"EAP-PWD (server): scalar allocation fail\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"EAP-PWD (server): element allocation fail\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"EAP-PWD (server): element inversion fail\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"EAP-PWD (server): point assignment fail\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32)* @eap_pwd_build_commit_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_build_commit_req(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32 %2) #0 {
  %4 = alloca %struct.eap_sm*, align 8
  %5 = alloca %struct.eap_pwd_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.crypto_bignum*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %4, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %7, align 8
  %12 = load i32, i32* @MSG_DEBUG, align 4
  %13 = call i32 @wpa_printf(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %15 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %218

19:                                               ; preds = %3
  %20 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %21 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @crypto_ec_prime_len(i32 %24)
  store i64 %25, i64* %10, align 8
  %26 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %27 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @crypto_ec_order_len(i32 %30)
  store i64 %31, i64* %11, align 8
  %32 = call i8* (...) @crypto_bignum_init()
  %33 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %34 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %33, i32 0, i32 6
  store i8* %32, i8** %34, align 8
  %35 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %36 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %35, i32 0, i32 3
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @crypto_ec_point_init(i32 %39)
  %41 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %42 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = call i8* (...) @crypto_bignum_init()
  %44 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %45 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %44, i32 0, i32 4
  store i8* %43, i8** %45, align 8
  %46 = call i8* (...) @crypto_bignum_init()
  %47 = bitcast i8* %46 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %47, %struct.crypto_bignum** %7, align 8
  %48 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %49 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %48, i32 0, i32 6
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %65

52:                                               ; preds = %19
  %53 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %54 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %59 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %58, i32 0, i32 4
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %64 = icmp ne %struct.crypto_bignum* %63, null
  br i1 %64, label %68, label %65

65:                                               ; preds = %62, %57, %52, %19
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = call i32 @wpa_printf(i32 %66, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %207

68:                                               ; preds = %62
  %69 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %70 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %69, i32 0, i32 3
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %73 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %72, i32 0, i32 6
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %76 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %77 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %76, i32 0, i32 4
  %78 = load i8*, i8** %77, align 8
  %79 = call i64 @eap_pwd_get_rand_mask(%struct.TYPE_2__* %71, i8* %74, %struct.crypto_bignum* %75, i8* %78)
  %80 = icmp slt i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %207

82:                                               ; preds = %68
  %83 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %84 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %83, i32 0, i32 3
  %85 = load %struct.TYPE_2__*, %struct.TYPE_2__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %89 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %94 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %95 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @crypto_ec_point_mul(i32 %87, i32 %92, %struct.crypto_bignum* %93, i32 %96)
  %98 = icmp slt i64 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %82
  %100 = load i32, i32* @MSG_INFO, align 4
  %101 = call i32 @wpa_printf(i32 %100, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0))
  %102 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %103 = load i32, i32* @FAILURE, align 4
  %104 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %102, i32 %103)
  br label %207

105:                                              ; preds = %82
  %106 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %107 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %106, i32 0, i32 3
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %112 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @crypto_ec_point_invert(i32 %110, i32 %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load i32, i32* @MSG_INFO, align 4
  %118 = call i32 @wpa_printf(i32 %117, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %207

119:                                              ; preds = %105
  %120 = load i64, i64* %10, align 8
  %121 = mul i64 2, %120
  %122 = load i64, i64* %11, align 8
  %123 = add i64 %121, %122
  %124 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %125 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %124, i32 0, i32 5
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %119
  %129 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %130 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = add nsw i32 1, %131
  br label %134

133:                                              ; preds = %119
  br label %134

134:                                              ; preds = %133, %128
  %135 = phi i32 [ %132, %128 ], [ 0, %133 ]
  %136 = sext i32 %135 to i64
  %137 = add i64 %123, %136
  %138 = trunc i64 %137 to i32
  %139 = call i32* @wpabuf_alloc(i32 %138)
  %140 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %141 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %140, i32 0, i32 1
  store i32* %139, i32** %141, align 8
  %142 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %143 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %134
  br label %207

147:                                              ; preds = %134
  %148 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %149 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %170

152:                                              ; preds = %147
  %153 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %154 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %157 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @wpabuf_put_u8(i32* %155, i32 %158)
  %160 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %161 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %160, i32 0, i32 1
  %162 = load i32*, i32** %161, align 8
  %163 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %164 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %163, i32 0, i32 5
  %165 = load i64, i64* %164, align 8
  %166 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %167 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = call i32 @wpabuf_put_data(i32* %162, i64 %165, i32 %168)
  br label %170

170:                                              ; preds = %152, %147
  %171 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %172 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* %10, align 8
  %175 = mul i64 2, %174
  %176 = call i32* @wpabuf_put(i32* %173, i64 %175)
  store i32* %176, i32** %9, align 8
  %177 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %178 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = load i64, i64* %11, align 8
  %181 = call i32* @wpabuf_put(i32* %179, i64 %180)
  store i32* %181, i32** %8, align 8
  %182 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %183 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %182, i32 0, i32 4
  %184 = load i8*, i8** %183, align 8
  %185 = load i32*, i32** %8, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load i64, i64* %11, align 8
  %188 = call i32 @crypto_bignum_to_bin(i8* %184, i32* %185, i64 %186, i64 %187)
  %189 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %190 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %189, i32 0, i32 3
  %191 = load %struct.TYPE_2__*, %struct.TYPE_2__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %195 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load i32*, i32** %9, align 8
  %198 = load i32*, i32** %9, align 8
  %199 = load i64, i64* %10, align 8
  %200 = getelementptr inbounds i32, i32* %198, i64 %199
  %201 = call i64 @crypto_ec_point_to_bin(i32 %193, i32 %196, i32* %197, i32* %200)
  %202 = icmp slt i64 %201, 0
  br i1 %202, label %203, label %206

203:                                              ; preds = %170
  %204 = load i32, i32* @MSG_INFO, align 4
  %205 = call i32 @wpa_printf(i32 %204, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0))
  br label %207

206:                                              ; preds = %170
  br label %207

207:                                              ; preds = %206, %203, %146, %116, %99, %81, %65
  %208 = load %struct.crypto_bignum*, %struct.crypto_bignum** %7, align 8
  %209 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %208, i32 1)
  %210 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %211 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %210, i32 0, i32 1
  %212 = load i32*, i32** %211, align 8
  %213 = icmp eq i32* %212, null
  br i1 %213, label %214, label %218

214:                                              ; preds = %207
  %215 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %5, align 8
  %216 = load i32, i32* @FAILURE, align 4
  %217 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %215, i32 %216)
  br label %218

218:                                              ; preds = %18, %214, %207
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i64 @crypto_ec_prime_len(i32) #1

declare dso_local i64 @crypto_ec_order_len(i32) #1

declare dso_local i8* @crypto_bignum_init(...) #1

declare dso_local i32 @crypto_ec_point_init(i32) #1

declare dso_local i64 @eap_pwd_get_rand_mask(%struct.TYPE_2__*, i8*, %struct.crypto_bignum*, i8*) #1

declare dso_local i64 @crypto_ec_point_mul(i32, i32, %struct.crypto_bignum*, i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i64 @crypto_ec_point_invert(i32, i32) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_u8(i32*, i32) #1

declare dso_local i32 @wpabuf_put_data(i32*, i64, i32) #1

declare dso_local i32* @wpabuf_put(i32*, i64) #1

declare dso_local i32 @crypto_bignum_to_bin(i8*, i32*, i64, i64) #1

declare dso_local i64 @crypto_ec_point_to_bin(i32, i32, i32*, i32*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
