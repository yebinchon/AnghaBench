; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_commit_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_server/extr_eap_server_pwd.c_eap_pwd_process_commit_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i32, %struct.TYPE_3__*, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, %struct.crypto_ec_point* }
%struct.crypto_ec_point = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"EAP-pwd: Received commit response\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"EAP-pwd: Unexpected Commit payload length %u (expected %u)\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"EAP-PWD (server): peer data allocation fail\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"EAP-PWD (server): setting peer element fail\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"EAP-PWD (server): detected reflection attack!\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"EAP-PWD (server): computing shared key fail\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"EAP-PWD (server): shared key point is at infinity\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"EAP-PWD (server): unable to extract shared secret from secret point\00", align 1
@PWD_Confirm_Req = common dso_local global i32 0, align 4
@FAILURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, i32*, i64)* @eap_pwd_process_commit_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_process_commit_resp(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.eap_sm*, align 8
  %6 = alloca %struct.eap_pwd_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.crypto_ec_point*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.eap_sm* %0, %struct.eap_sm** %5, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.crypto_ec_point* null, %struct.crypto_ec_point** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i32, i32* @MSG_DEBUG, align 4
  %15 = call i32 (i32, i8*, ...) @wpa_printf(i32 %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %17 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @crypto_ec_prime_len(i32 %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %23 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @crypto_ec_order_len(i32 %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %12, align 8
  %30 = mul i64 2, %29
  %31 = load i64, i64* %13, align 8
  %32 = add i64 %30, %31
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %4
  %35 = load i32, i32* @MSG_INFO, align 4
  %36 = load i64, i64* %8, align 8
  %37 = trunc i64 %36 to i32
  %38 = load i64, i64* %12, align 8
  %39 = mul i64 2, %38
  %40 = load i64, i64* %13, align 8
  %41 = add i64 %39, %40
  %42 = trunc i64 %41 to i32
  %43 = call i32 (i32, i8*, ...) @wpa_printf(i32 %35, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %42)
  br label %199

44:                                               ; preds = %4
  %45 = call i32 (...) @crypto_bignum_init()
  %46 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %47 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  %48 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %49 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call %struct.crypto_ec_point* @crypto_ec_point_init(i32 %52)
  store %struct.crypto_ec_point* %53, %struct.crypto_ec_point** %10, align 8
  %54 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %55 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %44
  %59 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %60 = icmp ne %struct.crypto_ec_point* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58, %44
  %62 = load i32, i32* @MSG_INFO, align 4
  %63 = call i32 (i32, i8*, ...) @wpa_printf(i32 %62, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %199

64:                                               ; preds = %58
  %65 = load i32*, i32** %7, align 8
  store i32* %65, i32** %9, align 8
  %66 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %67 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @eap_pwd_get_element(%struct.TYPE_3__* %68, i32* %69)
  %71 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %72 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %71, i32 0, i32 3
  store i32 %70, i32* %72, align 4
  %73 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %74 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %80, label %77

77:                                               ; preds = %64
  %78 = load i32, i32* @MSG_INFO, align 4
  %79 = call i32 (i32, i8*, ...) @wpa_printf(i32 %78, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %199

80:                                               ; preds = %64
  %81 = load i64, i64* %12, align 8
  %82 = mul i64 %81, 2
  %83 = load i32*, i32** %9, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %9, align 8
  %85 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %86 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = load i32*, i32** %9, align 8
  %89 = call i32 @eap_pwd_get_scalar(%struct.TYPE_3__* %87, i32* %88)
  %90 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %91 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %90, i32 0, i32 4
  store i32 %89, i32* %91, align 8
  %92 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %93 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %99, label %96

96:                                               ; preds = %80
  %97 = load i32, i32* @MSG_INFO, align 4
  %98 = call i32 (i32, i8*, ...) @wpa_printf(i32 %97, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %199

99:                                               ; preds = %80
  %100 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %101 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %104 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @crypto_bignum_cmp(i32 %102, i32 %105)
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %122, label %108

108:                                              ; preds = %99
  %109 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %110 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %109, i32 0, i32 1
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %115 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %118 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i64 @crypto_ec_point_cmp(i32 %113, i32 %116, i32 %119)
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108, %99
  %123 = load i32, i32* @MSG_INFO, align 4
  %124 = call i32 (i32, i8*, ...) @wpa_printf(i32 %123, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0))
  br label %199

125:                                              ; preds = %108
  %126 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %127 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %132 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %134, align 8
  %136 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %137 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %140 = call i64 @crypto_ec_point_mul(i32 %130, %struct.crypto_ec_point* %135, i32 %138, %struct.crypto_ec_point* %139)
  %141 = icmp slt i64 %140, 0
  br i1 %141, label %168, label %142

142:                                              ; preds = %125
  %143 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %144 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %143, i32 0, i32 1
  %145 = load %struct.TYPE_3__*, %struct.TYPE_3__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %149 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %150 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %153 = call i64 @crypto_ec_point_add(i32 %147, %struct.crypto_ec_point* %148, i32 %151, %struct.crypto_ec_point* %152)
  %154 = icmp slt i64 %153, 0
  br i1 %154, label %168, label %155

155:                                              ; preds = %142
  %156 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %157 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %162 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %163 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %166 = call i64 @crypto_ec_point_mul(i32 %160, %struct.crypto_ec_point* %161, i32 %164, %struct.crypto_ec_point* %165)
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %155, %142, %125
  %169 = load i32, i32* @MSG_INFO, align 4
  %170 = call i32 (i32, i8*, ...) @wpa_printf(i32 %169, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  br label %199

171:                                              ; preds = %155
  %172 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %173 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %172, i32 0, i32 1
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %178 = call i64 @crypto_ec_point_is_at_infinity(i32 %176, %struct.crypto_ec_point* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %183

180:                                              ; preds = %171
  %181 = load i32, i32* @MSG_INFO, align 4
  %182 = call i32 (i32, i8*, ...) @wpa_printf(i32 %181, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  br label %199

183:                                              ; preds = %171
  %184 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %185 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %184, i32 0, i32 1
  %186 = load %struct.TYPE_3__*, %struct.TYPE_3__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %190 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %191 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i64 @crypto_ec_point_x(i32 %188, %struct.crypto_ec_point* %189, i32 %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %183
  %196 = load i32, i32* @MSG_INFO, align 4
  %197 = call i32 (i32, i8*, ...) @wpa_printf(i32 %196, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.7, i64 0, i64 0))
  br label %199

198:                                              ; preds = %183
  store i32 1, i32* %11, align 4
  br label %199

199:                                              ; preds = %198, %195, %180, %168, %122, %96, %77, %61, %34
  %200 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %10, align 8
  %201 = call i32 @crypto_ec_point_deinit(%struct.crypto_ec_point* %200, i32 1)
  %202 = load i32, i32* %11, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %208

204:                                              ; preds = %199
  %205 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %206 = load i32, i32* @PWD_Confirm_Req, align 4
  %207 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %205, i32 %206)
  br label %212

208:                                              ; preds = %199
  %209 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %6, align 8
  %210 = load i32, i32* @FAILURE, align 4
  %211 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %209, i32 %210)
  br label %212

212:                                              ; preds = %208, %204
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @crypto_ec_prime_len(i32) #1

declare dso_local i64 @crypto_ec_order_len(i32) #1

declare dso_local i32 @crypto_bignum_init(...) #1

declare dso_local %struct.crypto_ec_point* @crypto_ec_point_init(i32) #1

declare dso_local i32 @eap_pwd_get_element(%struct.TYPE_3__*, i32*) #1

declare dso_local i32 @eap_pwd_get_scalar(%struct.TYPE_3__*, i32*) #1

declare dso_local i64 @crypto_bignum_cmp(i32, i32) #1

declare dso_local i64 @crypto_ec_point_cmp(i32, i32, i32) #1

declare dso_local i64 @crypto_ec_point_mul(i32, %struct.crypto_ec_point*, i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_add(i32, %struct.crypto_ec_point*, i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_is_at_infinity(i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_x(i32, %struct.crypto_ec_point*, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(%struct.crypto_ec_point*, i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
