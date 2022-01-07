; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_key_x_dh.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_client_write.c_tlsv1_key_x_dh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_client = type { i64, i32, i32, i32, i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"TLSv1: Failed to allocate memory for Yc (Diffie-Hellman)\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to get random data for Diffie-Hellman\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TLSv1: DH client's secret value\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"TLSv1: Failed to allocate memory for Diffie-Hellman\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"TLSv1: DH Yc (client's public value)\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"TLSv1: Not enough room in the message buffer for Yc\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not allocate memory for DH\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"TLSv1: Shared secret from DH key exchange\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_client*, i64**, i64*)* @tlsv1_key_x_dh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlsv1_key_x_dh(%struct.tlsv1_client* %0, i64** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_client*, align 8
  %6 = alloca i64**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.tlsv1_client* %0, %struct.tlsv1_client** %5, align 8
  store i64** %1, i64*** %6, align 8
  store i64* %2, i64** %7, align 8
  %15 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %16 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = call i64* @os_malloc(i64 %18)
  store i64* %19, i64** %8, align 8
  %20 = load i64*, i64** %8, align 8
  %21 = icmp eq i64* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i32, i32* @MSG_DEBUG, align 4
  %24 = call i32 @wpa_printf(i32 %23, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %26 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %27 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %28 = call i32 @tls_alert(%struct.tlsv1_client* %25, i32 %26, i32 %27)
  store i32 -1, i32* %4, align 4
  br label %255

29:                                               ; preds = %3
  %30 = load i64*, i64** %8, align 8
  %31 = load i64, i64* %12, align 8
  %32 = call i64 @random_get_bytes(i64* %30, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* @MSG_DEBUG, align 4
  %36 = call i32 @wpa_printf(i32 %35, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %38 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %39 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %40 = call i32 @tls_alert(%struct.tlsv1_client* %37, i32 %38, i32 %39)
  %41 = load i64*, i64** %8, align 8
  %42 = call i32 @os_free(i64* %41)
  store i32 -1, i32* %4, align 4
  br label %255

43:                                               ; preds = %29
  %44 = load i64*, i64** %8, align 8
  %45 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %46 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %12, align 8
  %49 = call i64 @os_memcmp(i64* %44, i32 %47, i64 %48)
  %50 = icmp sgt i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %43
  %52 = load i64*, i64** %8, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %51, %43
  %55 = load i64*, i64** %8, align 8
  store i64* %55, i64** %9, align 8
  br label %56

56:                                               ; preds = %65, %54
  %57 = load i64, i64* %12, align 8
  %58 = icmp ugt i64 %57, 1
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i64*, i64** %9, align 8
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br label %63

63:                                               ; preds = %59, %56
  %64 = phi i1 [ false, %56 ], [ %62, %59 ]
  br i1 %64, label %65, label %70

65:                                               ; preds = %63
  %66 = load i64*, i64** %9, align 8
  %67 = getelementptr inbounds i64, i64* %66, i32 1
  store i64* %67, i64** %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = add i64 %68, -1
  store i64 %69, i64* %12, align 8
  br label %56

70:                                               ; preds = %63
  %71 = load i32, i32* @MSG_DEBUG, align 4
  %72 = load i64*, i64** %9, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call i32 @wpa_hexdump_key(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64* %72, i64 %73)
  %75 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %76 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  store i64 %77, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = call i64* @os_malloc(i64 %78)
  store i64* %79, i64** %10, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = icmp eq i64* %80, null
  br i1 %81, label %82, label %91

82:                                               ; preds = %70
  %83 = load i32, i32* @MSG_DEBUG, align 4
  %84 = call i32 @wpa_printf(i32 %83, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %86 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %87 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %88 = call i32 @tls_alert(%struct.tlsv1_client* %85, i32 %86, i32 %87)
  %89 = load i64*, i64** %8, align 8
  %90 = call i32 @os_free(i64* %89)
  store i32 -1, i32* %4, align 4
  br label %255

91:                                               ; preds = %70
  %92 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %93 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %96 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load i64*, i64** %9, align 8
  %99 = load i64, i64* %12, align 8
  %100 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %101 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %104 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = call i64 @crypto_mod_exp(i32 %94, i32 %97, i64* %98, i64 %99, i32 %102, i64 %105, i64* %106, i64* %13)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %91
  %110 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %111 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %112 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %113 = call i32 @tls_alert(%struct.tlsv1_client* %110, i32 %111, i32 %112)
  %114 = load i64*, i64** %8, align 8
  %115 = call i32 @os_free(i64* %114)
  %116 = load i64*, i64** %10, align 8
  %117 = call i32 @os_free(i64* %116)
  store i32 -1, i32* %4, align 4
  br label %255

118:                                              ; preds = %91
  %119 = load i32, i32* @MSG_DEBUG, align 4
  %120 = load i64*, i64** %10, align 8
  %121 = load i64, i64* %13, align 8
  %122 = call i32 @wpa_hexdump(i32 %119, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i64 0, i64 0), i64* %120, i64 %121)
  %123 = load i64*, i64** %7, align 8
  %124 = load i64**, i64*** %6, align 8
  %125 = load i64*, i64** %124, align 8
  %126 = ptrtoint i64* %123 to i64
  %127 = ptrtoint i64* %125 to i64
  %128 = sub i64 %126, %127
  %129 = sdiv exact i64 %128, 8
  %130 = icmp slt i64 %129, 2
  br i1 %130, label %131, label %140

131:                                              ; preds = %118
  %132 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %133 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %134 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %135 = call i32 @tls_alert(%struct.tlsv1_client* %132, i32 %133, i32 %134)
  %136 = load i64*, i64** %8, align 8
  %137 = call i32 @os_free(i64* %136)
  %138 = load i64*, i64** %10, align 8
  %139 = call i32 @os_free(i64* %138)
  store i32 -1, i32* %4, align 4
  br label %255

140:                                              ; preds = %118
  %141 = load i64**, i64*** %6, align 8
  %142 = load i64*, i64** %141, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 @WPA_PUT_BE16(i64* %142, i64 %143)
  %145 = load i64**, i64*** %6, align 8
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 2
  store i64* %147, i64** %145, align 8
  %148 = load i64, i64* %13, align 8
  %149 = load i64*, i64** %7, align 8
  %150 = load i64**, i64*** %6, align 8
  %151 = load i64*, i64** %150, align 8
  %152 = ptrtoint i64* %149 to i64
  %153 = ptrtoint i64* %151 to i64
  %154 = sub i64 %152, %153
  %155 = sdiv exact i64 %154, 8
  %156 = icmp ugt i64 %148, %155
  br i1 %156, label %157, label %168

157:                                              ; preds = %140
  %158 = load i32, i32* @MSG_DEBUG, align 4
  %159 = call i32 @wpa_printf(i32 %158, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0))
  %160 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %161 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %162 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %163 = call i32 @tls_alert(%struct.tlsv1_client* %160, i32 %161, i32 %162)
  %164 = load i64*, i64** %8, align 8
  %165 = call i32 @os_free(i64* %164)
  %166 = load i64*, i64** %10, align 8
  %167 = call i32 @os_free(i64* %166)
  store i32 -1, i32* %4, align 4
  br label %255

168:                                              ; preds = %140
  %169 = load i64**, i64*** %6, align 8
  %170 = load i64*, i64** %169, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @os_memcpy(i64* %170, i64* %171, i64 %172)
  %174 = load i64, i64* %13, align 8
  %175 = load i64**, i64*** %6, align 8
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 %174
  store i64* %177, i64** %175, align 8
  %178 = load i64*, i64** %10, align 8
  %179 = call i32 @os_free(i64* %178)
  %180 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %181 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  store i64 %182, i64* %14, align 8
  %183 = load i64, i64* %14, align 8
  %184 = call i64* @os_malloc(i64 %183)
  store i64* %184, i64** %11, align 8
  %185 = load i64*, i64** %11, align 8
  %186 = icmp eq i64* %185, null
  br i1 %186, label %187, label %196

187:                                              ; preds = %168
  %188 = load i32, i32* @MSG_DEBUG, align 4
  %189 = call i32 @wpa_printf(i32 %188, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  %190 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %191 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %192 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %193 = call i32 @tls_alert(%struct.tlsv1_client* %190, i32 %191, i32 %192)
  %194 = load i64*, i64** %8, align 8
  %195 = call i32 @os_free(i64* %194)
  store i32 -1, i32* %4, align 4
  br label %255

196:                                              ; preds = %168
  %197 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %198 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %201 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i64*, i64** %9, align 8
  %204 = load i64, i64* %12, align 8
  %205 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %206 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %209 = getelementptr inbounds %struct.tlsv1_client, %struct.tlsv1_client* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64*, i64** %11, align 8
  %212 = call i64 @crypto_mod_exp(i32 %199, i32 %202, i64* %203, i64 %204, i32 %207, i64 %210, i64* %211, i64* %14)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %223

214:                                              ; preds = %196
  %215 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %216 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %217 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %218 = call i32 @tls_alert(%struct.tlsv1_client* %215, i32 %216, i32 %217)
  %219 = load i64*, i64** %8, align 8
  %220 = call i32 @os_free(i64* %219)
  %221 = load i64*, i64** %11, align 8
  %222 = call i32 @os_free(i64* %221)
  store i32 -1, i32* %4, align 4
  br label %255

223:                                              ; preds = %196
  %224 = load i32, i32* @MSG_DEBUG, align 4
  %225 = load i64*, i64** %11, align 8
  %226 = load i64, i64* %14, align 8
  %227 = call i32 @wpa_hexdump_key(i32 %224, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0), i64* %225, i64 %226)
  %228 = load i64*, i64** %9, align 8
  %229 = load i64, i64* %12, align 8
  %230 = call i32 @os_memset(i64* %228, i32 0, i64 %229)
  %231 = load i64*, i64** %8, align 8
  %232 = call i32 @os_free(i64* %231)
  %233 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %234 = load i64*, i64** %11, align 8
  %235 = load i64, i64* %14, align 8
  %236 = call i64 @tls_derive_keys(%struct.tlsv1_client* %233, i64* %234, i64 %235)
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %238, label %247

238:                                              ; preds = %223
  %239 = load i32, i32* @MSG_DEBUG, align 4
  %240 = call i32 @wpa_printf(i32 %239, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  %241 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %242 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %243 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %244 = call i32 @tls_alert(%struct.tlsv1_client* %241, i32 %242, i32 %243)
  %245 = load i64*, i64** %11, align 8
  %246 = call i32 @os_free(i64* %245)
  store i32 -1, i32* %4, align 4
  br label %255

247:                                              ; preds = %223
  %248 = load i64*, i64** %11, align 8
  %249 = load i64, i64* %14, align 8
  %250 = call i32 @os_memset(i64* %248, i32 0, i64 %249)
  %251 = load i64*, i64** %11, align 8
  %252 = call i32 @os_free(i64* %251)
  %253 = load %struct.tlsv1_client*, %struct.tlsv1_client** %5, align 8
  %254 = call i32 @tlsv1_client_free_dh(%struct.tlsv1_client* %253)
  store i32 0, i32* %4, align 4
  br label %255

255:                                              ; preds = %247, %238, %214, %187, %157, %131, %109, %82, %34, %22
  %256 = load i32, i32* %4, align 4
  ret i32 %256
}

declare dso_local i64* @os_malloc(i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @tls_alert(%struct.tlsv1_client*, i32, i32) #1

declare dso_local i64 @random_get_bytes(i64*, i64) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64 @os_memcmp(i64*, i32, i64) #1

declare dso_local i32 @wpa_hexdump_key(i32, i8*, i64*, i64) #1

declare dso_local i64 @crypto_mod_exp(i32, i32, i64*, i64, i32, i64, i64*, i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i64*, i64) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i64) #1

declare dso_local i32 @os_memset(i64*, i32, i64) #1

declare dso_local i64 @tls_derive_keys(%struct.tlsv1_client*, i64*, i64) #1

declare dso_local i32 @tlsv1_client_free_dh(%struct.tlsv1_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
