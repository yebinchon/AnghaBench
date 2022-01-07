; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_write.c_tls_write_server_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i32 (i32, i64, i32, i32, i32, i32)*, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i64, i32, i64, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.os_time = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"Send ServerHello\00", align 1
@TLS_RECORD_HEADER_LEN = common dso_local global i32 0, align 4
@TLS_RANDOM_LEN = common dso_local global i64 0, align 8
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"TLSv1: Could not generate server_random\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"TLSv1: server_random\00", align 1
@TLS_SESSION_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"TLSv1: Could not generate session_id\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"TLSv1: session_id\00", align 1
@TLS_HANDSHAKE_TYPE_SERVER_HELLO = common dso_local global i32 0, align 4
@TLS_COMPRESSION_NULL = common dso_local global i64 0, align 8
@TLS_EXT_STATUS_REQUEST = common dso_local global i32 0, align 4
@TLS_EXT_STATUS_REQUEST_V2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"SessionTicket callback indicated failure\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_HANDSHAKE_FAILURE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"TLSv1: Failed to derive keys\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"TLSv1: Failed to create TLS record\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i32**, i32*)* @tls_write_server_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_write_server_hello(%struct.tlsv1_server* %0, i32** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tlsv1_server*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.os_time, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32**, i32*** %6, align 8
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %19 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load i32*, i32** %8, align 8
  store i32* %20, i32** %9, align 8
  %21 = load i32, i32* @TLS_RECORD_HEADER_LEN, align 4
  %22 = load i32*, i32** %8, align 8
  %23 = sext i32 %21 to i64
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %8, align 8
  %25 = call i32 @os_get_time(%struct.os_time* %13)
  %26 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %27 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.os_time, %struct.os_time* %13, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @WPA_PUT_BE32(i32 %28, i32 %30)
  %32 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %33 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 8
  %35 = add nsw i32 %34, 4
  %36 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %37 = sub nsw i64 %36, 4
  %38 = call i64 @random_get_bytes(i32 %35, i64 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %3
  %41 = load i32, i32* @MSG_ERROR, align 4
  %42 = call i32 @wpa_printf(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %297

43:                                               ; preds = %3
  %44 = load i32, i32* @MSG_MSGDUMP, align 4
  %45 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %46 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %49 = call i32 @wpa_hexdump(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i64, i64* @TLS_SESSION_ID_MAX_LEN, align 8
  %51 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %52 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %51, i32 0, i32 13
  store i64 %50, i64* %52, align 8
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %54 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %53, i32 0, i32 14
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %57 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %56, i32 0, i32 13
  %58 = load i64, i64* %57, align 8
  %59 = call i64 @random_get_bytes(i32 %55, i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %43
  %62 = load i32, i32* @MSG_ERROR, align 4
  %63 = call i32 @wpa_printf(i32 %62, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %297

64:                                               ; preds = %43
  %65 = load i32, i32* @MSG_MSGDUMP, align 4
  %66 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %67 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %66, i32 0, i32 14
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %70 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %69, i32 0, i32 13
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @wpa_hexdump(i32 %65, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %68, i64 %71)
  %73 = load i32*, i32** %8, align 8
  store i32* %73, i32** %10, align 8
  %74 = load i32, i32* @TLS_HANDSHAKE_TYPE_SERVER_HELLO, align 4
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i32 1
  store i32* %76, i32** %8, align 8
  store i32 %74, i32* %75, align 4
  %77 = load i32*, i32** %8, align 8
  store i32* %77, i32** %11, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  store i32* %79, i32** %8, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %82 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %81, i32 0, i32 3
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @WPA_PUT_BE16(i32* %80, i32 %84)
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %90 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 8
  %92 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %93 = call i32 @os_memcpy(i32* %88, i32 %91, i64 %92)
  %94 = load i64, i64* @TLS_RANDOM_LEN, align 8
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 %94
  store i32* %96, i32** %8, align 8
  %97 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %98 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %97, i32 0, i32 13
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %8, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32*, i32** %8, align 8
  %104 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %105 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %104, i32 0, i32 14
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %108 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %107, i32 0, i32 13
  %109 = load i64, i64* %108, align 8
  %110 = call i32 @os_memcpy(i32* %103, i32 %106, i64 %109)
  %111 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %112 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %111, i32 0, i32 13
  %113 = load i64, i64* %112, align 8
  %114 = load i32*, i32** %8, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %118 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @WPA_PUT_BE16(i32* %116, i32 %119)
  %121 = load i32*, i32** %8, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 2
  store i32* %122, i32** %8, align 8
  %123 = load i64, i64* @TLS_COMPRESSION_NULL, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %8, align 8
  store i32 %124, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  store i32* %127, i32** %12, align 8
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  store i32* %129, i32** %8, align 8
  %130 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %131 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %130, i32 0, i32 12
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %64
  %135 = load i32*, i32** %8, align 8
  %136 = load i32, i32* @TLS_EXT_STATUS_REQUEST, align 4
  %137 = call i32 @WPA_PUT_BE16(i32* %135, i32 %136)
  %138 = load i32*, i32** %8, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32* %139, i32** %8, align 8
  %140 = load i32*, i32** %8, align 8
  %141 = call i32 @WPA_PUT_BE16(i32* %140, i32 0)
  %142 = load i32*, i32** %8, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 2
  store i32* %143, i32** %8, align 8
  br label %144

144:                                              ; preds = %134, %64
  %145 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %146 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %145, i32 0, i32 11
  %147 = load i64, i64* %146, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %159

149:                                              ; preds = %144
  %150 = load i32*, i32** %8, align 8
  %151 = load i32, i32* @TLS_EXT_STATUS_REQUEST_V2, align 4
  %152 = call i32 @WPA_PUT_BE16(i32* %150, i32 %151)
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 2
  store i32* %154, i32** %8, align 8
  %155 = load i32*, i32** %8, align 8
  %156 = call i32 @WPA_PUT_BE16(i32* %155, i32 0)
  %157 = load i32*, i32** %8, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 2
  store i32* %158, i32** %8, align 8
  br label %159

159:                                              ; preds = %149, %144
  %160 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %161 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %160, i32 0, i32 9
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %222

164:                                              ; preds = %159
  %165 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %166 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %165, i32 0, i32 1
  %167 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %166, align 8
  %168 = icmp ne i32 (i32, i64, i32, i32, i32, i32)* %167, null
  br i1 %168, label %169, label %222

169:                                              ; preds = %164
  %170 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %171 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %170, i32 0, i32 1
  %172 = load i32 (i32, i64, i32, i32, i32, i32)*, i32 (i32, i64, i32, i32, i32, i32)** %171, align 8
  %173 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %174 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %173, i32 0, i32 10
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %177 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %176, i32 0, i32 9
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %180 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %179, i32 0, i32 8
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %183 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %186 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %189 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i32 %172(i32 %175, i64 %178, i32 %181, i32 %184, i32 %187, i32 %190)
  store i32 %191, i32* %15, align 4
  %192 = load i32, i32* %15, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %201

194:                                              ; preds = %169
  %195 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %196 = call i32 @tlsv1_server_log(%struct.tlsv1_server* %195, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %197 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %198 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %199 = load i32, i32* @TLS_ALERT_HANDSHAKE_FAILURE, align 4
  %200 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %197, i32 %198, i32 %199)
  store i32 -1, i32* %4, align 4
  br label %297

201:                                              ; preds = %169
  %202 = load i32, i32* %15, align 4
  %203 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %204 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %206 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %221

209:                                              ; preds = %201
  %210 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %211 = call i64 @tlsv1_server_derive_keys(%struct.tlsv1_server* %210, i32* null, i32 0)
  %212 = icmp slt i64 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %209
  %214 = load i32, i32* @MSG_DEBUG, align 4
  %215 = call i32 @wpa_printf(i32 %214, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %216 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %217 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %218 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %219 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %216, i32 %217, i32 %218)
  store i32 -1, i32* %4, align 4
  br label %297

220:                                              ; preds = %209
  br label %221

221:                                              ; preds = %220, %201
  br label %222

222:                                              ; preds = %221, %164, %159
  %223 = load i32*, i32** %8, align 8
  %224 = load i32*, i32** %12, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 2
  %226 = icmp eq i32* %223, %225
  br i1 %226, label %227, label %230

227:                                              ; preds = %222
  %228 = load i32*, i32** %8, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 -2
  store i32* %229, i32** %8, align 8
  br label %241

230:                                              ; preds = %222
  %231 = load i32*, i32** %12, align 8
  %232 = load i32*, i32** %8, align 8
  %233 = load i32*, i32** %12, align 8
  %234 = ptrtoint i32* %232 to i64
  %235 = ptrtoint i32* %233 to i64
  %236 = sub i64 %234, %235
  %237 = sdiv exact i64 %236, 4
  %238 = sub nsw i64 %237, 2
  %239 = trunc i64 %238 to i32
  %240 = call i32 @WPA_PUT_BE16(i32* %231, i32 %239)
  br label %241

241:                                              ; preds = %230, %227
  %242 = load i32*, i32** %11, align 8
  %243 = load i32*, i32** %8, align 8
  %244 = load i32*, i32** %11, align 8
  %245 = ptrtoint i32* %243 to i64
  %246 = ptrtoint i32* %244 to i64
  %247 = sub i64 %245, %246
  %248 = sdiv exact i64 %247, 4
  %249 = sub nsw i64 %248, 3
  %250 = trunc i64 %249 to i32
  %251 = call i32 @WPA_PUT_BE24(i32* %242, i32 %250)
  %252 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %253 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %252, i32 0, i32 4
  %254 = load i32*, i32** %10, align 8
  %255 = load i32*, i32** %8, align 8
  %256 = load i32*, i32** %10, align 8
  %257 = ptrtoint i32* %255 to i64
  %258 = ptrtoint i32* %256 to i64
  %259 = sub i64 %257, %258
  %260 = sdiv exact i64 %259, 4
  %261 = trunc i64 %260 to i32
  %262 = call i32 @tls_verify_hash_add(i32* %253, i32* %254, i32 %261)
  %263 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %264 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %263, i32 0, i32 3
  %265 = load i32, i32* @TLS_CONTENT_TYPE_HANDSHAKE, align 4
  %266 = load i32*, i32** %9, align 8
  %267 = load i32*, i32** %7, align 8
  %268 = load i32*, i32** %9, align 8
  %269 = ptrtoint i32* %267 to i64
  %270 = ptrtoint i32* %268 to i64
  %271 = sub i64 %269, %270
  %272 = sdiv exact i64 %271, 4
  %273 = trunc i64 %272 to i32
  %274 = load i32*, i32** %10, align 8
  %275 = load i32*, i32** %8, align 8
  %276 = load i32*, i32** %10, align 8
  %277 = ptrtoint i32* %275 to i64
  %278 = ptrtoint i32* %276 to i64
  %279 = sub i64 %277, %278
  %280 = sdiv exact i64 %279, 4
  %281 = trunc i64 %280 to i32
  %282 = call i64 @tlsv1_record_send(%struct.TYPE_2__* %264, i32 %265, i32* %266, i32 %273, i32* %274, i32 %281, i64* %14)
  %283 = icmp slt i64 %282, 0
  br i1 %283, label %284, label %291

284:                                              ; preds = %241
  %285 = load i32, i32* @MSG_DEBUG, align 4
  %286 = call i32 @wpa_printf(i32 %285, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %287 = load %struct.tlsv1_server*, %struct.tlsv1_server** %5, align 8
  %288 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %289 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %290 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %287, i32 %288, i32 %289)
  store i32 -1, i32* %4, align 4
  br label %297

291:                                              ; preds = %241
  %292 = load i32*, i32** %9, align 8
  %293 = load i64, i64* %14, align 8
  %294 = getelementptr inbounds i32, i32* %292, i64 %293
  store i32* %294, i32** %8, align 8
  %295 = load i32*, i32** %8, align 8
  %296 = load i32**, i32*** %6, align 8
  store i32* %295, i32** %296, align 8
  store i32 0, i32* %4, align 4
  br label %297

297:                                              ; preds = %291, %284, %213, %194, %61, %40
  %298 = load i32, i32* %4, align 4
  ret i32 %298
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*) #1

declare dso_local i32 @os_get_time(%struct.os_time*) #1

declare dso_local i32 @WPA_PUT_BE32(i32, i32) #1

declare dso_local i64 @random_get_bytes(i32, i64) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i32, i64) #1

declare dso_local i32 @WPA_PUT_BE16(i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @tlsv1_server_derive_keys(%struct.tlsv1_server*, i32*, i32) #1

declare dso_local i32 @WPA_PUT_BE24(i32*, i32) #1

declare dso_local i32 @tls_verify_hash_add(i32*, i32*, i32) #1

declare dso_local i64 @tlsv1_record_send(%struct.TYPE_2__*, i32, i32*, i32, i32*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
