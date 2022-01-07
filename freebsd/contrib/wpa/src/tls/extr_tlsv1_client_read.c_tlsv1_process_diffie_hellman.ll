; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tlsv1_process_diffie_hellman.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_read.c_tlsv1_process_diffie_hellman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, i32*, i64, i32*, i64, i32*, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"TLSv1: Invalid dh_p length %u\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"TLSv1: Reject under 768-bit DH prime (insecure; only %u bits)\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"TLSv1: Rejected DH prime\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"TLSv1: DH p (prime)\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"TLSv1: DH g (generator)\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Ys (server's public value)\00", align 1
@TLS_KEY_X_DHE_RSA = common dso_local global i64 0, align 8
@TLS_VERSION_1_2 = common dso_local global i64 0, align 8
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"TLSv1: ServerKeyExchange hash\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"TLSv1: Processing DH params failed\00", align 1
@TLS_HASH_ALG_SHA256 = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA384 = common dso_local global i32 0, align 4
@TLS_HASH_ALG_SHA512 = common dso_local global i32 0, align 4
@TLS_SIGN_ALG_RSA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i32*, i64, i64)* @tlsv1_process_diffie_hellman to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_process_diffie_hellman(%struct.tlsv1_client* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_client*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca [64 x i32], align 16
  %18 = alloca i32, align 4
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %20 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %19)
  %21 = load i32*, i32** %7, align 8
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32*, i32** %10, align 8
  %27 = ptrtoint i32* %25 to i64
  %28 = ptrtoint i32* %26 to i64
  %29 = sub i64 %27, %28
  %30 = sdiv exact i64 %29, 4
  %31 = icmp slt i64 %30, 3
  br i1 %31, label %32, label %33

32:                                               ; preds = %4
  br label %296

33:                                               ; preds = %4
  %34 = load i32*, i32** %10, align 8
  store i32* %34, i32** %12, align 8
  %35 = load i32*, i32** %10, align 8
  %36 = call i64 @WPA_GET_BE16(i32* %35)
  store i64 %36, i64* %16, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32* %38, i32** %10, align 8
  %39 = load i64, i64* %16, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %33
  %42 = load i64, i64* %16, align 8
  %43 = load i32*, i32** %11, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = ptrtoint i32* %43 to i64
  %46 = ptrtoint i32* %44 to i64
  %47 = sub i64 %45, %46
  %48 = sdiv exact i64 %47, 4
  %49 = icmp ugt i64 %42, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %41, %33
  %51 = load i32, i32* @MSG_DEBUG, align 4
  %52 = load i64, i64* %16, align 8
  %53 = call i32 (i32, i8*, ...) @wpa_printf(i32 %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %52)
  br label %296

54:                                               ; preds = %41
  %55 = load i64, i64* %16, align 8
  %56 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %57 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %56, i32 0, i32 0
  store i64 %55, i64* %57, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %60 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @count_bits(i32* %58, i64 %61)
  store i32 %62, i32* %15, align 4
  %63 = load i32, i32* %15, align 4
  %64 = icmp ult i32 %63, 768
  br i1 %64, label %65, label %76

65:                                               ; preds = %54
  %66 = load i32, i32* @MSG_INFO, align 4
  %67 = load i32, i32* %15, align 4
  %68 = call i32 (i32, i8*, ...) @wpa_printf(i32 %66, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @MSG_DEBUG, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %72 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = trunc i64 %73 to i32
  %75 = call i32 @wpa_hexdump(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %70, i32 %74)
  br label %296

76:                                               ; preds = %54
  %77 = load i32*, i32** %10, align 8
  %78 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %79 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i8* @os_memdup(i32* %77, i64 %80)
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %84 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %83, i32 0, i32 1
  store i32* %82, i32** %84, align 8
  %85 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %86 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %90

89:                                               ; preds = %76
  br label %296

90:                                               ; preds = %76
  %91 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %92 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %10, align 8
  %96 = load i32, i32* @MSG_DEBUG, align 4
  %97 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %98 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %101 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i32 @wpa_hexdump(i32 %96, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0), i32* %99, i32 %103)
  %105 = load i32*, i32** %11, align 8
  %106 = load i32*, i32** %10, align 8
  %107 = ptrtoint i32* %105 to i64
  %108 = ptrtoint i32* %106 to i64
  %109 = sub i64 %107, %108
  %110 = sdiv exact i64 %109, 4
  %111 = icmp slt i64 %110, 3
  br i1 %111, label %112, label %113

112:                                              ; preds = %90
  br label %296

113:                                              ; preds = %90
  %114 = load i32*, i32** %10, align 8
  %115 = call i64 @WPA_GET_BE16(i32* %114)
  store i64 %115, i64* %16, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 2
  store i32* %117, i32** %10, align 8
  %118 = load i64, i64* %16, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %129, label %120

120:                                              ; preds = %113
  %121 = load i64, i64* %16, align 8
  %122 = load i32*, i32** %11, align 8
  %123 = load i32*, i32** %10, align 8
  %124 = ptrtoint i32* %122 to i64
  %125 = ptrtoint i32* %123 to i64
  %126 = sub i64 %124, %125
  %127 = sdiv exact i64 %126, 4
  %128 = icmp ugt i64 %121, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %120, %113
  br label %296

130:                                              ; preds = %120
  %131 = load i64, i64* %16, align 8
  %132 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %133 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %132, i32 0, i32 2
  store i64 %131, i64* %133, align 8
  %134 = load i32*, i32** %10, align 8
  %135 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %136 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = call i8* @os_memdup(i32* %134, i64 %137)
  %139 = bitcast i8* %138 to i32*
  %140 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %141 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %140, i32 0, i32 3
  store i32* %139, i32** %141, align 8
  %142 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %143 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = icmp eq i32* %144, null
  br i1 %145, label %146, label %147

146:                                              ; preds = %130
  br label %296

147:                                              ; preds = %130
  %148 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %149 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i32*, i32** %10, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 %150
  store i32* %152, i32** %10, align 8
  %153 = load i32, i32* @MSG_DEBUG, align 4
  %154 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %155 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %154, i32 0, i32 3
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %158 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %157, i32 0, i32 2
  %159 = load i64, i64* %158, align 8
  %160 = trunc i64 %159 to i32
  %161 = call i32 @wpa_hexdump(i32 %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i32* %156, i32 %160)
  %162 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %163 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp eq i64 %164, 1
  br i1 %165, label %166, label %174

166:                                              ; preds = %147
  %167 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %168 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %167, i32 0, i32 3
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 0
  %171 = load i32, i32* %170, align 4
  %172 = icmp slt i32 %171, 2
  br i1 %172, label %173, label %174

173:                                              ; preds = %166
  br label %296

174:                                              ; preds = %166, %147
  %175 = load i32*, i32** %11, align 8
  %176 = load i32*, i32** %10, align 8
  %177 = ptrtoint i32* %175 to i64
  %178 = ptrtoint i32* %176 to i64
  %179 = sub i64 %177, %178
  %180 = sdiv exact i64 %179, 4
  %181 = icmp slt i64 %180, 3
  br i1 %181, label %182, label %183

182:                                              ; preds = %174
  br label %296

183:                                              ; preds = %174
  %184 = load i32*, i32** %10, align 8
  %185 = call i64 @WPA_GET_BE16(i32* %184)
  store i64 %185, i64* %16, align 8
  %186 = load i32*, i32** %10, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  store i32* %187, i32** %10, align 8
  %188 = load i64, i64* %16, align 8
  %189 = icmp eq i64 %188, 0
  br i1 %189, label %199, label %190

190:                                              ; preds = %183
  %191 = load i64, i64* %16, align 8
  %192 = load i32*, i32** %11, align 8
  %193 = load i32*, i32** %10, align 8
  %194 = ptrtoint i32* %192 to i64
  %195 = ptrtoint i32* %193 to i64
  %196 = sub i64 %194, %195
  %197 = sdiv exact i64 %196, 4
  %198 = icmp ugt i64 %191, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %190, %183
  br label %296

200:                                              ; preds = %190
  %201 = load i64, i64* %16, align 8
  %202 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %203 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %202, i32 0, i32 4
  store i64 %201, i64* %203, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %206 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = call i8* @os_memdup(i32* %204, i64 %207)
  %209 = bitcast i8* %208 to i32*
  %210 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %211 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %210, i32 0, i32 5
  store i32* %209, i32** %211, align 8
  %212 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %213 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %212, i32 0, i32 5
  %214 = load i32*, i32** %213, align 8
  %215 = icmp eq i32* %214, null
  br i1 %215, label %216, label %217

216:                                              ; preds = %200
  br label %296

217:                                              ; preds = %200
  %218 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %219 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = getelementptr inbounds i32, i32* %221, i64 %220
  store i32* %222, i32** %10, align 8
  %223 = load i32, i32* @MSG_DEBUG, align 4
  %224 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %225 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %224, i32 0, i32 5
  %226 = load i32*, i32** %225, align 8
  %227 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %228 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %227, i32 0, i32 4
  %229 = load i64, i64* %228, align 8
  %230 = trunc i64 %229 to i32
  %231 = call i32 @wpa_hexdump(i32 %223, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0), i32* %226, i32 %230)
  %232 = load i32*, i32** %10, align 8
  store i32* %232, i32** %13, align 8
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* @TLS_KEY_X_DHE_RSA, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %295

236:                                              ; preds = %217
  %237 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %238 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %237, i32 0, i32 7
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @TLS_VERSION_1_2, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %236
  br label %296

244:                                              ; preds = %236
  %245 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %246 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %245, i32 0, i32 7
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %250 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %249, i32 0, i32 9
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %253 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = load i32*, i32** %12, align 8
  %256 = load i32*, i32** %13, align 8
  %257 = load i32*, i32** %12, align 8
  %258 = ptrtoint i32* %256 to i64
  %259 = ptrtoint i32* %257 to i64
  %260 = sub i64 %258, %259
  %261 = sdiv exact i64 %260, 4
  %262 = trunc i64 %261 to i32
  %263 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %264 = call i32 @tls_key_x_server_params_hash(i64 %248, i32 %251, i32 %254, i32* %255, i32 %262, i32* %263)
  store i32 %264, i32* %18, align 4
  br label %265

265:                                              ; preds = %244
  %266 = load i32, i32* %18, align 4
  %267 = icmp slt i32 %266, 0
  br i1 %267, label %268, label %269

268:                                              ; preds = %265
  br label %296

269:                                              ; preds = %265
  %270 = load i32, i32* @MSG_MSGDUMP, align 4
  %271 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %272 = load i32, i32* %18, align 4
  %273 = call i32 @wpa_hexdump(i32 %270, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i32* %271, i32 %272)
  %274 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %275 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %274, i32 0, i32 7
  %276 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %279 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %278, i32 0, i32 6
  %280 = load i32, i32* %279, align 8
  %281 = getelementptr inbounds [64 x i32], [64 x i32]* %17, i64 0, i64 0
  %282 = load i32, i32* %18, align 4
  %283 = load i32*, i32** %10, align 8
  %284 = load i32*, i32** %11, align 8
  %285 = load i32*, i32** %10, align 8
  %286 = ptrtoint i32* %284 to i64
  %287 = ptrtoint i32* %285 to i64
  %288 = sub i64 %286, %287
  %289 = sdiv exact i64 %288, 4
  %290 = trunc i64 %289 to i32
  %291 = call i64 @tls_verify_signature(i64 %277, i32 %280, i32* %281, i32 %282, i32* %283, i32 %290, i32* %14)
  %292 = icmp slt i64 %291, 0
  br i1 %292, label %293, label %294

293:                                              ; preds = %269
  br label %296

294:                                              ; preds = %269
  br label %295

295:                                              ; preds = %294, %217
  store i32 0, i32* %5, align 4
  br label %301

296:                                              ; preds = %293, %268, %243, %216, %199, %182, %173, %146, %129, %112, %89, %65, %50, %32
  %297 = load i32, i32* @MSG_DEBUG, align 4
  %298 = call i32 (i32, i8*, ...) @wpa_printf(i32 %297, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %299 = load %struct.tlsv1_client*, %struct.tlsv1_client** %6, align 8
  %300 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %299)
  store i32 -1, i32* %5, align 4
  br label %301

301:                                              ; preds = %296, %295
  %302 = load i32, i32* %5, align 4
  ret i32 %302
}

declare dso_local i32 @tlsv1_client_free_dh(%struct.tlsv1_client*) #1

declare dso_local i64 @WPA_GET_BE16(i32*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @count_bits(i32*, i64) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i32) #1

declare dso_local i8* @os_memdup(i32*, i64) #1

declare dso_local i32 @tls_key_x_server_params_hash(i64, i32, i32, i32*, i32, i32*) #1

declare dso_local i64 @tls_verify_signature(i64, i32, i32*, i32, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
