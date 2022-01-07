; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_commit_exchange.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/eap_peer/extr_eap_pwd.c_eap_pwd_perform_commit_exchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.eap_sm = type { i32 }
%struct.eap_pwd_data = type { i64, i32, i64*, i64, i32*, %struct.crypto_ec_point*, %struct.TYPE_5__*, i8*, i8*, %struct.crypto_bignum*, i32, %struct.crypto_bignum*, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_ec_point = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.crypto_ec_point* }
%struct.crypto_bignum = type { i32 }
%struct.eap_method_ret = type { i8* }
%struct.wpabuf = type { i32 }

@PWD_Commit_Req = common dso_local global i64 0, align 8
@TRUE = common dso_local global i8* null, align 8
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"EAP-PWD (client): uninitialized EAP-pwd group\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"EAP-pwd commit request, password prep is MS\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [59 x i8] c"EAP-pwd: Unexpected Commit payload length %u (expected %u)\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"EAP-pwd commit request, password prep is salted sha1\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"EAP-pwd: Invalid Salt-len\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"EAP-pwd: Unsalted password\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"EAP-pwd: Salt\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"EAP-pwd: sha1 hashed %d byte salt with password\00", align 1
@SHA1_MAC_LEN = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [25 x i8] c"EAP-pwd: Salted password\00", align 1
@.str.9 = private unnamed_addr constant [55 x i8] c"EAP-pwd commit request, password prep is salted sha256\00", align 1
@SHA256_MAC_LEN = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [46 x i8] c"EAP-pwd commit request, password prep is NONE\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"EAP-PWD: Unhashed password not available\00", align 1
@.str.12 = private unnamed_addr constant [65 x i8] c"EAP-pwd: Unsupported password pre-processing technique (Prep=%u)\00", align 1
@.str.13 = private unnamed_addr constant [38 x i8] c"EAP-PWD (peer): unable to compute PWE\00", align 1
@.str.14 = private unnamed_addr constant [39 x i8] c"EAP-PWD (peer): computed %d bit PWE...\00", align 1
@.str.15 = private unnamed_addr constant [39 x i8] c"EAP-PWD (peer): scalar allocation fail\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"EAP-PWD (peer): element allocation fail\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"EAP-PWD (peer): element inversion fail\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"EAP-PWD (peer): peer data allocation fail\00", align 1
@.str.19 = private unnamed_addr constant [42 x i8] c"EAP-PWD (peer): setting peer element fail\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"EAP-PWD (peer): setting peer scalar fail\00", align 1
@.str.21 = private unnamed_addr constant [42 x i8] c"EAP-PWD (peer): computing shared key fail\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"EAP-PWD (peer): shared key point is at infinity!\0A\00", align 1
@.str.23 = private unnamed_addr constant [59 x i8] c"EAP-PWD (peer): unable to extract shared secret from point\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"EAP-PWD (peer): point assignment fail\00", align 1
@PWD_Confirm_Req = common dso_local global i32 0, align 4
@MSG_ERROR = common dso_local global i32 0, align 4
@SHA512_MAC_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.eap_sm*, %struct.eap_pwd_data*, %struct.eap_method_ret*, %struct.wpabuf*, i64*, i64)* @eap_pwd_perform_commit_exchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @eap_pwd_perform_commit_exchange(%struct.eap_sm* %0, %struct.eap_pwd_data* %1, %struct.eap_method_ret* %2, %struct.wpabuf* %3, i64* %4, i64 %5) #0 {
  %7 = alloca %struct.eap_sm*, align 8
  %8 = alloca %struct.eap_pwd_data*, align 8
  %9 = alloca %struct.eap_method_ret*, align 8
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.crypto_ec_point*, align 8
  %14 = alloca %struct.crypto_bignum*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca [16 x i64], align 16
  %23 = alloca [2 x i64*], align 16
  %24 = alloca [2 x i64], align 16
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca [64 x i64], align 16
  %28 = alloca i32, align 4
  %29 = alloca [16 x i64], align 16
  store %struct.eap_sm* %0, %struct.eap_sm** %7, align 8
  store %struct.eap_pwd_data* %1, %struct.eap_pwd_data** %8, align 8
  store %struct.eap_method_ret* %2, %struct.eap_method_ret** %9, align 8
  store %struct.wpabuf* %3, %struct.wpabuf** %10, align 8
  store i64* %4, i64** %11, align 8
  store i64 %5, i64* %12, align 8
  store %struct.crypto_ec_point* null, %struct.crypto_ec_point** %13, align 8
  store %struct.crypto_bignum* null, %struct.crypto_bignum** %14, align 8
  %30 = load i64*, i64** %11, align 8
  store i64* %30, i64** %15, align 8
  %31 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %32 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PWD_Commit_Req, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %6
  %37 = load i8*, i8** @TRUE, align 8
  %38 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %39 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  br label %637

40:                                               ; preds = %6
  %41 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %42 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %41, i32 0, i32 6
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = icmp ne %struct.TYPE_5__* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %40
  %46 = load i32, i32* @MSG_DEBUG, align 4
  %47 = call i32 (i32, i8*, ...) @wpa_printf(i32 %46, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %48 = load i8*, i8** @TRUE, align 8
  %49 = load %struct.eap_method_ret*, %struct.eap_method_ret** %9, align 8
  %50 = getelementptr inbounds %struct.eap_method_ret, %struct.eap_method_ret* %49, i32 0, i32 0
  store i8* %48, i8** %50, align 8
  br label %637

51:                                               ; preds = %40
  %52 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %53 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %52, i32 0, i32 6
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @crypto_ec_prime_len(i32 %56)
  store i64 %57, i64* %18, align 8
  %58 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %59 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %58, i32 0, i32 6
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @crypto_ec_order_len(i32 %62)
  store i64 %63, i64* %19, align 8
  %64 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %65 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  switch i32 %66, label %313 [
    i32 132, label %67
    i32 130, label %124
    i32 129, label %202
    i32 131, label %276
  ]

67:                                               ; preds = %51
  %68 = load i32, i32* @MSG_DEBUG, align 4
  %69 = call i32 (i32, i8*, ...) @wpa_printf(i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i64, i64* %12, align 8
  %71 = load i64, i64* %18, align 8
  %72 = mul i64 2, %71
  %73 = load i64, i64* %19, align 8
  %74 = add i64 %72, %73
  %75 = icmp ne i64 %70, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %67
  %77 = load i32, i32* @MSG_INFO, align 4
  %78 = load i64, i64* %12, align 8
  %79 = trunc i64 %78 to i32
  %80 = load i64, i64* %18, align 8
  %81 = mul i64 2, %80
  %82 = load i64, i64* %19, align 8
  %83 = add i64 %81, %82
  %84 = trunc i64 %83 to i32
  %85 = call i32 (i32, i8*, ...) @wpa_printf(i32 %77, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %84)
  br label %637

86:                                               ; preds = %67
  %87 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %88 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %87, i32 0, i32 18
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %93 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = getelementptr inbounds [16 x i64], [16 x i64]* %22, i64 0, i64 0
  %96 = call i32 @hash_nt_password_hash(i64* %94, i64* %95)
  store i32 %96, i32* %28, align 4
  br label %115

97:                                               ; preds = %86
  %98 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %99 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %98, i32 0, i32 2
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %102 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds [16 x i64], [16 x i64]* %29, i64 0, i64 0
  %105 = call i32 @nt_password_hash(i64* %100, i64 %103, i64* %104)
  store i32 %105, i32* %28, align 4
  %106 = load i32, i32* %28, align 4
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %97
  %109 = getelementptr inbounds [16 x i64], [16 x i64]* %29, i64 0, i64 0
  %110 = getelementptr inbounds [16 x i64], [16 x i64]* %22, i64 0, i64 0
  %111 = call i32 @hash_nt_password_hash(i64* %109, i64* %110)
  store i32 %111, i32* %28, align 4
  br label %112

112:                                              ; preds = %108, %97
  %113 = getelementptr inbounds [16 x i64], [16 x i64]* %29, i64 0, i64 0
  %114 = call i32 @forced_memzero(i64* %113, i32 128)
  br label %115

115:                                              ; preds = %112, %91
  %116 = load i32, i32* %28, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %120 = load i32, i32* @FAILURE, align 4
  %121 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %119, i32 %120)
  br label %654

122:                                              ; preds = %115
  %123 = getelementptr inbounds [16 x i64], [16 x i64]* %22, i64 0, i64 0
  store i64* %123, i64** %20, align 8
  store i64 128, i64* %21, align 8
  br label %322

124:                                              ; preds = %51
  %125 = load i32, i32* @MSG_DEBUG, align 4
  %126 = call i32 (i32, i8*, ...) @wpa_printf(i32 %125, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %127 = load i64, i64* %12, align 8
  %128 = icmp ult i64 %127, 1
  br i1 %128, label %133, label %129

129:                                              ; preds = %124
  %130 = load i64*, i64** %15, align 8
  %131 = load i64, i64* %130, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129, %124
  %134 = load i32, i32* @MSG_DEBUG, align 4
  %135 = call i32 (i32, i8*, ...) @wpa_printf(i32 %134, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %637

136:                                              ; preds = %129
  %137 = load i64*, i64** %15, align 8
  %138 = getelementptr inbounds i64, i64* %137, i32 1
  store i64* %138, i64** %15, align 8
  %139 = load i64, i64* %137, align 8
  store i64 %139, i64* %26, align 8
  %140 = load i64, i64* %26, align 8
  %141 = add i64 1, %140
  %142 = load i64, i64* %18, align 8
  %143 = mul i64 2, %142
  %144 = add i64 %141, %143
  %145 = load i64, i64* %19, align 8
  %146 = add i64 %144, %145
  store i64 %146, i64* %25, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load i64, i64* %25, align 8
  %149 = icmp ne i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %136
  %151 = load i32, i32* @MSG_INFO, align 4
  %152 = load i64, i64* %12, align 8
  %153 = trunc i64 %152 to i32
  %154 = load i64, i64* %25, align 8
  %155 = trunc i64 %154 to i32
  %156 = call i32 (i32, i8*, ...) @wpa_printf(i32 %151, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %153, i32 %155)
  br label %637

157:                                              ; preds = %136
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %160 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %159, i32 0, i32 2
  %161 = load i64*, i64** %160, align 8
  %162 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %163 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @wpa_hexdump_key(i32 %158, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64* %161, i64 %164)
  %166 = load i32, i32* @MSG_DEBUG, align 4
  %167 = load i64*, i64** %15, align 8
  %168 = load i64, i64* %26, align 8
  %169 = call i32 @wpa_hexdump(i32 %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64* %167, i64 %168)
  %170 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %171 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %170, i32 0, i32 2
  %172 = load i64*, i64** %171, align 8
  %173 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 0
  store i64* %172, i64** %173, align 16
  %174 = load i64*, i64** %15, align 8
  %175 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 1
  store i64* %174, i64** %175, align 8
  %176 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %177 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %176, i32 0, i32 3
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0
  store i64 %178, i64* %179, align 16
  %180 = load i64, i64* %26, align 8
  %181 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 1
  store i64 %180, i64* %181, align 8
  %182 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 0
  %183 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0
  %184 = getelementptr inbounds [64 x i64], [64 x i64]* %27, i64 0, i64 0
  %185 = call i32 @sha1_vector(i32 2, i64** %182, i64* %183, i64* %184)
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %157
  br label %637

188:                                              ; preds = %157
  %189 = load i32, i32* @MSG_DEBUG, align 4
  %190 = load i64, i64* %26, align 8
  %191 = trunc i64 %190 to i32
  %192 = call i32 (i32, i8*, ...) @wpa_printf(i32 %189, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0), i32 %191)
  %193 = load i64, i64* %26, align 8
  %194 = load i64*, i64** %15, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 %193
  store i64* %195, i64** %15, align 8
  %196 = getelementptr inbounds [64 x i64], [64 x i64]* %27, i64 0, i64 0
  store i64* %196, i64** %20, align 8
  %197 = load i64, i64* @SHA1_MAC_LEN, align 8
  store i64 %197, i64* %21, align 8
  %198 = load i32, i32* @MSG_DEBUG, align 4
  %199 = load i64*, i64** %20, align 8
  %200 = load i64, i64* %21, align 8
  %201 = call i32 @wpa_hexdump_key(i32 %198, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64* %199, i64 %200)
  br label %322

202:                                              ; preds = %51
  %203 = load i32, i32* @MSG_DEBUG, align 4
  %204 = call i32 (i32, i8*, ...) @wpa_printf(i32 %203, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.9, i64 0, i64 0))
  %205 = load i64, i64* %12, align 8
  %206 = icmp ult i64 %205, 1
  br i1 %206, label %211, label %207

207:                                              ; preds = %202
  %208 = load i64*, i64** %15, align 8
  %209 = load i64, i64* %208, align 8
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %214

211:                                              ; preds = %207, %202
  %212 = load i32, i32* @MSG_DEBUG, align 4
  %213 = call i32 (i32, i8*, ...) @wpa_printf(i32 %212, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %637

214:                                              ; preds = %207
  %215 = load i64*, i64** %15, align 8
  %216 = getelementptr inbounds i64, i64* %215, i32 1
  store i64* %216, i64** %15, align 8
  %217 = load i64, i64* %215, align 8
  store i64 %217, i64* %26, align 8
  %218 = load i64, i64* %26, align 8
  %219 = add i64 1, %218
  %220 = load i64, i64* %18, align 8
  %221 = mul i64 2, %220
  %222 = add i64 %219, %221
  %223 = load i64, i64* %19, align 8
  %224 = add i64 %222, %223
  store i64 %224, i64* %25, align 8
  %225 = load i64, i64* %12, align 8
  %226 = load i64, i64* %25, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %235

228:                                              ; preds = %214
  %229 = load i32, i32* @MSG_INFO, align 4
  %230 = load i64, i64* %12, align 8
  %231 = trunc i64 %230 to i32
  %232 = load i64, i64* %25, align 8
  %233 = trunc i64 %232 to i32
  %234 = call i32 (i32, i8*, ...) @wpa_printf(i32 %229, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %231, i32 %233)
  br label %637

235:                                              ; preds = %214
  %236 = load i32, i32* @MSG_DEBUG, align 4
  %237 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %238 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %237, i32 0, i32 2
  %239 = load i64*, i64** %238, align 8
  %240 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %241 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %240, i32 0, i32 3
  %242 = load i64, i64* %241, align 8
  %243 = call i32 @wpa_hexdump_key(i32 %236, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i64* %239, i64 %242)
  %244 = load i32, i32* @MSG_DEBUG, align 4
  %245 = load i64*, i64** %15, align 8
  %246 = load i64, i64* %26, align 8
  %247 = call i32 @wpa_hexdump(i32 %244, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i64* %245, i64 %246)
  %248 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %249 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %248, i32 0, i32 2
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 0
  store i64* %250, i64** %251, align 16
  %252 = load i64*, i64** %15, align 8
  %253 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 1
  store i64* %252, i64** %253, align 8
  %254 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %255 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0
  store i64 %256, i64* %257, align 16
  %258 = load i64, i64* %26, align 8
  %259 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 1
  store i64 %258, i64* %259, align 8
  %260 = getelementptr inbounds [2 x i64*], [2 x i64*]* %23, i64 0, i64 0
  %261 = getelementptr inbounds [2 x i64], [2 x i64]* %24, i64 0, i64 0
  %262 = getelementptr inbounds [64 x i64], [64 x i64]* %27, i64 0, i64 0
  %263 = call i32 @sha256_vector(i32 2, i64** %260, i64* %261, i64* %262)
  %264 = icmp slt i32 %263, 0
  br i1 %264, label %265, label %266

265:                                              ; preds = %235
  br label %637

266:                                              ; preds = %235
  %267 = load i64, i64* %26, align 8
  %268 = load i64*, i64** %15, align 8
  %269 = getelementptr inbounds i64, i64* %268, i64 %267
  store i64* %269, i64** %15, align 8
  %270 = getelementptr inbounds [64 x i64], [64 x i64]* %27, i64 0, i64 0
  store i64* %270, i64** %20, align 8
  %271 = load i64, i64* @SHA256_MAC_LEN, align 8
  store i64 %271, i64* %21, align 8
  %272 = load i32, i32* @MSG_DEBUG, align 4
  %273 = load i64*, i64** %20, align 8
  %274 = load i64, i64* %21, align 8
  %275 = call i32 @wpa_hexdump_key(i32 %272, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i64* %273, i64 %274)
  br label %322

276:                                              ; preds = %51
  %277 = load i32, i32* @MSG_DEBUG, align 4
  %278 = call i32 (i32, i8*, ...) @wpa_printf(i32 %277, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %279 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %280 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %279, i32 0, i32 18
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %289

283:                                              ; preds = %276
  %284 = load i32, i32* @MSG_DEBUG, align 4
  %285 = call i32 (i32, i8*, ...) @wpa_printf(i32 %284, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0))
  %286 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %287 = load i32, i32* @FAILURE, align 4
  %288 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %286, i32 %287)
  br label %654

289:                                              ; preds = %276
  %290 = load i64, i64* %12, align 8
  %291 = load i64, i64* %18, align 8
  %292 = mul i64 2, %291
  %293 = load i64, i64* %19, align 8
  %294 = add i64 %292, %293
  %295 = icmp ne i64 %290, %294
  br i1 %295, label %296, label %306

296:                                              ; preds = %289
  %297 = load i32, i32* @MSG_INFO, align 4
  %298 = load i64, i64* %12, align 8
  %299 = trunc i64 %298 to i32
  %300 = load i64, i64* %18, align 8
  %301 = mul i64 2, %300
  %302 = load i64, i64* %19, align 8
  %303 = add i64 %301, %302
  %304 = trunc i64 %303 to i32
  %305 = call i32 (i32, i8*, ...) @wpa_printf(i32 %297, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %299, i32 %304)
  br label %637

306:                                              ; preds = %289
  %307 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %308 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %307, i32 0, i32 2
  %309 = load i64*, i64** %308, align 8
  store i64* %309, i64** %20, align 8
  %310 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %311 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %310, i32 0, i32 3
  %312 = load i64, i64* %311, align 8
  store i64 %312, i64* %21, align 8
  br label %322

313:                                              ; preds = %51
  %314 = load i32, i32* @MSG_DEBUG, align 4
  %315 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %316 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 8
  %318 = call i32 (i32, i8*, ...) @wpa_printf(i32 %314, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.12, i64 0, i64 0), i32 %317)
  %319 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %320 = load i32, i32* @FAILURE, align 4
  %321 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %319, i32 %320)
  br label %654

322:                                              ; preds = %306, %266, %188, %122
  %323 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %324 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %323, i32 0, i32 6
  %325 = load %struct.TYPE_5__*, %struct.TYPE_5__** %324, align 8
  %326 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %327 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %326, i32 0, i32 17
  %328 = load i32, i32* %327, align 4
  %329 = load i64*, i64** %20, align 8
  %330 = load i64, i64* %21, align 8
  %331 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %332 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %331, i32 0, i32 16
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %335 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %334, i32 0, i32 15
  %336 = load i32, i32* %335, align 4
  %337 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %338 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %337, i32 0, i32 14
  %339 = load i32, i32* %338, align 8
  %340 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %341 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %340, i32 0, i32 13
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %344 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %343, i32 0, i32 12
  %345 = load i32, i32* %344, align 8
  %346 = call i32 @compute_password_element(%struct.TYPE_5__* %325, i32 %328, i64* %329, i64 %330, i32 %333, i32 %336, i32 %339, i32 %342, i32 %345)
  store i32 %346, i32* %28, align 4
  %347 = getelementptr inbounds [16 x i64], [16 x i64]* %22, i64 0, i64 0
  %348 = call i32 @forced_memzero(i64* %347, i32 128)
  %349 = getelementptr inbounds [64 x i64], [64 x i64]* %27, i64 0, i64 0
  %350 = call i32 @forced_memzero(i64* %349, i32 512)
  %351 = load i32, i32* %28, align 4
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %359

353:                                              ; preds = %322
  %354 = load i32, i32* @MSG_INFO, align 4
  %355 = call i32 (i32, i8*, ...) @wpa_printf(i32 %354, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.13, i64 0, i64 0))
  %356 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %357 = load i32, i32* @FAILURE, align 4
  %358 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %356, i32 %357)
  br label %654

359:                                              ; preds = %322
  %360 = load i32, i32* @MSG_DEBUG, align 4
  %361 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %362 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %361, i32 0, i32 6
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %362, align 8
  %364 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %363, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = call i64 @crypto_ec_prime_len_bits(i32 %365)
  %367 = trunc i64 %366 to i32
  %368 = call i32 (i32, i8*, ...) @wpa_printf(i32 %360, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0), i32 %367)
  %369 = call i8* (...) @crypto_bignum_init()
  %370 = bitcast i8* %369 to %struct.crypto_bignum*
  %371 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %372 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %371, i32 0, i32 9
  store %struct.crypto_bignum* %370, %struct.crypto_bignum** %372, align 8
  %373 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %374 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %373, i32 0, i32 6
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %374, align 8
  %376 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %375, i32 0, i32 0
  %377 = load i32, i32* %376, align 8
  %378 = call i8* @crypto_ec_point_init(i32 %377)
  %379 = bitcast i8* %378 to %struct.crypto_ec_point*
  %380 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %381 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %380, i32 0, i32 5
  store %struct.crypto_ec_point* %379, %struct.crypto_ec_point** %381, align 8
  %382 = call i8* (...) @crypto_bignum_init()
  %383 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %384 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %383, i32 0, i32 7
  store i8* %382, i8** %384, align 8
  %385 = call i8* (...) @crypto_bignum_init()
  %386 = bitcast i8* %385 to %struct.crypto_bignum*
  store %struct.crypto_bignum* %386, %struct.crypto_bignum** %14, align 8
  %387 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %388 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %387, i32 0, i32 9
  %389 = load %struct.crypto_bignum*, %struct.crypto_bignum** %388, align 8
  %390 = icmp ne %struct.crypto_bignum* %389, null
  br i1 %390, label %391, label %404

391:                                              ; preds = %359
  %392 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %393 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %392, i32 0, i32 5
  %394 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %393, align 8
  %395 = icmp ne %struct.crypto_ec_point* %394, null
  br i1 %395, label %396, label %404

396:                                              ; preds = %391
  %397 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %398 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %397, i32 0, i32 7
  %399 = load i8*, i8** %398, align 8
  %400 = icmp ne i8* %399, null
  br i1 %400, label %401, label %404

401:                                              ; preds = %396
  %402 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %403 = icmp ne %struct.crypto_bignum* %402, null
  br i1 %403, label %407, label %404

404:                                              ; preds = %401, %396, %391, %359
  %405 = load i32, i32* @MSG_INFO, align 4
  %406 = call i32 (i32, i8*, ...) @wpa_printf(i32 %405, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.15, i64 0, i64 0))
  br label %637

407:                                              ; preds = %401
  %408 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %409 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %408, i32 0, i32 6
  %410 = load %struct.TYPE_5__*, %struct.TYPE_5__** %409, align 8
  %411 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %412 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %411, i32 0, i32 9
  %413 = load %struct.crypto_bignum*, %struct.crypto_bignum** %412, align 8
  %414 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %415 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %416 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %415, i32 0, i32 7
  %417 = load i8*, i8** %416, align 8
  %418 = call i64 @eap_pwd_get_rand_mask(%struct.TYPE_5__* %410, %struct.crypto_bignum* %413, %struct.crypto_bignum* %414, i8* %417)
  %419 = icmp slt i64 %418, 0
  br i1 %419, label %420, label %421

420:                                              ; preds = %407
  br label %637

421:                                              ; preds = %407
  %422 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %423 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %422, i32 0, i32 6
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %423, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 0
  %426 = load i32, i32* %425, align 8
  %427 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %428 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %427, i32 0, i32 6
  %429 = load %struct.TYPE_5__*, %struct.TYPE_5__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %429, i32 0, i32 1
  %431 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %430, align 8
  %432 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %433 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %434 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %433, i32 0, i32 5
  %435 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %434, align 8
  %436 = call i64 @crypto_ec_point_mul(i32 %426, %struct.crypto_ec_point* %431, %struct.crypto_bignum* %432, %struct.crypto_ec_point* %435)
  %437 = icmp slt i64 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %421
  %439 = load i32, i32* @MSG_INFO, align 4
  %440 = call i32 (i32, i8*, ...) @wpa_printf(i32 %439, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.16, i64 0, i64 0))
  %441 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %442 = load i32, i32* @FAILURE, align 4
  %443 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %441, i32 %442)
  br label %637

444:                                              ; preds = %421
  %445 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %446 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %445, i32 0, i32 6
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %446, align 8
  %448 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 8
  %450 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %451 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %450, i32 0, i32 5
  %452 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %451, align 8
  %453 = call i64 @crypto_ec_point_invert(i32 %449, %struct.crypto_ec_point* %452)
  %454 = icmp slt i64 %453, 0
  br i1 %454, label %455, label %458

455:                                              ; preds = %444
  %456 = load i32, i32* @MSG_INFO, align 4
  %457 = call i32 (i32, i8*, ...) @wpa_printf(i32 %456, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %637

458:                                              ; preds = %444
  %459 = call i8* (...) @crypto_bignum_init()
  %460 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %461 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %460, i32 0, i32 8
  store i8* %459, i8** %461, align 8
  %462 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %463 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %462, i32 0, i32 6
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %463, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 0
  %466 = load i32, i32* %465, align 8
  %467 = call i8* @crypto_ec_point_init(i32 %466)
  %468 = bitcast i8* %467 to %struct.crypto_ec_point*
  store %struct.crypto_ec_point* %468, %struct.crypto_ec_point** %13, align 8
  %469 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %470 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %469, i32 0, i32 8
  %471 = load i8*, i8** %470, align 8
  %472 = icmp ne i8* %471, null
  br i1 %472, label %473, label %476

473:                                              ; preds = %458
  %474 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %475 = icmp ne %struct.crypto_ec_point* %474, null
  br i1 %475, label %479, label %476

476:                                              ; preds = %473, %458
  %477 = load i32, i32* @MSG_INFO, align 4
  %478 = call i32 (i32, i8*, ...) @wpa_printf(i32 %477, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.18, i64 0, i64 0))
  br label %637

479:                                              ; preds = %473
  %480 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %481 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %480, i32 0, i32 6
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %481, align 8
  %483 = load i64*, i64** %15, align 8
  %484 = call i32 @eap_pwd_get_element(%struct.TYPE_5__* %482, i64* %483)
  %485 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %486 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %485, i32 0, i32 10
  store i32 %484, i32* %486, align 8
  %487 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %488 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %487, i32 0, i32 10
  %489 = load i32, i32* %488, align 8
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %494, label %491

491:                                              ; preds = %479
  %492 = load i32, i32* @MSG_INFO, align 4
  %493 = call i32 (i32, i8*, ...) @wpa_printf(i32 %492, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.19, i64 0, i64 0))
  br label %637

494:                                              ; preds = %479
  %495 = load i64, i64* %18, align 8
  %496 = mul i64 %495, 2
  %497 = load i64*, i64** %15, align 8
  %498 = getelementptr inbounds i64, i64* %497, i64 %496
  store i64* %498, i64** %15, align 8
  %499 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %500 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %499, i32 0, i32 6
  %501 = load %struct.TYPE_5__*, %struct.TYPE_5__** %500, align 8
  %502 = load i64*, i64** %15, align 8
  %503 = call %struct.crypto_bignum* @eap_pwd_get_scalar(%struct.TYPE_5__* %501, i64* %502)
  %504 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %505 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %504, i32 0, i32 11
  store %struct.crypto_bignum* %503, %struct.crypto_bignum** %505, align 8
  %506 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %507 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %506, i32 0, i32 11
  %508 = load %struct.crypto_bignum*, %struct.crypto_bignum** %507, align 8
  %509 = icmp ne %struct.crypto_bignum* %508, null
  br i1 %509, label %513, label %510

510:                                              ; preds = %494
  %511 = load i32, i32* @MSG_INFO, align 4
  %512 = call i32 (i32, i8*, ...) @wpa_printf(i32 %511, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0))
  br label %637

513:                                              ; preds = %494
  %514 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %515 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %514, i32 0, i32 6
  %516 = load %struct.TYPE_5__*, %struct.TYPE_5__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 8
  %519 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %520 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %519, i32 0, i32 6
  %521 = load %struct.TYPE_5__*, %struct.TYPE_5__** %520, align 8
  %522 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %521, i32 0, i32 1
  %523 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %522, align 8
  %524 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %525 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %524, i32 0, i32 11
  %526 = load %struct.crypto_bignum*, %struct.crypto_bignum** %525, align 8
  %527 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %528 = call i64 @crypto_ec_point_mul(i32 %518, %struct.crypto_ec_point* %523, %struct.crypto_bignum* %526, %struct.crypto_ec_point* %527)
  %529 = icmp slt i64 %528, 0
  br i1 %529, label %556, label %530

530:                                              ; preds = %513
  %531 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %532 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %531, i32 0, i32 6
  %533 = load %struct.TYPE_5__*, %struct.TYPE_5__** %532, align 8
  %534 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %533, i32 0, i32 0
  %535 = load i32, i32* %534, align 8
  %536 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %537 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %538 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %537, i32 0, i32 10
  %539 = load i32, i32* %538, align 8
  %540 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %541 = call i64 @crypto_ec_point_add(i32 %535, %struct.crypto_ec_point* %536, i32 %539, %struct.crypto_ec_point* %540)
  %542 = icmp slt i64 %541, 0
  br i1 %542, label %556, label %543

543:                                              ; preds = %530
  %544 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %545 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %544, i32 0, i32 6
  %546 = load %struct.TYPE_5__*, %struct.TYPE_5__** %545, align 8
  %547 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %550 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %551 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %550, i32 0, i32 9
  %552 = load %struct.crypto_bignum*, %struct.crypto_bignum** %551, align 8
  %553 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %554 = call i64 @crypto_ec_point_mul(i32 %548, %struct.crypto_ec_point* %549, %struct.crypto_bignum* %552, %struct.crypto_ec_point* %553)
  %555 = icmp slt i64 %554, 0
  br i1 %555, label %556, label %559

556:                                              ; preds = %543, %530, %513
  %557 = load i32, i32* @MSG_INFO, align 4
  %558 = call i32 (i32, i8*, ...) @wpa_printf(i32 %557, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.21, i64 0, i64 0))
  br label %637

559:                                              ; preds = %543
  %560 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %561 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %560, i32 0, i32 6
  %562 = load %struct.TYPE_5__*, %struct.TYPE_5__** %561, align 8
  %563 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %562, i32 0, i32 0
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %566 = call i64 @crypto_ec_point_is_at_infinity(i32 %564, %struct.crypto_ec_point* %565)
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %571

568:                                              ; preds = %559
  %569 = load i32, i32* @MSG_INFO, align 4
  %570 = call i32 (i32, i8*, ...) @wpa_printf(i32 %569, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i64 0, i64 0))
  br label %637

571:                                              ; preds = %559
  %572 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %573 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %572, i32 0, i32 6
  %574 = load %struct.TYPE_5__*, %struct.TYPE_5__** %573, align 8
  %575 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i32 0, i32 0
  %576 = load i32, i32* %575, align 8
  %577 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %578 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %579 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %578, i32 0, i32 8
  %580 = load i8*, i8** %579, align 8
  %581 = call i64 @crypto_ec_point_x(i32 %576, %struct.crypto_ec_point* %577, i8* %580)
  %582 = icmp slt i64 %581, 0
  br i1 %582, label %583, label %586

583:                                              ; preds = %571
  %584 = load i32, i32* @MSG_INFO, align 4
  %585 = call i32 (i32, i8*, ...) @wpa_printf(i32 %584, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.23, i64 0, i64 0))
  br label %637

586:                                              ; preds = %571
  %587 = load i64, i64* %18, align 8
  %588 = mul i64 2, %587
  %589 = load i64, i64* %19, align 8
  %590 = add i64 %588, %589
  %591 = trunc i64 %590 to i32
  %592 = call i32* @wpabuf_alloc(i32 %591)
  %593 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %594 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %593, i32 0, i32 4
  store i32* %592, i32** %594, align 8
  %595 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %596 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %595, i32 0, i32 4
  %597 = load i32*, i32** %596, align 8
  %598 = icmp eq i32* %597, null
  br i1 %598, label %599, label %600

599:                                              ; preds = %586
  br label %637

600:                                              ; preds = %586
  %601 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %602 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %601, i32 0, i32 4
  %603 = load i32*, i32** %602, align 8
  %604 = load i64, i64* %18, align 8
  %605 = mul i64 2, %604
  %606 = call i64* @wpabuf_put(i32* %603, i64 %605)
  store i64* %606, i64** %17, align 8
  %607 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %608 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %607, i32 0, i32 4
  %609 = load i32*, i32** %608, align 8
  %610 = load i64, i64* %19, align 8
  %611 = call i64* @wpabuf_put(i32* %609, i64 %610)
  store i64* %611, i64** %16, align 8
  %612 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %613 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %612, i32 0, i32 7
  %614 = load i8*, i8** %613, align 8
  %615 = load i64*, i64** %16, align 8
  %616 = load i64, i64* %19, align 8
  %617 = load i64, i64* %19, align 8
  %618 = call i32 @crypto_bignum_to_bin(i8* %614, i64* %615, i64 %616, i64 %617)
  %619 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %620 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %619, i32 0, i32 6
  %621 = load %struct.TYPE_5__*, %struct.TYPE_5__** %620, align 8
  %622 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %621, i32 0, i32 0
  %623 = load i32, i32* %622, align 8
  %624 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %625 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %624, i32 0, i32 5
  %626 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %625, align 8
  %627 = load i64*, i64** %17, align 8
  %628 = load i64*, i64** %17, align 8
  %629 = load i64, i64* %18, align 8
  %630 = getelementptr inbounds i64, i64* %628, i64 %629
  %631 = call i64 @crypto_ec_point_to_bin(i32 %623, %struct.crypto_ec_point* %626, i64* %627, i64* %630)
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %636

633:                                              ; preds = %600
  %634 = load i32, i32* @MSG_INFO, align 4
  %635 = call i32 (i32, i8*, ...) @wpa_printf(i32 %634, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.24, i64 0, i64 0))
  br label %637

636:                                              ; preds = %600
  br label %637

637:                                              ; preds = %636, %633, %599, %583, %568, %556, %510, %491, %476, %455, %438, %420, %404, %296, %265, %228, %211, %187, %150, %133, %76, %45, %36
  %638 = load %struct.crypto_bignum*, %struct.crypto_bignum** %14, align 8
  %639 = call i32 @crypto_bignum_deinit(%struct.crypto_bignum* %638, i32 1)
  %640 = load %struct.crypto_ec_point*, %struct.crypto_ec_point** %13, align 8
  %641 = call i32 @crypto_ec_point_deinit(%struct.crypto_ec_point* %640, i32 1)
  %642 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %643 = getelementptr inbounds %struct.eap_pwd_data, %struct.eap_pwd_data* %642, i32 0, i32 4
  %644 = load i32*, i32** %643, align 8
  %645 = icmp eq i32* %644, null
  br i1 %645, label %646, label %650

646:                                              ; preds = %637
  %647 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %648 = load i32, i32* @FAILURE, align 4
  %649 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %647, i32 %648)
  br label %654

650:                                              ; preds = %637
  %651 = load %struct.eap_pwd_data*, %struct.eap_pwd_data** %8, align 8
  %652 = load i32, i32* @PWD_Confirm_Req, align 4
  %653 = call i32 @eap_pwd_state(%struct.eap_pwd_data* %651, i32 %652)
  br label %654

654:                                              ; preds = %118, %283, %313, %353, %650, %646
  ret void
}

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i64 @crypto_ec_prime_len(i32) #1

declare dso_local i64 @crypto_ec_order_len(i32) #1

declare dso_local i32 @hash_nt_password_hash(i64*, i64*) #1

declare dso_local i32 @nt_password_hash(i64*, i64, i64*) #1

declare dso_local i32 @forced_memzero(i64*, i32) #1

declare dso_local i32 @eap_pwd_state(%struct.eap_pwd_data*, i32) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @sha1_vector(i32, i64**, i64*, i64*) #1

declare dso_local i32 @sha256_vector(i32, i64**, i64*, i64*) #1

declare dso_local i32 @compute_password_element(%struct.TYPE_5__*, i32, i64*, i64, i32, i32, i32, i32, i32) #1

declare dso_local i64 @crypto_ec_prime_len_bits(i32) #1

declare dso_local i8* @crypto_bignum_init(...) #1

declare dso_local i8* @crypto_ec_point_init(i32) #1

declare dso_local i64 @eap_pwd_get_rand_mask(%struct.TYPE_5__*, %struct.crypto_bignum*, %struct.crypto_bignum*, i8*) #1

declare dso_local i64 @crypto_ec_point_mul(i32, %struct.crypto_ec_point*, %struct.crypto_bignum*, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_invert(i32, %struct.crypto_ec_point*) #1

declare dso_local i32 @eap_pwd_get_element(%struct.TYPE_5__*, i64*) #1

declare dso_local %struct.crypto_bignum* @eap_pwd_get_scalar(%struct.TYPE_5__*, i64*) #1

declare dso_local i64 @crypto_ec_point_add(i32, %struct.crypto_ec_point*, i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_is_at_infinity(i32, %struct.crypto_ec_point*) #1

declare dso_local i64 @crypto_ec_point_x(i32, %struct.crypto_ec_point*, i8*) #1

declare dso_local i32* @wpabuf_alloc(i32) #1

declare dso_local i64* @wpabuf_put(i32*, i64) #1

declare dso_local i32 @crypto_bignum_to_bin(i8*, i64*, i64, i64) #1

declare dso_local i64 @crypto_ec_point_to_bin(i32, %struct.crypto_ec_point*, i64*, i64*) #1

declare dso_local i32 @crypto_bignum_deinit(%struct.crypto_bignum*, i32) #1

declare dso_local i32 @crypto_ec_point_deinit(%struct.crypto_ec_point*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
