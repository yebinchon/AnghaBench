; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_hello.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/tls/extr_tlsv1_server_read.c_tls_process_client_hello.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlsv1_server = type { i32, i64*, i64, i32*, i32, i64*, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@TLS_CONTENT_TYPE_HANDSHAKE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [47 x i8] c"Expected Handshake; received content type 0x%x\00", align 1
@TLS_ALERT_LEVEL_FATAL = common dso_local global i32 0, align 4
@TLS_ALERT_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Truncated handshake message (expected ClientHello)\00", align 1
@TLS_HANDSHAKE_TYPE_CLIENT_HELLO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [64 x i8] c"Received unexpected handshake message %d (expected ClientHello)\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Received ClientHello\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Truncated ClientHello (len=%d left=%d)\00", align 1
@MSG_MSGDUMP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [19 x i8] c"TLSv1: ClientHello\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Truncated ClientHello/client_version\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Client version %d.%d\00", align 1
@TLS_VERSION_1 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [49 x i8] c"Unexpected protocol version in ClientHello %u.%u\00", align 1
@TLS_ALERT_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@TLS_VERSION = common dso_local global i32 0, align 4
@TLS_VERSION_1_1 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [14 x i8] c"Using TLS v%s\00", align 1
@TLS_RANDOM_LEN = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"Truncated ClientHello/client_random\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"TLSv1: client_random\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Truncated ClientHello/session_id len\00", align 1
@TLS_SESSION_ID_MAX_LEN = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"Truncated ClientHello/session_id\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"TLSv1: client session_id\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"Truncated ClientHello/cipher_suites len\00", align 1
@.str.16 = private unnamed_addr constant [36 x i8] c"Truncated ClientHello/cipher_suites\00", align 1
@.str.17 = private unnamed_addr constant [28 x i8] c"TLSv1: client cipher suites\00", align 1
@.str.18 = private unnamed_addr constant [34 x i8] c"Odd len ClientHello/cipher_suites\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"No supported cipher suite available\00", align 1
@TLS_ALERT_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [50 x i8] c"TLSv1: Failed to set CipherSuite for record layer\00", align 1
@TLS_ALERT_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [46 x i8] c"Truncated ClientHello/compression_methods len\00", align 1
@.str.22 = private unnamed_addr constant [42 x i8] c"Truncated ClientHello/compression_methods\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"TLSv1: client compression_methods\00", align 1
@TLS_COMPRESSION_NULL = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [40 x i8] c"Client does not accept NULL compression\00", align 1
@.str.25 = private unnamed_addr constant [57 x i8] c"Unexpected extra octet in the end of ClientHello: 0x%02x\00", align 1
@.str.26 = private unnamed_addr constant [35 x i8] c"%u bytes of ClientHello extensions\00", align 1
@.str.27 = private unnamed_addr constant [59 x i8] c"Invalid ClientHello extension list length %u (expected %u)\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"Invalid extension_type field\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"Invalid extension_data length field\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Invalid extension_data field\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"ClientHello Extension type %u\00", align 1
@.str.32 = private unnamed_addr constant [34 x i8] c"TLSv1: ClientHello Extension data\00", align 1
@TLS_EXT_SESSION_TICKET = common dso_local global i32 0, align 4
@TLS_EXT_STATUS_REQUEST = common dso_local global i32 0, align 4
@TLS_EXT_STATUS_REQUEST_V2 = common dso_local global i32 0, align 4
@.str.33 = private unnamed_addr constant [40 x i8] c"ClientHello OK - proceed to ServerHello\00", align 1
@SERVER_HELLO = common dso_local global i32 0, align 4
@.str.34 = private unnamed_addr constant [29 x i8] c"Failed to decode ClientHello\00", align 1
@TLS_ALERT_DECODE_ERROR = common dso_local global i32 0, align 4
@TLS_VERSION_1_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tlsv1_server*, i64, i64*, i64*)* @tls_process_client_hello to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tls_process_client_hello(%struct.tlsv1_server* %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tlsv1_server*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.tlsv1_server* %0, %struct.tlsv1_server** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* @TLS_CONTENT_TYPE_HANDSHAKE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %4
  %27 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %27, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %28)
  %30 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %31 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %32 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %33 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %30, i32 %31, i32 %32)
  store i32 -1, i32* %5, align 4
  br label %612

34:                                               ; preds = %4
  %35 = load i64*, i64** %8, align 8
  store i64* %35, i64** %10, align 8
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %13, align 8
  %38 = load i64, i64* %13, align 8
  %39 = icmp ult i64 %38, 4
  br i1 %39, label %40, label %43

40:                                               ; preds = %34
  %41 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %42 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %41, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %605

43:                                               ; preds = %34
  %44 = load i64*, i64** %10, align 8
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TLS_HANDSHAKE_TYPE_CLIENT_HELLO, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %43
  %49 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %49, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %54 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %55 = load i32, i32* @TLS_ALERT_UNEXPECTED_MESSAGE, align 4
  %56 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %53, i32 %54, i32 %55)
  store i32 -1, i32* %5, align 4
  br label %612

57:                                               ; preds = %43
  %58 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %59 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %58, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64*, i64** %10, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %10, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = call i64 @WPA_GET_BE24(i64* %62)
  store i64 %63, i64* %14, align 8
  %64 = load i64*, i64** %10, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 3
  store i64* %65, i64** %10, align 8
  %66 = load i64, i64* %13, align 8
  %67 = sub i64 %66, 4
  store i64 %67, i64* %13, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %57
  %72 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %73 = load i64, i64* %14, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i64, i64* %13, align 8
  %76 = trunc i64 %75 to i32
  %77 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %72, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32 %74, i32 %76)
  br label %605

78:                                               ; preds = %57
  %79 = load i32, i32* @MSG_MSGDUMP, align 4
  %80 = load i64*, i64** %10, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i32 @wpa_hexdump(i32 %79, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i64* %80, i64 %81)
  %83 = load i64*, i64** %10, align 8
  %84 = load i64, i64* %14, align 8
  %85 = getelementptr inbounds i64, i64* %83, i64 %84
  store i64* %85, i64** %11, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = ptrtoint i64* %86 to i64
  %89 = ptrtoint i64* %87 to i64
  %90 = sub i64 %88, %89
  %91 = sdiv exact i64 %90, 8
  %92 = icmp slt i64 %91, 2
  br i1 %92, label %93, label %96

93:                                               ; preds = %78
  %94 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %95 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %94, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0))
  br label %605

96:                                               ; preds = %78
  %97 = load i64*, i64** %10, align 8
  %98 = call i8* @WPA_GET_BE16(i64* %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %101 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %103 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %104 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = ashr i32 %105, 8
  %107 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %108 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = and i32 %109, 255
  %111 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %106, i32 %110)
  %112 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %113 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @TLS_VERSION_1, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %132

117:                                              ; preds = %96
  %118 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %119 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %120 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = ashr i32 %121, 8
  %123 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %124 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, 255
  %127 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %118, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0), i32 %122, i32 %126)
  %128 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %129 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %130 = load i32, i32* @TLS_ALERT_PROTOCOL_VERSION, align 4
  %131 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %128, i32 %129, i32 %130)
  store i32 -1, i32* %5, align 4
  br label %612

132:                                              ; preds = %96
  %133 = load i64*, i64** %10, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 2
  store i64* %134, i64** %10, align 8
  %135 = load i32, i32* @TLS_VERSION, align 4
  %136 = load i32, i32* @TLS_VERSION_1, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %143

138:                                              ; preds = %132
  %139 = load i32, i32* @TLS_VERSION_1, align 4
  %140 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %141 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %140, i32 0, i32 9
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 4
  br label %162

143:                                              ; preds = %132
  %144 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %145 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @TLS_VERSION_1_1, align 4
  %148 = icmp sgt i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %143
  %150 = load i32, i32* @TLS_VERSION_1_1, align 4
  %151 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %152 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %151, i32 0, i32 9
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  store i32 %150, i32* %153, align 4
  br label %161

154:                                              ; preds = %143
  %155 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %156 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %159 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i32 0, i32 0
  store i32 %157, i32* %160, align 4
  br label %161

161:                                              ; preds = %154, %149
  br label %162

162:                                              ; preds = %161, %138
  %163 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %164 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %165 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %164, i32 0, i32 9
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i32 @tls_version_str(i32 %167)
  %169 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %163, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %168)
  %170 = load i64*, i64** %11, align 8
  %171 = load i64*, i64** %10, align 8
  %172 = ptrtoint i64* %170 to i64
  %173 = ptrtoint i64* %171 to i64
  %174 = sub i64 %172, %173
  %175 = sdiv exact i64 %174, 8
  %176 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %162
  %180 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %181 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  br label %605

182:                                              ; preds = %162
  %183 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %184 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %183, i32 0, i32 1
  %185 = load i64*, i64** %184, align 8
  %186 = load i64*, i64** %10, align 8
  %187 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %188 = call i32 @os_memcpy(i64* %185, i64* %186, i32 %187)
  %189 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %190 = load i64*, i64** %10, align 8
  %191 = sext i32 %189 to i64
  %192 = getelementptr inbounds i64, i64* %190, i64 %191
  store i64* %192, i64** %10, align 8
  %193 = load i32, i32* @MSG_MSGDUMP, align 4
  %194 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %195 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %194, i32 0, i32 1
  %196 = load i64*, i64** %195, align 8
  %197 = load i32, i32* @TLS_RANDOM_LEN, align 4
  %198 = sext i32 %197 to i64
  %199 = call i32 @wpa_hexdump(i32 %193, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.11, i64 0, i64 0), i64* %196, i64 %198)
  %200 = load i64*, i64** %11, align 8
  %201 = load i64*, i64** %10, align 8
  %202 = ptrtoint i64* %200 to i64
  %203 = ptrtoint i64* %201 to i64
  %204 = sub i64 %202, %203
  %205 = sdiv exact i64 %204, 8
  %206 = icmp slt i64 %205, 1
  br i1 %206, label %207, label %210

207:                                              ; preds = %182
  %208 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %209 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %208, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  br label %605

210:                                              ; preds = %182
  %211 = load i64*, i64** %11, align 8
  %212 = load i64*, i64** %10, align 8
  %213 = ptrtoint i64* %211 to i64
  %214 = ptrtoint i64* %212 to i64
  %215 = sub i64 %213, %214
  %216 = sdiv exact i64 %215, 8
  %217 = load i64*, i64** %10, align 8
  %218 = load i64, i64* %217, align 8
  %219 = add nsw i64 1, %218
  %220 = icmp slt i64 %216, %219
  br i1 %220, label %226, label %221

221:                                              ; preds = %210
  %222 = load i64*, i64** %10, align 8
  %223 = load i64, i64* %222, align 8
  %224 = load i64, i64* @TLS_SESSION_ID_MAX_LEN, align 8
  %225 = icmp sgt i64 %223, %224
  br i1 %225, label %226, label %229

226:                                              ; preds = %221, %210
  %227 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %228 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %227, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0))
  br label %605

229:                                              ; preds = %221
  %230 = load i32, i32* @MSG_MSGDUMP, align 4
  %231 = load i64*, i64** %10, align 8
  %232 = getelementptr inbounds i64, i64* %231, i64 1
  %233 = load i64*, i64** %10, align 8
  %234 = load i64, i64* %233, align 8
  %235 = call i32 @wpa_hexdump(i32 %230, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.14, i64 0, i64 0), i64* %232, i64 %234)
  %236 = load i64*, i64** %10, align 8
  %237 = load i64, i64* %236, align 8
  %238 = add nsw i64 1, %237
  %239 = load i64*, i64** %10, align 8
  %240 = getelementptr inbounds i64, i64* %239, i64 %238
  store i64* %240, i64** %10, align 8
  %241 = load i64*, i64** %11, align 8
  %242 = load i64*, i64** %10, align 8
  %243 = ptrtoint i64* %241 to i64
  %244 = ptrtoint i64* %242 to i64
  %245 = sub i64 %243, %244
  %246 = sdiv exact i64 %245, 8
  %247 = icmp slt i64 %246, 2
  br i1 %247, label %248, label %251

248:                                              ; preds = %229
  %249 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %250 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %249, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  br label %605

251:                                              ; preds = %229
  %252 = load i64*, i64** %10, align 8
  %253 = call i8* @WPA_GET_BE16(i64* %252)
  %254 = ptrtoint i8* %253 to i32
  store i32 %254, i32* %18, align 4
  %255 = load i64*, i64** %10, align 8
  %256 = getelementptr inbounds i64, i64* %255, i64 2
  store i64* %256, i64** %10, align 8
  %257 = load i64*, i64** %11, align 8
  %258 = load i64*, i64** %10, align 8
  %259 = ptrtoint i64* %257 to i64
  %260 = ptrtoint i64* %258 to i64
  %261 = sub i64 %259, %260
  %262 = sdiv exact i64 %261, 8
  %263 = load i32, i32* %18, align 4
  %264 = sext i32 %263 to i64
  %265 = icmp slt i64 %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %251
  %267 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %268 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %267, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.16, i64 0, i64 0))
  br label %605

269:                                              ; preds = %251
  %270 = load i32, i32* @MSG_MSGDUMP, align 4
  %271 = load i64*, i64** %10, align 8
  %272 = load i32, i32* %18, align 4
  %273 = sext i32 %272 to i64
  %274 = call i32 @wpa_hexdump(i32 %270, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.17, i64 0, i64 0), i64* %271, i64 %273)
  %275 = load i32, i32* %18, align 4
  %276 = and i32 %275, 1
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %278, label %281

278:                                              ; preds = %269
  %279 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %280 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %279, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.18, i64 0, i64 0))
  br label %605

281:                                              ; preds = %269
  %282 = load i32, i32* %18, align 4
  %283 = sdiv i32 %282, 2
  store i32 %283, i32* %18, align 4
  store i32 0, i32* %17, align 4
  store i64 0, i64* %15, align 8
  br label %284

284:                                              ; preds = %337, %281
  %285 = load i32, i32* %17, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %293, label %287

287:                                              ; preds = %284
  %288 = load i64, i64* %15, align 8
  %289 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %290 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %289, i32 0, i32 2
  %291 = load i64, i64* %290, align 8
  %292 = icmp ult i64 %288, %291
  br label %293

293:                                              ; preds = %287, %284
  %294 = phi i1 [ false, %284 ], [ %292, %287 ]
  br i1 %294, label %295, label %340

295:                                              ; preds = %293
  %296 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %297 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %298 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %297, i32 0, i32 3
  %299 = load i32*, i32** %298, align 8
  %300 = load i64, i64* %15, align 8
  %301 = getelementptr inbounds i32, i32* %299, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = call i64 @testing_cipher_suite_filter(%struct.tlsv1_server* %296, i32 %302)
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %295
  br label %337

306:                                              ; preds = %295
  %307 = load i64*, i64** %10, align 8
  store i64* %307, i64** %12, align 8
  store i64 0, i64* %16, align 8
  br label %308

308:                                              ; preds = %333, %306
  %309 = load i64, i64* %16, align 8
  %310 = load i32, i32* %18, align 4
  %311 = sext i32 %310 to i64
  %312 = icmp ult i64 %309, %311
  br i1 %312, label %313, label %336

313:                                              ; preds = %308
  %314 = load i64*, i64** %12, align 8
  %315 = call i8* @WPA_GET_BE16(i64* %314)
  %316 = ptrtoint i8* %315 to i32
  store i32 %316, i32* %22, align 4
  %317 = load i64*, i64** %12, align 8
  %318 = getelementptr inbounds i64, i64* %317, i64 2
  store i64* %318, i64** %12, align 8
  %319 = load i32, i32* %17, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %332, label %321

321:                                              ; preds = %313
  %322 = load i32, i32* %22, align 4
  %323 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %324 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %323, i32 0, i32 3
  %325 = load i32*, i32** %324, align 8
  %326 = load i64, i64* %15, align 8
  %327 = getelementptr inbounds i32, i32* %325, i64 %326
  %328 = load i32, i32* %327, align 4
  %329 = icmp eq i32 %322, %328
  br i1 %329, label %330, label %332

330:                                              ; preds = %321
  %331 = load i32, i32* %22, align 4
  store i32 %331, i32* %17, align 4
  br label %336

332:                                              ; preds = %321, %313
  br label %333

333:                                              ; preds = %332
  %334 = load i64, i64* %16, align 8
  %335 = add i64 %334, 1
  store i64 %335, i64* %16, align 8
  br label %308

336:                                              ; preds = %330, %308
  br label %337

337:                                              ; preds = %336, %305
  %338 = load i64, i64* %15, align 8
  %339 = add i64 %338, 1
  store i64 %339, i64* %15, align 8
  br label %284

340:                                              ; preds = %293
  %341 = load i32, i32* %18, align 4
  %342 = mul nsw i32 %341, 2
  %343 = load i64*, i64** %10, align 8
  %344 = sext i32 %342 to i64
  %345 = getelementptr inbounds i64, i64* %343, i64 %344
  store i64* %345, i64** %10, align 8
  %346 = load i32, i32* %17, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %355, label %348

348:                                              ; preds = %340
  %349 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %350 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %349, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0))
  %351 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %352 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %353 = load i32, i32* @TLS_ALERT_ILLEGAL_PARAMETER, align 4
  %354 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %351, i32 %352, i32 %353)
  store i32 -1, i32* %5, align 4
  br label %612

355:                                              ; preds = %340
  %356 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %357 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %356, i32 0, i32 9
  %358 = load i32, i32* %17, align 4
  %359 = call i64 @tlsv1_record_set_cipher_suite(%struct.TYPE_2__* %357, i32 %358)
  %360 = icmp slt i64 %359, 0
  br i1 %360, label %361, label %368

361:                                              ; preds = %355
  %362 = load i32, i32* @MSG_DEBUG, align 4
  %363 = call i32 @wpa_printf(i32 %362, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.20, i64 0, i64 0))
  %364 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %365 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %366 = load i32, i32* @TLS_ALERT_INTERNAL_ERROR, align 4
  %367 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %364, i32 %365, i32 %366)
  store i32 -1, i32* %5, align 4
  br label %612

368:                                              ; preds = %355
  %369 = load i32, i32* %17, align 4
  %370 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %371 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %370, i32 0, i32 4
  store i32 %369, i32* %371, align 8
  %372 = load i64*, i64** %11, align 8
  %373 = load i64*, i64** %10, align 8
  %374 = ptrtoint i64* %372 to i64
  %375 = ptrtoint i64* %373 to i64
  %376 = sub i64 %374, %375
  %377 = sdiv exact i64 %376, 8
  %378 = icmp slt i64 %377, 1
  br i1 %378, label %379, label %382

379:                                              ; preds = %368
  %380 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %381 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %380, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.21, i64 0, i64 0))
  br label %605

382:                                              ; preds = %368
  %383 = load i64*, i64** %10, align 8
  %384 = getelementptr inbounds i64, i64* %383, i32 1
  store i64* %384, i64** %10, align 8
  %385 = load i64, i64* %383, align 8
  %386 = trunc i64 %385 to i32
  store i32 %386, i32* %18, align 4
  %387 = load i64*, i64** %11, align 8
  %388 = load i64*, i64** %10, align 8
  %389 = ptrtoint i64* %387 to i64
  %390 = ptrtoint i64* %388 to i64
  %391 = sub i64 %389, %390
  %392 = sdiv exact i64 %391, 8
  %393 = load i32, i32* %18, align 4
  %394 = sext i32 %393 to i64
  %395 = icmp slt i64 %392, %394
  br i1 %395, label %396, label %399

396:                                              ; preds = %382
  %397 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %398 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %397, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.22, i64 0, i64 0))
  br label %605

399:                                              ; preds = %382
  %400 = load i32, i32* @MSG_MSGDUMP, align 4
  %401 = load i64*, i64** %10, align 8
  %402 = load i32, i32* %18, align 4
  %403 = sext i32 %402 to i64
  %404 = call i32 @wpa_hexdump(i32 %400, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i64 0, i64 0), i64* %401, i64 %403)
  store i32 0, i32* %19, align 4
  store i64 0, i64* %15, align 8
  br label %405

405:                                              ; preds = %419, %399
  %406 = load i64, i64* %15, align 8
  %407 = load i32, i32* %18, align 4
  %408 = sext i32 %407 to i64
  %409 = icmp ult i64 %406, %408
  br i1 %409, label %410, label %422

410:                                              ; preds = %405
  %411 = load i64*, i64** %10, align 8
  %412 = getelementptr inbounds i64, i64* %411, i32 1
  store i64* %412, i64** %10, align 8
  %413 = load i64, i64* %411, align 8
  %414 = load i32, i32* @TLS_COMPRESSION_NULL, align 4
  %415 = sext i32 %414 to i64
  %416 = icmp eq i64 %413, %415
  br i1 %416, label %417, label %418

417:                                              ; preds = %410
  store i32 1, i32* %19, align 4
  br label %418

418:                                              ; preds = %417, %410
  br label %419

419:                                              ; preds = %418
  %420 = load i64, i64* %15, align 8
  %421 = add i64 %420, 1
  store i64 %421, i64* %15, align 8
  br label %405

422:                                              ; preds = %405
  %423 = load i32, i32* %19, align 4
  %424 = icmp ne i32 %423, 0
  br i1 %424, label %432, label %425

425:                                              ; preds = %422
  %426 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %427 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %426, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.24, i64 0, i64 0))
  %428 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %429 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %430 = load i32, i32* @TLS_ALERT_ILLEGAL_PARAMETER, align 4
  %431 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %428, i32 %429, i32 %430)
  store i32 -1, i32* %5, align 4
  br label %612

432:                                              ; preds = %422
  %433 = load i64*, i64** %11, align 8
  %434 = load i64*, i64** %10, align 8
  %435 = ptrtoint i64* %433 to i64
  %436 = ptrtoint i64* %434 to i64
  %437 = sub i64 %435, %436
  %438 = sdiv exact i64 %437, 8
  %439 = icmp eq i64 %438, 1
  br i1 %439, label %440, label %445

440:                                              ; preds = %432
  %441 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %442 = load i64*, i64** %10, align 8
  %443 = load i64, i64* %442, align 8
  %444 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %441, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.25, i64 0, i64 0), i64 %443)
  br label %605

445:                                              ; preds = %432
  %446 = load i64*, i64** %11, align 8
  %447 = load i64*, i64** %10, align 8
  %448 = ptrtoint i64* %446 to i64
  %449 = ptrtoint i64* %447 to i64
  %450 = sub i64 %448, %449
  %451 = sdiv exact i64 %450, 8
  %452 = icmp sge i64 %451, 2
  br i1 %452, label %453, label %592

453:                                              ; preds = %445
  %454 = load i64*, i64** %10, align 8
  %455 = call i8* @WPA_GET_BE16(i64* %454)
  %456 = ptrtoint i8* %455 to i32
  store i32 %456, i32* %21, align 4
  %457 = load i64*, i64** %10, align 8
  %458 = getelementptr inbounds i64, i64* %457, i64 2
  store i64* %458, i64** %10, align 8
  %459 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %460 = load i32, i32* %21, align 4
  %461 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %459, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.26, i64 0, i64 0), i32 %460)
  %462 = load i64*, i64** %11, align 8
  %463 = load i64*, i64** %10, align 8
  %464 = ptrtoint i64* %462 to i64
  %465 = ptrtoint i64* %463 to i64
  %466 = sub i64 %464, %465
  %467 = sdiv exact i64 %466, 8
  %468 = load i32, i32* %21, align 4
  %469 = sext i32 %468 to i64
  %470 = icmp ne i64 %467, %469
  br i1 %470, label %471, label %482

471:                                              ; preds = %453
  %472 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %473 = load i32, i32* %21, align 4
  %474 = load i64*, i64** %11, align 8
  %475 = load i64*, i64** %10, align 8
  %476 = ptrtoint i64* %474 to i64
  %477 = ptrtoint i64* %475 to i64
  %478 = sub i64 %476, %477
  %479 = sdiv exact i64 %478, 8
  %480 = trunc i64 %479 to i32
  %481 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %472, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.27, i64 0, i64 0), i32 %473, i32 %480)
  br label %605

482:                                              ; preds = %453
  br label %483

483:                                              ; preds = %586, %482
  %484 = load i64*, i64** %10, align 8
  %485 = load i64*, i64** %11, align 8
  %486 = icmp ult i64* %484, %485
  br i1 %486, label %487, label %591

487:                                              ; preds = %483
  %488 = load i64*, i64** %11, align 8
  %489 = load i64*, i64** %10, align 8
  %490 = ptrtoint i64* %488 to i64
  %491 = ptrtoint i64* %489 to i64
  %492 = sub i64 %490, %491
  %493 = sdiv exact i64 %492, 8
  %494 = icmp slt i64 %493, 2
  br i1 %494, label %495, label %498

495:                                              ; preds = %487
  %496 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %497 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %496, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.28, i64 0, i64 0))
  br label %605

498:                                              ; preds = %487
  %499 = load i64*, i64** %10, align 8
  %500 = call i8* @WPA_GET_BE16(i64* %499)
  %501 = ptrtoint i8* %500 to i32
  store i32 %501, i32* %20, align 4
  %502 = load i64*, i64** %10, align 8
  %503 = getelementptr inbounds i64, i64* %502, i64 2
  store i64* %503, i64** %10, align 8
  %504 = load i64*, i64** %11, align 8
  %505 = load i64*, i64** %10, align 8
  %506 = ptrtoint i64* %504 to i64
  %507 = ptrtoint i64* %505 to i64
  %508 = sub i64 %506, %507
  %509 = sdiv exact i64 %508, 8
  %510 = icmp slt i64 %509, 2
  br i1 %510, label %511, label %514

511:                                              ; preds = %498
  %512 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %513 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %512, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i64 0, i64 0))
  br label %605

514:                                              ; preds = %498
  %515 = load i64*, i64** %10, align 8
  %516 = call i8* @WPA_GET_BE16(i64* %515)
  %517 = ptrtoint i8* %516 to i32
  store i32 %517, i32* %21, align 4
  %518 = load i64*, i64** %10, align 8
  %519 = getelementptr inbounds i64, i64* %518, i64 2
  store i64* %519, i64** %10, align 8
  %520 = load i64*, i64** %11, align 8
  %521 = load i64*, i64** %10, align 8
  %522 = ptrtoint i64* %520 to i64
  %523 = ptrtoint i64* %521 to i64
  %524 = sub i64 %522, %523
  %525 = sdiv exact i64 %524, 8
  %526 = load i32, i32* %21, align 4
  %527 = sext i32 %526 to i64
  %528 = icmp slt i64 %525, %527
  br i1 %528, label %529, label %532

529:                                              ; preds = %514
  %530 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %531 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %530, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.30, i64 0, i64 0))
  br label %605

532:                                              ; preds = %514
  %533 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %534 = load i32, i32* %20, align 4
  %535 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %533, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.31, i64 0, i64 0), i32 %534)
  %536 = load i32, i32* @MSG_MSGDUMP, align 4
  %537 = load i64*, i64** %10, align 8
  %538 = load i32, i32* %21, align 4
  %539 = sext i32 %538 to i64
  %540 = call i32 @wpa_hexdump(i32 %536, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.32, i64 0, i64 0), i64* %537, i64 %539)
  %541 = load i32, i32* %20, align 4
  %542 = load i32, i32* @TLS_EXT_SESSION_TICKET, align 4
  %543 = icmp eq i32 %541, %542
  br i1 %543, label %544, label %568

544:                                              ; preds = %532
  %545 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %546 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %545, i32 0, i32 5
  %547 = load i64*, i64** %546, align 8
  %548 = call i32 @os_free(i64* %547)
  %549 = load i32, i32* %21, align 4
  %550 = call i64* @os_malloc(i32 %549)
  %551 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %552 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %551, i32 0, i32 5
  store i64* %550, i64** %552, align 8
  %553 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %554 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %553, i32 0, i32 5
  %555 = load i64*, i64** %554, align 8
  %556 = icmp ne i64* %555, null
  br i1 %556, label %557, label %567

557:                                              ; preds = %544
  %558 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %559 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %558, i32 0, i32 5
  %560 = load i64*, i64** %559, align 8
  %561 = load i64*, i64** %10, align 8
  %562 = load i32, i32* %21, align 4
  %563 = call i32 @os_memcpy(i64* %560, i64* %561, i32 %562)
  %564 = load i32, i32* %21, align 4
  %565 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %566 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %565, i32 0, i32 6
  store i32 %564, i32* %566, align 8
  br label %567

567:                                              ; preds = %557, %544
  br label %586

568:                                              ; preds = %532
  %569 = load i32, i32* %20, align 4
  %570 = load i32, i32* @TLS_EXT_STATUS_REQUEST, align 4
  %571 = icmp eq i32 %569, %570
  br i1 %571, label %572, label %575

572:                                              ; preds = %568
  %573 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %574 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %573, i32 0, i32 7
  store i32 1, i32* %574, align 4
  br label %585

575:                                              ; preds = %568
  %576 = load i32, i32* %20, align 4
  %577 = load i32, i32* @TLS_EXT_STATUS_REQUEST_V2, align 4
  %578 = icmp eq i32 %576, %577
  br i1 %578, label %579, label %584

579:                                              ; preds = %575
  %580 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %581 = load i64*, i64** %10, align 8
  %582 = load i32, i32* %21, align 4
  %583 = call i32 @tls_process_status_request_v2(%struct.tlsv1_server* %580, i64* %581, i32 %582)
  br label %584

584:                                              ; preds = %579, %575
  br label %585

585:                                              ; preds = %584, %572
  br label %586

586:                                              ; preds = %585, %567
  %587 = load i32, i32* %21, align 4
  %588 = load i64*, i64** %10, align 8
  %589 = sext i32 %587 to i64
  %590 = getelementptr inbounds i64, i64* %588, i64 %589
  store i64* %590, i64** %10, align 8
  br label %483

591:                                              ; preds = %483
  br label %592

592:                                              ; preds = %591, %445
  %593 = load i64*, i64** %11, align 8
  %594 = load i64*, i64** %8, align 8
  %595 = ptrtoint i64* %593 to i64
  %596 = ptrtoint i64* %594 to i64
  %597 = sub i64 %595, %596
  %598 = sdiv exact i64 %597, 8
  %599 = load i64*, i64** %9, align 8
  store i64 %598, i64* %599, align 8
  %600 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %601 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %600, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.33, i64 0, i64 0))
  %602 = load i32, i32* @SERVER_HELLO, align 4
  %603 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %604 = getelementptr inbounds %struct.tlsv1_server, %struct.tlsv1_server* %603, i32 0, i32 8
  store i32 %602, i32* %604, align 8
  store i32 0, i32* %5, align 4
  br label %612

605:                                              ; preds = %529, %511, %495, %471, %440, %396, %379, %278, %266, %248, %226, %207, %179, %93, %71, %40
  %606 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %607 = call i32 (%struct.tlsv1_server*, i8*, ...) @tlsv1_server_log(%struct.tlsv1_server* %606, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.34, i64 0, i64 0))
  %608 = load %struct.tlsv1_server*, %struct.tlsv1_server** %6, align 8
  %609 = load i32, i32* @TLS_ALERT_LEVEL_FATAL, align 4
  %610 = load i32, i32* @TLS_ALERT_DECODE_ERROR, align 4
  %611 = call i32 @tlsv1_server_alert(%struct.tlsv1_server* %608, i32 %609, i32 %610)
  store i32 -1, i32* %5, align 4
  br label %612

612:                                              ; preds = %605, %592, %425, %361, %348, %117, %48, %26
  %613 = load i32, i32* %5, align 4
  ret i32 %613
}

declare dso_local i32 @tlsv1_server_log(%struct.tlsv1_server*, i8*, ...) #1

declare dso_local i32 @tlsv1_server_alert(%struct.tlsv1_server*, i32, i32) #1

declare dso_local i64 @WPA_GET_BE24(i64*) #1

declare dso_local i32 @wpa_hexdump(i32, i8*, i64*, i64) #1

declare dso_local i8* @WPA_GET_BE16(i64*) #1

declare dso_local i32 @tls_version_str(i32) #1

declare dso_local i32 @os_memcpy(i64*, i64*, i32) #1

declare dso_local i64 @testing_cipher_suite_filter(%struct.tlsv1_server*, i32) #1

declare dso_local i64 @tlsv1_record_set_cipher_suite(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

declare dso_local i32 @os_free(i64*) #1

declare dso_local i64* @os_malloc(i32) #1

declare dso_local i32 @tls_process_status_request_v2(%struct.tlsv1_server*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
