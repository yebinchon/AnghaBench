; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_get_record.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/record/extr_ssl3_record.c_ssl3_get_record.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i64, i64, i32, i64, i32, i32*, i32, i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)*, i32*, i32*, %struct.TYPE_31__*, i64, %struct.TYPE_29__, i32, i32, i32, i64 }
%struct.TYPE_31__ = type { %struct.TYPE_30__* }
%struct.TYPE_30__ = type { i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i8*, i32)*, i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i64, i32)* }
%struct.TYPE_32__ = type { i64, i32, i64, i8*, i32*, i64, i32, i64 }
%struct.TYPE_29__ = type { i64 }

@EVP_MAX_MD_SIZE = common dso_local global i32 0, align 4
@SSL_ST_READ_BODY = common dso_local global i64 0, align 8
@SSL3_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_F_SSL3_GET_RECORD = common dso_local global i32 0, align 4
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL2_MT_CLIENT_HELLO = common dso_local global i32 0, align 4
@SSL3_RT_HANDSHAKE = common dso_local global i64 0, align 8
@SSL2_VERSION = common dso_local global i32 0, align 4
@SSL2_RT_HEADER_LENGTH = common dso_local global i64 0, align 8
@SSL_AD_RECORD_OVERFLOW = common dso_local global i32 0, align 4
@SSL_R_PACKET_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@MIN_SSL2_RECORD_LEN = common dso_local global i64 0, align 8
@SSL_R_LENGTH_TOO_SHORT = common dso_local global i32 0, align 4
@SSL3_RT_HEADER = common dso_local global i32 0, align 4
@SSL_HRR_PENDING = common dso_local global i64 0, align 8
@SSL3_RT_ALERT = common dso_local global i64 0, align 8
@SSL_AD_NO_ALERT = common dso_local global i32 0, align 4
@SSL_R_WRONG_VERSION_NUMBER = common dso_local global i32 0, align 4
@SSL_AD_PROTOCOL_VERSION = common dso_local global i32 0, align 4
@SSL3_VERSION_MAJOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"HEAD \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"PUT \00", align 1
@SSL_R_HTTP_REQUEST = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"CONNE\00", align 1
@SSL_R_HTTPS_PROXY_REQUEST = common dso_local global i32 0, align 4
@SSL3_RT_APPLICATION_DATA = common dso_local global i64 0, align 8
@SSL3_RT_CHANGE_CIPHER_SPEC = common dso_local global i64 0, align 8
@ENC_READ_STATE_ALLOW_PLAIN_ALERTS = common dso_local global i64 0, align 8
@SSL_AD_UNEXPECTED_MESSAGE = common dso_local global i32 0, align 4
@SSL_R_BAD_RECORD_TYPE = common dso_local global i32 0, align 4
@TLS1_2_VERSION = common dso_local global i32 0, align 4
@SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH = common dso_local global i64 0, align 8
@SSL_R_ENCRYPTED_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL3_RT_MAX_ENCRYPTED_LENGTH = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_OVERHEAD = common dso_local global i64 0, align 8
@SSL_ST_READ_HEADER = common dso_local global i64 0, align 8
@EVP_CIPH_FLAG_PIPELINE = common dso_local global i32 0, align 4
@SSL_HRR_NONE = common dso_local global i64 0, align 8
@SSL_AD_ILLEGAL_PARAMETER = common dso_local global i32 0, align 4
@SSL_R_INVALID_CCS_MESSAGE = common dso_local global i32 0, align 4
@MAX_EMPTY_RECORDS = common dso_local global i64 0, align 8
@SSL_R_UNEXPECTED_CCS_MESSAGE = common dso_local global i32 0, align 4
@ERR_LIB_EVP = common dso_local global i32 0, align 4
@SSL_AD_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC = common dso_local global i32 0, align 4
@EARLY_DATA_CIPHERTEXT_OVERHEAD = common dso_local global i32 0, align 4
@SSL_AD_DECRYPTION_FAILED = common dso_local global i32 0, align 4
@SSL_R_BLOCK_CIPHER_PAD_IS_WRONG = common dso_local global i32 0, align 4
@EVP_CIPH_CBC_MODE = common dso_local global i64 0, align 8
@SSL3_RT_MAX_COMPRESSED_LENGTH = common dso_local global i64 0, align 8
@SSL_R_COMPRESSED_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_AD_DECOMPRESSION_FAILURE = common dso_local global i32 0, align 4
@SSL_R_BAD_DECOMPRESSION = common dso_local global i32 0, align 4
@SSL3_RT_INNER_CONTENT_TYPE = common dso_local global i32 0, align 4
@SSL_R_BAD_LENGTH = common dso_local global i32 0, align 4
@SSL3_RT_MAX_PLAIN_LENGTH = common dso_local global i64 0, align 8
@SSL_R_DATA_LENGTH_TOO_LONG = common dso_local global i32 0, align 4
@SSL_R_RECORD_TOO_SMALL = common dso_local global i32 0, align 4
@SSL_EARLY_DATA_READING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssl3_get_record(%struct.TYPE_33__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_33__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_32__*, align 8
  %10 = alloca %struct.TYPE_32__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %3, align 8
  %34 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %35 = zext i32 %34 to i64
  %36 = call i8* @llvm.stacksave()
  store i8* %36, i8** %14, align 8
  %37 = alloca i8, i64 %35, align 16
  store i64 %35, i64* %15, align 8
  store i64 0, i64* %19, align 8
  %38 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %38, i32 0, i32 4
  %40 = call %struct.TYPE_32__* @RECORD_LAYER_get_rrec(i32* %39)
  store %struct.TYPE_32__* %40, %struct.TYPE_32__** %9, align 8
  %41 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %41, i32 0, i32 4
  %43 = call i32* @RECORD_LAYER_get_rbuf(i32* %42)
  store i32* %43, i32** %11, align 8
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %20, align 8
  %47 = load i64, i64* %20, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  store i64 1, i64* %20, align 8
  br label %50

50:                                               ; preds = %49, %1
  %51 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %12, align 8
  br label %54

54:                                               ; preds = %561, %50
  %55 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %56 = load i64, i64* %19, align 8
  %57 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %55, i64 %56
  store %struct.TYPE_32__* %57, %struct.TYPE_32__** %10, align 8
  %58 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %59 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %58, i32 0, i32 4
  %60 = call i64 @RECORD_LAYER_get_rstate(i32* %59)
  %61 = load i64, i64* @SSL_ST_READ_BODY, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %54
  %64 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %64, i32 0, i32 4
  %66 = call i64 @RECORD_LAYER_get_packet_length(i32* %65)
  %67 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %410

69:                                               ; preds = %63, %54
  %70 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %71 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %72 = load i32*, i32** %11, align 8
  %73 = call i64 @SSL3_BUFFER_get_len(i32* %72)
  %74 = load i64, i64* %19, align 8
  %75 = icmp eq i64 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 1, i32 0
  %78 = call i32 @ssl3_read_n(%struct.TYPE_33__* %70, i64 %71, i64 %73, i32 0, i32 %77, i64* %8)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp sle i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

83:                                               ; preds = %69
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 4
  %86 = load i64, i64* @SSL_ST_READ_BODY, align 8
  %87 = call i32 @RECORD_LAYER_set_rstate(i32* %85, i64 %86)
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %88, i32 0, i32 4
  %90 = call i8* @RECORD_LAYER_get_packet(i32* %89)
  store i8* %90, i8** %13, align 8
  %91 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %91, i32 0, i32 4
  %93 = call i8* @RECORD_LAYER_get_packet(i32* %92)
  %94 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %94, i32 0, i32 4
  %96 = call i64 @RECORD_LAYER_get_packet_length(i32* %95)
  %97 = call i32 @PACKET_buf_init(i32* %22, i8* %93, i64 %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %83
  %100 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %101 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %102 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %103 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %104 = call i32 @SSLfatal(%struct.TYPE_33__* %100, i32 %101, i32 %102, i32 %103)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

105:                                              ; preds = %83
  %106 = load i32, i32* %22, align 4
  store i32 %106, i32* %23, align 4
  %107 = call i32 @PACKET_get_net_2_len(i32* %23, i64* %25)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = call i32 @PACKET_get_1(i32* %23, i32* %26)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %118, label %112

112:                                              ; preds = %109, %105
  %113 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %114 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %115 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %116 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %117 = call i32 @SSLfatal(%struct.TYPE_33__* %113, i32 %114, i32 %115, i32 %116)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

118:                                              ; preds = %109
  %119 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %119, i32 0, i32 16
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %174

123:                                              ; preds = %118
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 4
  %126 = call i64 @RECORD_LAYER_is_first_record(i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %174

128:                                              ; preds = %123
  %129 = load i64, i64* %25, align 8
  %130 = and i64 %129, 32768
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %174

132:                                              ; preds = %128
  %133 = load i32, i32* %26, align 4
  %134 = load i32, i32* @SSL2_MT_CLIENT_HELLO, align 4
  %135 = icmp eq i32 %133, %134
  br i1 %135, label %136, label %174

136:                                              ; preds = %132
  %137 = load i64, i64* @SSL3_RT_HANDSHAKE, align 8
  %138 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %139 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %138, i32 0, i32 0
  store i64 %137, i64* %139, align 8
  %140 = load i32, i32* @SSL2_VERSION, align 4
  %141 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %142 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %141, i32 0, i32 1
  store i32 %140, i32* %142, align 8
  %143 = load i64, i64* %25, align 8
  %144 = and i64 %143, 32767
  %145 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %146 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %145, i32 0, i32 2
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %148 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = load i32*, i32** %11, align 8
  %151 = call i64 @SSL3_BUFFER_get_len(i32* %150)
  %152 = load i64, i64* @SSL2_RT_HEADER_LENGTH, align 8
  %153 = sub i64 %151, %152
  %154 = icmp ugt i64 %149, %153
  br i1 %154, label %155, label %161

155:                                              ; preds = %136
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %157 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %158 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %159 = load i32, i32* @SSL_R_PACKET_LENGTH_TOO_LONG, align 4
  %160 = call i32 @SSLfatal(%struct.TYPE_33__* %156, i32 %157, i32 %158, i32 %159)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

161:                                              ; preds = %136
  %162 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @MIN_SSL2_RECORD_LEN, align 8
  %166 = icmp ult i64 %164, %165
  br i1 %166, label %167, label %173

167:                                              ; preds = %161
  %168 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %169 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %170 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %171 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %172 = call i32 @SSLfatal(%struct.TYPE_33__* %168, i32 %169, i32 %170, i32 %171)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

173:                                              ; preds = %161
  br label %409

174:                                              ; preds = %132, %128, %123, %118
  %175 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %175, i32 0, i32 7
  %177 = load i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)*, i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)** %176, align 8
  %178 = icmp ne i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)* %177, null
  br i1 %178, label %179, label %191

179:                                              ; preds = %174
  %180 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %181 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %180, i32 0, i32 7
  %182 = load i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)*, i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)** %181, align 8
  %183 = load i32, i32* @SSL3_RT_HEADER, align 4
  %184 = load i8*, i8** %13, align 8
  %185 = bitcast i8* %184 to i64*
  %186 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %187 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %187, i32 0, i32 6
  %189 = load i32, i32* %188, align 8
  %190 = call i32 %182(i32 0, i16 zeroext 0, i32 %183, i64* %185, i32 5, %struct.TYPE_33__* %186, i32 %189)
  br label %191

191:                                              ; preds = %179, %174
  %192 = call i32 @PACKET_get_1(i32* %22, i32* %26)
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %202

194:                                              ; preds = %191
  %195 = call i32 @PACKET_get_net_2(i32* %22, i32* %16)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %199 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %198, i32 0, i32 2
  %200 = call i32 @PACKET_get_net_2_len(i32* %22, i64* %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %208, label %202

202:                                              ; preds = %197, %194, %191
  %203 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %204 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %205 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %206 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %207 = call i32 @SSLfatal(%struct.TYPE_33__* %203, i32 %204, i32 %205, i32 %206)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

208:                                              ; preds = %197
  %209 = load i32, i32* %26, align 4
  %210 = zext i32 %209 to i64
  %211 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %212 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %211, i32 0, i32 0
  store i64 %210, i64* %212, align 8
  %213 = load i32, i32* %16, align 4
  %214 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 8
  %216 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %216, i32 0, i32 15
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %278, label %220

220:                                              ; preds = %208
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %222 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %278, label %224

224:                                              ; preds = %220
  %225 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @SSL_HRR_PENDING, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %278

230:                                              ; preds = %224
  %231 = load i32, i32* %16, align 4
  %232 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %232, i32 0, i32 2
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %231, %234
  br i1 %235, label %236, label %278

236:                                              ; preds = %230
  %237 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = and i32 %239, 65280
  %241 = load i32, i32* %16, align 4
  %242 = and i32 %241, 65280
  %243 = icmp eq i32 %240, %242
  br i1 %243, label %244, label %272

244:                                              ; preds = %236
  %245 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %246 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %245, i32 0, i32 14
  %247 = load i32, i32* %246, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %272, label %249

249:                                              ; preds = %244
  %250 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %251 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %250, i32 0, i32 13
  %252 = load i32, i32* %251, align 8
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %272, label %254

254:                                              ; preds = %249
  %255 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %255, i32 0, i32 0
  %257 = load i64, i64* %256, align 8
  %258 = load i64, i64* @SSL3_RT_ALERT, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %254
  %261 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %262 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %263 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %264 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %265 = call i32 @SSLfatal(%struct.TYPE_33__* %261, i32 %262, i32 %263, i32 %264)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

266:                                              ; preds = %254
  %267 = load i32, i32* %16, align 4
  %268 = trunc i32 %267 to i16
  %269 = zext i16 %268 to i32
  %270 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 2
  store i32 %269, i32* %271, align 8
  br label %272

272:                                              ; preds = %266, %249, %244, %236
  %273 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %274 = load i32, i32* @SSL_AD_PROTOCOL_VERSION, align 4
  %275 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %276 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %277 = call i32 @SSLfatal(%struct.TYPE_33__* %273, i32 %274, i32 %275, i32 %276)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

278:                                              ; preds = %230, %224, %220, %208
  %279 = load i32, i32* %16, align 4
  %280 = lshr i32 %279, 8
  %281 = load i32, i32* @SSL3_VERSION_MAJOR, align 4
  %282 = icmp ne i32 %280, %281
  br i1 %282, label %283, label %336

283:                                              ; preds = %278
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 4
  %286 = call i64 @RECORD_LAYER_is_first_record(i32* %285)
  %287 = icmp ne i64 %286, 0
  br i1 %287, label %288, label %330

288:                                              ; preds = %283
  %289 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %290 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %289, i32 0, i32 4
  %291 = call i8* @RECORD_LAYER_get_packet(i32* %290)
  store i8* %291, i8** %13, align 8
  %292 = load i8*, i8** %13, align 8
  %293 = call i64 @strncmp(i8* %292, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %294 = icmp eq i64 %293, 0
  br i1 %294, label %307, label %295

295:                                              ; preds = %288
  %296 = load i8*, i8** %13, align 8
  %297 = call i64 @strncmp(i8* %296, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 5)
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %307, label %299

299:                                              ; preds = %295
  %300 = load i8*, i8** %13, align 8
  %301 = call i64 @strncmp(i8* %300, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 5)
  %302 = icmp eq i64 %301, 0
  br i1 %302, label %307, label %303

303:                                              ; preds = %299
  %304 = load i8*, i8** %13, align 8
  %305 = call i64 @strncmp(i8* %304, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %306 = icmp eq i64 %305, 0
  br i1 %306, label %307, label %313

307:                                              ; preds = %303, %299, %295, %288
  %308 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %309 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %310 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %311 = load i32, i32* @SSL_R_HTTP_REQUEST, align 4
  %312 = call i32 @SSLfatal(%struct.TYPE_33__* %308, i32 %309, i32 %310, i32 %311)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

313:                                              ; preds = %303
  %314 = load i8*, i8** %13, align 8
  %315 = call i64 @strncmp(i8* %314, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %313
  %318 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %319 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %320 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %321 = load i32, i32* @SSL_R_HTTPS_PROXY_REQUEST, align 4
  %322 = call i32 @SSLfatal(%struct.TYPE_33__* %318, i32 %319, i32 %320, i32 %321)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

323:                                              ; preds = %313
  br label %324

324:                                              ; preds = %323
  %325 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %326 = load i32, i32* @SSL_AD_NO_ALERT, align 4
  %327 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %328 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %329 = call i32 @SSLfatal(%struct.TYPE_33__* %325, i32 %326, i32 %327, i32 %328)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

330:                                              ; preds = %283
  %331 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %332 = load i32, i32* @SSL_AD_PROTOCOL_VERSION, align 4
  %333 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %334 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %335 = call i32 @SSLfatal(%struct.TYPE_33__* %331, i32 %332, i32 %333, i32 %334)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

336:                                              ; preds = %278
  %337 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %338 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %393

340:                                              ; preds = %336
  %341 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %342 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %341, i32 0, i32 8
  %343 = load i32*, i32** %342, align 8
  %344 = icmp ne i32* %343, null
  br i1 %344, label %345, label %393

345:                                              ; preds = %340
  %346 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %347 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @SSL3_RT_APPLICATION_DATA, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %351, label %380

351:                                              ; preds = %345
  %352 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %353 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %352, i32 0, i32 0
  %354 = load i64, i64* %353, align 8
  %355 = load i64, i64* @SSL3_RT_CHANGE_CIPHER_SPEC, align 8
  %356 = icmp ne i64 %354, %355
  br i1 %356, label %361, label %357

357:                                              ; preds = %351
  %358 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %359 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_33__* %358)
  %360 = icmp ne i64 %359, 0
  br i1 %360, label %380, label %361

361:                                              ; preds = %357, %351
  %362 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %363 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %362, i32 0, i32 0
  %364 = load i64, i64* %363, align 8
  %365 = load i64, i64* @SSL3_RT_ALERT, align 8
  %366 = icmp ne i64 %364, %365
  br i1 %366, label %374, label %367

367:                                              ; preds = %361
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 12
  %370 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %369, i32 0, i32 0
  %371 = load i64, i64* %370, align 8
  %372 = load i64, i64* @ENC_READ_STATE_ALLOW_PLAIN_ALERTS, align 8
  %373 = icmp ne i64 %371, %372
  br i1 %373, label %374, label %380

374:                                              ; preds = %367, %361
  %375 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %376 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %377 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %378 = load i32, i32* @SSL_R_BAD_RECORD_TYPE, align 4
  %379 = call i32 @SSLfatal(%struct.TYPE_33__* %375, i32 %376, i32 %377, i32 %378)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

380:                                              ; preds = %367, %357, %345
  %381 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %381, i32 0, i32 1
  %383 = load i32, i32* %382, align 8
  %384 = load i32, i32* @TLS1_2_VERSION, align 4
  %385 = icmp ne i32 %383, %384
  br i1 %385, label %386, label %392

386:                                              ; preds = %380
  %387 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %388 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %389 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %390 = load i32, i32* @SSL_R_WRONG_VERSION_NUMBER, align 4
  %391 = call i32 @SSLfatal(%struct.TYPE_33__* %387, i32 %388, i32 %389, i32 %390)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

392:                                              ; preds = %380
  br label %393

393:                                              ; preds = %392, %340, %336
  %394 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %395 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %394, i32 0, i32 2
  %396 = load i64, i64* %395, align 8
  %397 = load i32*, i32** %11, align 8
  %398 = call i64 @SSL3_BUFFER_get_len(i32* %397)
  %399 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %400 = sub i64 %398, %399
  %401 = icmp ugt i64 %396, %400
  br i1 %401, label %402, label %408

402:                                              ; preds = %393
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %404 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %405 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %406 = load i32, i32* @SSL_R_PACKET_LENGTH_TOO_LONG, align 4
  %407 = call i32 @SSLfatal(%struct.TYPE_33__* %403, i32 %404, i32 %405, i32 %406)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

408:                                              ; preds = %393
  br label %409

409:                                              ; preds = %408, %173
  br label %410

410:                                              ; preds = %409, %63
  %411 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %412 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %411)
  %413 = icmp ne i64 %412, 0
  br i1 %413, label %414, label %427

414:                                              ; preds = %410
  %415 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %416 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %415, i32 0, i32 2
  %417 = load i64, i64* %416, align 8
  %418 = load i64, i64* @SSL3_RT_MAX_TLS13_ENCRYPTED_LENGTH, align 8
  %419 = icmp ugt i64 %417, %418
  br i1 %419, label %420, label %426

420:                                              ; preds = %414
  %421 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %422 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %423 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %424 = load i32, i32* @SSL_R_ENCRYPTED_LENGTH_TOO_LONG, align 4
  %425 = call i32 @SSLfatal(%struct.TYPE_33__* %421, i32 %422, i32 %423, i32 %424)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

426:                                              ; preds = %414
  br label %450

427:                                              ; preds = %410
  %428 = load i64, i64* @SSL3_RT_MAX_ENCRYPTED_LENGTH, align 8
  store i64 %428, i64* %28, align 8
  %429 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %430 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %429, i32 0, i32 9
  %431 = load i32*, i32** %430, align 8
  %432 = icmp eq i32* %431, null
  br i1 %432, label %433, label %437

433:                                              ; preds = %427
  %434 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_OVERHEAD, align 8
  %435 = load i64, i64* %28, align 8
  %436 = sub i64 %435, %434
  store i64 %436, i64* %28, align 8
  br label %437

437:                                              ; preds = %433, %427
  %438 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %439 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %438, i32 0, i32 2
  %440 = load i64, i64* %439, align 8
  %441 = load i64, i64* %28, align 8
  %442 = icmp ugt i64 %440, %441
  br i1 %442, label %443, label %449

443:                                              ; preds = %437
  %444 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %445 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %446 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %447 = load i32, i32* @SSL_R_ENCRYPTED_LENGTH_TOO_LONG, align 4
  %448 = call i32 @SSLfatal(%struct.TYPE_33__* %444, i32 %445, i32 %446, i32 %447)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

449:                                              ; preds = %437
  br label %450

450:                                              ; preds = %449, %426
  %451 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %452 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %451, i32 0, i32 1
  %453 = load i32, i32* %452, align 8
  %454 = load i32, i32* @SSL2_VERSION, align 4
  %455 = icmp eq i32 %453, %454
  br i1 %455, label %456, label %464

456:                                              ; preds = %450
  %457 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %458 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %457, i32 0, i32 2
  %459 = load i64, i64* %458, align 8
  %460 = load i64, i64* @SSL2_RT_HEADER_LENGTH, align 8
  %461 = add i64 %459, %460
  %462 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %463 = sub i64 %461, %462
  store i64 %463, i64* %7, align 8
  br label %468

464:                                              ; preds = %450
  %465 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %466 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %465, i32 0, i32 2
  %467 = load i64, i64* %466, align 8
  store i64 %467, i64* %7, align 8
  br label %468

468:                                              ; preds = %464, %456
  %469 = load i64, i64* %7, align 8
  %470 = icmp ugt i64 %469, 0
  br i1 %470, label %471, label %481

471:                                              ; preds = %468
  %472 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %473 = load i64, i64* %7, align 8
  %474 = load i64, i64* %7, align 8
  %475 = call i32 @ssl3_read_n(%struct.TYPE_33__* %472, i64 %473, i64 %474, i32 1, i32 0, i64* %8)
  store i32 %475, i32* %5, align 4
  %476 = load i32, i32* %5, align 4
  %477 = icmp sle i32 %476, 0
  br i1 %477, label %478, label %480

478:                                              ; preds = %471
  %479 = load i32, i32* %5, align 4
  store i32 %479, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

480:                                              ; preds = %471
  br label %481

481:                                              ; preds = %480, %468
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %482, i32 0, i32 4
  %484 = load i64, i64* @SSL_ST_READ_HEADER, align 8
  %485 = call i32 @RECORD_LAYER_set_rstate(i32* %483, i64 %484)
  %486 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %487 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %486, i32 0, i32 1
  %488 = load i32, i32* %487, align 8
  %489 = load i32, i32* @SSL2_VERSION, align 4
  %490 = icmp eq i32 %488, %489
  br i1 %490, label %491, label %499

491:                                              ; preds = %481
  %492 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %493 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %492, i32 0, i32 4
  %494 = call i8* @RECORD_LAYER_get_packet(i32* %493)
  %495 = load i64, i64* @SSL2_RT_HEADER_LENGTH, align 8
  %496 = getelementptr inbounds i8, i8* %494, i64 %495
  %497 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %498 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %497, i32 0, i32 3
  store i8* %496, i8** %498, align 8
  br label %507

499:                                              ; preds = %481
  %500 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %501 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %500, i32 0, i32 4
  %502 = call i8* @RECORD_LAYER_get_packet(i32* %501)
  %503 = load i64, i64* @SSL3_RT_HEADER_LENGTH, align 8
  %504 = getelementptr inbounds i8, i8* %502, i64 %503
  %505 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %506 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %505, i32 0, i32 3
  store i8* %504, i8** %506, align 8
  br label %507

507:                                              ; preds = %499, %491
  %508 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %509 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %508, i32 0, i32 3
  %510 = load i8*, i8** %509, align 8
  %511 = bitcast i8* %510 to i32*
  %512 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %513 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %512, i32 0, i32 4
  store i32* %511, i32** %513, align 8
  %514 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %515 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %514, i32 0, i32 2
  %516 = load i64, i64* %515, align 8
  %517 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %518 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %517, i32 0, i32 5
  store i64 %516, i64* %518, align 8
  %519 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %520 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %519, i32 0, i32 6
  store i32 0, i32* %520, align 8
  %521 = load i64, i64* %19, align 8
  %522 = add i64 %521, 1
  store i64 %522, i64* %19, align 8
  %523 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %524 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %523, i32 0, i32 4
  %525 = call i32 @RECORD_LAYER_reset_packet_length(i32* %524)
  %526 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %527 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %526, i32 0, i32 4
  %528 = call i32 @RECORD_LAYER_clear_first_record(i32* %527)
  br label %529

529:                                              ; preds = %507
  %530 = load i64, i64* %19, align 8
  %531 = load i64, i64* %20, align 8
  %532 = icmp ult i64 %530, %531
  br i1 %532, label %533, label %561

533:                                              ; preds = %529
  %534 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %535 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %534, i32 0, i32 0
  %536 = load i64, i64* %535, align 8
  %537 = load i64, i64* @SSL3_RT_APPLICATION_DATA, align 8
  %538 = icmp eq i64 %536, %537
  br i1 %538, label %539, label %561

539:                                              ; preds = %533
  %540 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %541 = call i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_33__* %540)
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %543, label %561

543:                                              ; preds = %539
  %544 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %545 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %544, i32 0, i32 8
  %546 = load i32*, i32** %545, align 8
  %547 = icmp ne i32* %546, null
  br i1 %547, label %548, label %561

548:                                              ; preds = %543
  %549 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %550 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %549, i32 0, i32 8
  %551 = load i32*, i32** %550, align 8
  %552 = call i32 @EVP_CIPHER_CTX_cipher(i32* %551)
  %553 = call i32 @EVP_CIPHER_flags(i32 %552)
  %554 = load i32, i32* @EVP_CIPH_FLAG_PIPELINE, align 4
  %555 = and i32 %553, %554
  %556 = icmp ne i32 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %548
  %558 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %559 = call i64 @ssl3_record_app_data_waiting(%struct.TYPE_33__* %558)
  %560 = icmp ne i64 %559, 0
  br label %561

561:                                              ; preds = %557, %548, %543, %539, %533, %529
  %562 = phi i1 [ false, %548 ], [ false, %543 ], [ false, %539 ], [ false, %533 ], [ false, %529 ], [ %560, %557 ]
  br i1 %562, label %54, label %563

563:                                              ; preds = %561
  %564 = load i64, i64* %19, align 8
  %565 = icmp eq i64 %564, 1
  br i1 %565, label %566, label %628

566:                                              ; preds = %563
  %567 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %568 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %567, i32 0, i32 0
  %569 = load i64, i64* %568, align 8
  %570 = load i64, i64* @SSL3_RT_CHANGE_CIPHER_SPEC, align 8
  %571 = icmp eq i64 %569, %570
  br i1 %571, label %572, label %628

572:                                              ; preds = %566
  %573 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %574 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %573)
  %575 = icmp ne i64 %574, 0
  br i1 %575, label %582, label %576

576:                                              ; preds = %572
  %577 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %578 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %577, i32 0, i32 1
  %579 = load i64, i64* %578, align 8
  %580 = load i64, i64* @SSL_HRR_NONE, align 8
  %581 = icmp ne i64 %579, %580
  br i1 %581, label %582, label %628

582:                                              ; preds = %576, %572
  %583 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %584 = call i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_33__* %583)
  %585 = icmp ne i64 %584, 0
  br i1 %585, label %586, label %628

586:                                              ; preds = %582
  %587 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %588 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %587, i32 0, i32 2
  %589 = load i64, i64* %588, align 8
  %590 = icmp ne i64 %589, 1
  br i1 %590, label %598, label %591

591:                                              ; preds = %586
  %592 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %593 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %592, i32 0, i32 4
  %594 = load i32*, i32** %593, align 8
  %595 = getelementptr inbounds i32, i32* %594, i64 0
  %596 = load i32, i32* %595, align 4
  %597 = icmp ne i32 %596, 1
  br i1 %597, label %598, label %604

598:                                              ; preds = %591, %586
  %599 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %600 = load i32, i32* @SSL_AD_ILLEGAL_PARAMETER, align 4
  %601 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %602 = load i32, i32* @SSL_R_INVALID_CCS_MESSAGE, align 4
  %603 = call i32 @SSLfatal(%struct.TYPE_33__* %599, i32 %600, i32 %601, i32 %602)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

604:                                              ; preds = %591
  %605 = load i64, i64* @SSL3_RT_HANDSHAKE, align 8
  %606 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %607 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %606, i32 0, i32 0
  store i64 %605, i64* %607, align 8
  %608 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %609 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %608, i32 0, i32 4
  %610 = call i32 @RECORD_LAYER_inc_empty_record_count(i32* %609)
  %611 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %612 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %611, i32 0, i32 4
  %613 = call i64 @RECORD_LAYER_get_empty_record_count(i32* %612)
  %614 = load i64, i64* @MAX_EMPTY_RECORDS, align 8
  %615 = icmp sgt i64 %613, %614
  br i1 %615, label %616, label %622

616:                                              ; preds = %604
  %617 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %618 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %619 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %620 = load i32, i32* @SSL_R_UNEXPECTED_CCS_MESSAGE, align 4
  %621 = call i32 @SSLfatal(%struct.TYPE_33__* %617, i32 %618, i32 %619, i32 %620)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

622:                                              ; preds = %604
  %623 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %624 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %623, i32 0, i32 6
  store i32 1, i32* %624, align 8
  %625 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %626 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %625, i32 0, i32 4
  %627 = call i32 @RECORD_LAYER_set_numrpipes(i32* %626, i64 1)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

628:                                              ; preds = %582, %576, %566, %563
  %629 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %630 = call i64 @SSL_READ_ETM(%struct.TYPE_33__* %629)
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %724

632:                                              ; preds = %628
  %633 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %634 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %633, i32 0, i32 11
  %635 = load i64, i64* %634, align 8
  %636 = icmp ne i64 %635, 0
  br i1 %636, label %637, label %724

637:                                              ; preds = %632
  %638 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %639 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %638, i32 0, i32 11
  %640 = load i64, i64* %639, align 8
  %641 = call i8* @EVP_MD_CTX_size(i64 %640)
  %642 = ptrtoint i8* %641 to i32
  store i32 %642, i32* %18, align 4
  %643 = load i32, i32* %18, align 4
  %644 = icmp sge i32 %643, 0
  br i1 %644, label %645, label %649

645:                                              ; preds = %637
  %646 = load i32, i32* %18, align 4
  %647 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %648 = icmp sle i32 %646, %647
  br label %649

649:                                              ; preds = %645, %637
  %650 = phi i1 [ false, %637 ], [ %648, %645 ]
  %651 = zext i1 %650 to i32
  %652 = call i32 @ossl_assert(i32 %651)
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %660, label %654

654:                                              ; preds = %649
  %655 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %656 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %657 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %658 = load i32, i32* @ERR_LIB_EVP, align 4
  %659 = call i32 @SSLfatal(%struct.TYPE_33__* %655, i32 %656, i32 %657, i32 %658)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

660:                                              ; preds = %649
  %661 = load i32, i32* %18, align 4
  %662 = sext i32 %661 to i64
  store i64 %662, i64* %17, align 8
  store i64 0, i64* %21, align 8
  br label %663

663:                                              ; preds = %720, %660
  %664 = load i64, i64* %21, align 8
  %665 = load i64, i64* %19, align 8
  %666 = icmp ult i64 %664, %665
  br i1 %666, label %667, label %723

667:                                              ; preds = %663
  %668 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %669 = load i64, i64* %21, align 8
  %670 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %668, i64 %669
  store %struct.TYPE_32__* %670, %struct.TYPE_32__** %10, align 8
  %671 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %672 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %671, i32 0, i32 2
  %673 = load i64, i64* %672, align 8
  %674 = load i64, i64* %17, align 8
  %675 = icmp ult i64 %673, %674
  br i1 %675, label %676, label %682

676:                                              ; preds = %667
  %677 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %678 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %679 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %680 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %681 = call i32 @SSLfatal(%struct.TYPE_33__* %677, i32 %678, i32 %679, i32 %680)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

682:                                              ; preds = %667
  %683 = load i64, i64* %17, align 8
  %684 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %685 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %684, i32 0, i32 2
  %686 = load i64, i64* %685, align 8
  %687 = sub i64 %686, %683
  store i64 %687, i64* %685, align 8
  %688 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %689 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %688, i32 0, i32 4
  %690 = load i32*, i32** %689, align 8
  %691 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %692 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %691, i32 0, i32 2
  %693 = load i64, i64* %692, align 8
  %694 = getelementptr inbounds i32, i32* %690, i64 %693
  %695 = bitcast i32* %694 to i8*
  store i8* %695, i8** %29, align 8
  %696 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %697 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %696, i32 0, i32 10
  %698 = load %struct.TYPE_31__*, %struct.TYPE_31__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %698, i32 0, i32 0
  %700 = load %struct.TYPE_30__*, %struct.TYPE_30__** %699, align 8
  %701 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %700, i32 0, i32 0
  %702 = load i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i8*, i32)*, i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i8*, i32)** %701, align 8
  %703 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %704 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %705 = call i32 %702(%struct.TYPE_33__* %703, %struct.TYPE_32__* %704, i8* %37, i32 0)
  store i32 %705, i32* %6, align 4
  %706 = load i32, i32* %6, align 4
  %707 = icmp eq i32 %706, 0
  br i1 %707, label %713, label %708

708:                                              ; preds = %682
  %709 = load i8*, i8** %29, align 8
  %710 = load i64, i64* %17, align 8
  %711 = call i64 @CRYPTO_memcmp(i8* %37, i8* %709, i64 %710)
  %712 = icmp ne i64 %711, 0
  br i1 %712, label %713, label %719

713:                                              ; preds = %708, %682
  %714 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %715 = load i32, i32* @SSL_AD_BAD_RECORD_MAC, align 4
  %716 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %717 = load i32, i32* @SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC, align 4
  %718 = call i32 @SSLfatal(%struct.TYPE_33__* %714, i32 %715, i32 %716, i32 %717)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

719:                                              ; preds = %708
  br label %720

720:                                              ; preds = %719
  %721 = load i64, i64* %21, align 8
  %722 = add i64 %721, 1
  store i64 %722, i64* %21, align 8
  br label %663

723:                                              ; preds = %663
  br label %724

724:                                              ; preds = %723, %632, %628
  %725 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %726 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %725, i64 0
  %727 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %726, i32 0, i32 2
  %728 = load i64, i64* %727, align 8
  store i64 %728, i64* %24, align 8
  %729 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %730 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %729, i32 0, i32 10
  %731 = load %struct.TYPE_31__*, %struct.TYPE_31__** %730, align 8
  %732 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %731, i32 0, i32 0
  %733 = load %struct.TYPE_30__*, %struct.TYPE_30__** %732, align 8
  %734 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %733, i32 0, i32 1
  %735 = load i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i64, i32)*, i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i64, i32)** %734, align 8
  %736 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %737 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %738 = load i64, i64* %19, align 8
  %739 = call i32 %735(%struct.TYPE_33__* %736, %struct.TYPE_32__* %737, i64 %738, i32 0)
  store i32 %739, i32* %4, align 4
  %740 = load i32, i32* %4, align 4
  %741 = icmp eq i32 %740, 0
  br i1 %741, label %742, label %782

742:                                              ; preds = %724
  %743 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %744 = call i64 @ossl_statem_in_error(%struct.TYPE_33__* %743)
  %745 = icmp ne i64 %744, 0
  br i1 %745, label %746, label %747

746:                                              ; preds = %742
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

747:                                              ; preds = %742
  %748 = load i64, i64* %19, align 8
  %749 = icmp eq i64 %748, 1
  br i1 %749, label %750, label %776

750:                                              ; preds = %747
  %751 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %752 = call i64 @ossl_statem_skip_early_data(%struct.TYPE_33__* %751)
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %776

754:                                              ; preds = %750
  %755 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %756 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %755, i64 0
  store %struct.TYPE_32__* %756, %struct.TYPE_32__** %10, align 8
  %757 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %758 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %759 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %758, i32 0, i32 2
  %760 = load i64, i64* %759, align 8
  %761 = load i32, i32* @EARLY_DATA_CIPHERTEXT_OVERHEAD, align 4
  %762 = call i32 @early_data_count_ok(%struct.TYPE_33__* %757, i64 %760, i32 %761, i32 0)
  %763 = icmp ne i32 %762, 0
  br i1 %763, label %765, label %764

764:                                              ; preds = %754
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

765:                                              ; preds = %754
  %766 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %767 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %766, i32 0, i32 2
  store i64 0, i64* %767, align 8
  %768 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %769 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %768, i32 0, i32 6
  store i32 1, i32* %769, align 8
  %770 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %771 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %770, i32 0, i32 4
  %772 = call i32 @RECORD_LAYER_set_numrpipes(i32* %771, i64 1)
  %773 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %774 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %773, i32 0, i32 4
  %775 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %774)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

776:                                              ; preds = %750, %747
  %777 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %778 = load i32, i32* @SSL_AD_DECRYPTION_FAILED, align 4
  %779 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %780 = load i32, i32* @SSL_R_BLOCK_CIPHER_PAD_IS_WRONG, align 4
  %781 = call i32 @SSLfatal(%struct.TYPE_33__* %777, i32 %778, i32 %779, i32 %780)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

782:                                              ; preds = %724
  %783 = load i32*, i32** %12, align 8
  %784 = icmp ne i32* %783, null
  br i1 %784, label %785, label %935

785:                                              ; preds = %782
  %786 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %787 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %786, i32 0, i32 8
  %788 = load i32*, i32** %787, align 8
  %789 = icmp ne i32* %788, null
  br i1 %789, label %790, label %935

790:                                              ; preds = %785
  %791 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %792 = call i64 @SSL_READ_ETM(%struct.TYPE_33__* %791)
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %935, label %794

794:                                              ; preds = %790
  %795 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %796 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %795, i32 0, i32 11
  %797 = load i64, i64* %796, align 8
  %798 = call i32* @EVP_MD_CTX_md(i64 %797)
  %799 = icmp ne i32* %798, null
  br i1 %799, label %800, label %935

800:                                              ; preds = %794
  store i8* null, i8** %30, align 8
  %801 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %802 = zext i32 %801 to i64
  %803 = call i8* @llvm.stacksave()
  store i8* %803, i8** %31, align 8
  %804 = alloca i8, i64 %802, align 16
  store i64 %802, i64* %32, align 8
  %805 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %806 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %805, i32 0, i32 11
  %807 = load i64, i64* %806, align 8
  %808 = call i8* @EVP_MD_CTX_size(i64 %807)
  %809 = ptrtoint i8* %808 to i64
  store i64 %809, i64* %17, align 8
  %810 = load i64, i64* %17, align 8
  %811 = load i32, i32* @EVP_MAX_MD_SIZE, align 4
  %812 = sext i32 %811 to i64
  %813 = icmp ule i64 %810, %812
  %814 = zext i1 %813 to i32
  %815 = call i32 @ossl_assert(i32 %814)
  %816 = icmp ne i32 %815, 0
  br i1 %816, label %823, label %817

817:                                              ; preds = %800
  %818 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %819 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %820 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %821 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %822 = call i32 @SSLfatal(%struct.TYPE_33__* %818, i32 %819, i32 %820, i32 %821)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %931

823:                                              ; preds = %800
  store i64 0, i64* %21, align 8
  br label %824

824:                                              ; preds = %927, %823
  %825 = load i64, i64* %21, align 8
  %826 = load i64, i64* %19, align 8
  %827 = icmp ult i64 %825, %826
  br i1 %827, label %828, label %930

828:                                              ; preds = %824
  %829 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %830 = load i64, i64* %21, align 8
  %831 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %829, i64 %830
  store %struct.TYPE_32__* %831, %struct.TYPE_32__** %10, align 8
  %832 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %833 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %832, i32 0, i32 5
  %834 = load i64, i64* %833, align 8
  %835 = load i64, i64* %17, align 8
  %836 = icmp ult i64 %834, %835
  br i1 %836, label %851, label %837

837:                                              ; preds = %828
  %838 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %839 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %838, i32 0, i32 8
  %840 = load i32*, i32** %839, align 8
  %841 = call i64 @EVP_CIPHER_CTX_mode(i32* %840)
  %842 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %843 = icmp eq i64 %841, %842
  br i1 %843, label %844, label %857

844:                                              ; preds = %837
  %845 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %846 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %845, i32 0, i32 5
  %847 = load i64, i64* %846, align 8
  %848 = load i64, i64* %17, align 8
  %849 = add i64 %848, 1
  %850 = icmp ult i64 %847, %849
  br i1 %850, label %851, label %857

851:                                              ; preds = %844, %828
  %852 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %853 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %854 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %855 = load i32, i32* @SSL_R_LENGTH_TOO_SHORT, align 4
  %856 = call i32 @SSLfatal(%struct.TYPE_33__* %852, i32 %853, i32 %854, i32 %855)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %931

857:                                              ; preds = %844, %837
  %858 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %859 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %858, i32 0, i32 8
  %860 = load i32*, i32** %859, align 8
  %861 = call i64 @EVP_CIPHER_CTX_mode(i32* %860)
  %862 = load i64, i64* @EVP_CIPH_CBC_MODE, align 8
  %863 = icmp eq i64 %861, %862
  br i1 %863, label %864, label %881

864:                                              ; preds = %857
  store i8* %804, i8** %30, align 8
  %865 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %866 = load i64, i64* %17, align 8
  %867 = call i32 @ssl3_cbc_copy_mac(i8* %804, %struct.TYPE_32__* %865, i64 %866)
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %875, label %869

869:                                              ; preds = %864
  %870 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %871 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %872 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %873 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %874 = call i32 @SSLfatal(%struct.TYPE_33__* %870, i32 %871, i32 %872, i32 %873)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %931

875:                                              ; preds = %864
  %876 = load i64, i64* %17, align 8
  %877 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %878 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %877, i32 0, i32 2
  %879 = load i64, i64* %878, align 8
  %880 = sub i64 %879, %876
  store i64 %880, i64* %878, align 8
  br label %895

881:                                              ; preds = %857
  %882 = load i64, i64* %17, align 8
  %883 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %884 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %883, i32 0, i32 2
  %885 = load i64, i64* %884, align 8
  %886 = sub i64 %885, %882
  store i64 %886, i64* %884, align 8
  %887 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %888 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %887, i32 0, i32 4
  %889 = load i32*, i32** %888, align 8
  %890 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %891 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %890, i32 0, i32 2
  %892 = load i64, i64* %891, align 8
  %893 = getelementptr inbounds i32, i32* %889, i64 %892
  %894 = bitcast i32* %893 to i8*
  store i8* %894, i8** %30, align 8
  br label %895

895:                                              ; preds = %881, %875
  %896 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %897 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %896, i32 0, i32 10
  %898 = load %struct.TYPE_31__*, %struct.TYPE_31__** %897, align 8
  %899 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %898, i32 0, i32 0
  %900 = load %struct.TYPE_30__*, %struct.TYPE_30__** %899, align 8
  %901 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %900, i32 0, i32 0
  %902 = load i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i8*, i32)*, i32 (%struct.TYPE_33__*, %struct.TYPE_32__*, i8*, i32)** %901, align 8
  %903 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %904 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %905 = call i32 %902(%struct.TYPE_33__* %903, %struct.TYPE_32__* %904, i8* %37, i32 0)
  store i32 %905, i32* %6, align 4
  %906 = load i32, i32* %6, align 4
  %907 = icmp eq i32 %906, 0
  br i1 %907, label %916, label %908

908:                                              ; preds = %895
  %909 = load i8*, i8** %30, align 8
  %910 = icmp eq i8* %909, null
  br i1 %910, label %916, label %911

911:                                              ; preds = %908
  %912 = load i8*, i8** %30, align 8
  %913 = load i64, i64* %17, align 8
  %914 = call i64 @CRYPTO_memcmp(i8* %37, i8* %912, i64 %913)
  %915 = icmp ne i64 %914, 0
  br i1 %915, label %916, label %917

916:                                              ; preds = %911, %908, %895
  store i32 -1, i32* %4, align 4
  br label %917

917:                                              ; preds = %916, %911
  %918 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %919 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %918, i32 0, i32 2
  %920 = load i64, i64* %919, align 8
  %921 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_LENGTH, align 8
  %922 = load i64, i64* %17, align 8
  %923 = add i64 %921, %922
  %924 = icmp ugt i64 %920, %923
  br i1 %924, label %925, label %926

925:                                              ; preds = %917
  store i32 -1, i32* %4, align 4
  br label %926

926:                                              ; preds = %925, %917
  br label %927

927:                                              ; preds = %926
  %928 = load i64, i64* %21, align 8
  %929 = add i64 %928, 1
  store i64 %929, i64* %21, align 8
  br label %824

930:                                              ; preds = %824
  store i32 0, i32* %27, align 4
  br label %931

931:                                              ; preds = %930, %869, %851, %817
  %932 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %932)
  %933 = load i32, i32* %27, align 4
  switch i32 %933, label %1253 [
    i32 0, label %934
  ]

934:                                              ; preds = %931
  br label %935

935:                                              ; preds = %934, %794, %790, %785, %782
  %936 = load i32, i32* %4, align 4
  %937 = icmp slt i32 %936, 0
  br i1 %937, label %938, label %976

938:                                              ; preds = %935
  %939 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %940 = call i64 @ossl_statem_in_error(%struct.TYPE_33__* %939)
  %941 = icmp ne i64 %940, 0
  br i1 %941, label %942, label %943

942:                                              ; preds = %938
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

943:                                              ; preds = %938
  %944 = load i64, i64* %19, align 8
  %945 = icmp eq i64 %944, 1
  br i1 %945, label %946, label %970

946:                                              ; preds = %943
  %947 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %948 = call i64 @ossl_statem_skip_early_data(%struct.TYPE_33__* %947)
  %949 = icmp ne i64 %948, 0
  br i1 %949, label %950, label %970

950:                                              ; preds = %946
  %951 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %952 = load i64, i64* %24, align 8
  %953 = load i32, i32* @EARLY_DATA_CIPHERTEXT_OVERHEAD, align 4
  %954 = call i32 @early_data_count_ok(%struct.TYPE_33__* %951, i64 %952, i32 %953, i32 0)
  %955 = icmp ne i32 %954, 0
  br i1 %955, label %957, label %956

956:                                              ; preds = %950
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

957:                                              ; preds = %950
  %958 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %959 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %958, i64 0
  store %struct.TYPE_32__* %959, %struct.TYPE_32__** %10, align 8
  %960 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %961 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %960, i32 0, i32 2
  store i64 0, i64* %961, align 8
  %962 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %963 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %962, i32 0, i32 6
  store i32 1, i32* %963, align 8
  %964 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %965 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %964, i32 0, i32 4
  %966 = call i32 @RECORD_LAYER_set_numrpipes(i32* %965, i64 1)
  %967 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %968 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %967, i32 0, i32 4
  %969 = call i32 @RECORD_LAYER_reset_read_sequence(i32* %968)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

970:                                              ; preds = %946, %943
  %971 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %972 = load i32, i32* @SSL_AD_BAD_RECORD_MAC, align 4
  %973 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %974 = load i32, i32* @SSL_R_DECRYPTION_FAILED_OR_BAD_RECORD_MAC, align 4
  %975 = call i32 @SSLfatal(%struct.TYPE_33__* %971, i32 %972, i32 %973, i32 %974)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

976:                                              ; preds = %935
  store i64 0, i64* %21, align 8
  br label %977

977:                                              ; preds = %1222, %976
  %978 = load i64, i64* %21, align 8
  %979 = load i64, i64* %19, align 8
  %980 = icmp ult i64 %978, %979
  br i1 %980, label %981, label %1225

981:                                              ; preds = %977
  %982 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %983 = load i64, i64* %21, align 8
  %984 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %982, i64 %983
  store %struct.TYPE_32__* %984, %struct.TYPE_32__** %10, align 8
  %985 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %986 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %985, i32 0, i32 9
  %987 = load i32*, i32** %986, align 8
  %988 = icmp ne i32* %987, null
  br i1 %988, label %989, label %1013

989:                                              ; preds = %981
  %990 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %991 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %990, i32 0, i32 2
  %992 = load i64, i64* %991, align 8
  %993 = load i64, i64* @SSL3_RT_MAX_COMPRESSED_LENGTH, align 8
  %994 = icmp ugt i64 %992, %993
  br i1 %994, label %995, label %1001

995:                                              ; preds = %989
  %996 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %997 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %998 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %999 = load i32, i32* @SSL_R_COMPRESSED_LENGTH_TOO_LONG, align 4
  %1000 = call i32 @SSLfatal(%struct.TYPE_33__* %996, i32 %997, i32 %998, i32 %999)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1001:                                             ; preds = %989
  %1002 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1003 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1004 = call i32 @ssl3_do_uncompress(%struct.TYPE_33__* %1002, %struct.TYPE_32__* %1003)
  %1005 = icmp ne i32 %1004, 0
  br i1 %1005, label %1012, label %1006

1006:                                             ; preds = %1001
  %1007 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1008 = load i32, i32* @SSL_AD_DECOMPRESSION_FAILURE, align 4
  %1009 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1010 = load i32, i32* @SSL_R_BAD_DECOMPRESSION, align 4
  %1011 = call i32 @SSLfatal(%struct.TYPE_33__* %1007, i32 %1008, i32 %1009, i32 %1010)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1012:                                             ; preds = %1001
  br label %1013

1013:                                             ; preds = %1012, %981
  %1014 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1015 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %1014)
  %1016 = icmp ne i64 %1015, 0
  br i1 %1016, label %1017, label %1129

1017:                                             ; preds = %1013
  %1018 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1019 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1018, i32 0, i32 8
  %1020 = load i32*, i32** %1019, align 8
  %1021 = icmp ne i32* %1020, null
  br i1 %1021, label %1022, label %1129

1022:                                             ; preds = %1017
  %1023 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1024 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1023, i32 0, i32 0
  %1025 = load i64, i64* %1024, align 8
  %1026 = load i64, i64* @SSL3_RT_ALERT, align 8
  %1027 = icmp ne i64 %1025, %1026
  br i1 %1027, label %1028, label %1129

1028:                                             ; preds = %1022
  %1029 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1030 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1029, i32 0, i32 2
  %1031 = load i64, i64* %1030, align 8
  %1032 = icmp eq i64 %1031, 0
  br i1 %1032, label %1039, label %1033

1033:                                             ; preds = %1028
  %1034 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1035 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1034, i32 0, i32 0
  %1036 = load i64, i64* %1035, align 8
  %1037 = load i64, i64* @SSL3_RT_APPLICATION_DATA, align 8
  %1038 = icmp ne i64 %1036, %1037
  br i1 %1038, label %1039, label %1045

1039:                                             ; preds = %1033, %1028
  %1040 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1041 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %1042 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1043 = load i32, i32* @SSL_R_BAD_RECORD_TYPE, align 4
  %1044 = call i32 @SSLfatal(%struct.TYPE_33__* %1040, i32 %1041, i32 %1042, i32 %1043)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1045:                                             ; preds = %1033
  %1046 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1047 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1046, i32 0, i32 2
  %1048 = load i64, i64* %1047, align 8
  %1049 = sub i64 %1048, 1
  store i64 %1049, i64* %33, align 8
  br label %1050

1050:                                             ; preds = %1064, %1045
  %1051 = load i64, i64* %33, align 8
  %1052 = icmp ugt i64 %1051, 0
  br i1 %1052, label %1053, label %1061

1053:                                             ; preds = %1050
  %1054 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1055 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1054, i32 0, i32 4
  %1056 = load i32*, i32** %1055, align 8
  %1057 = load i64, i64* %33, align 8
  %1058 = getelementptr inbounds i32, i32* %1056, i64 %1057
  %1059 = load i32, i32* %1058, align 4
  %1060 = icmp eq i32 %1059, 0
  br label %1061

1061:                                             ; preds = %1053, %1050
  %1062 = phi i1 [ false, %1050 ], [ %1060, %1053 ]
  br i1 %1062, label %1063, label %1067

1063:                                             ; preds = %1061
  br label %1064

1064:                                             ; preds = %1063
  %1065 = load i64, i64* %33, align 8
  %1066 = add i64 %1065, -1
  store i64 %1066, i64* %33, align 8
  br label %1050

1067:                                             ; preds = %1061
  %1068 = load i64, i64* %33, align 8
  %1069 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1070 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1069, i32 0, i32 2
  store i64 %1068, i64* %1070, align 8
  %1071 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1072 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1071, i32 0, i32 4
  %1073 = load i32*, i32** %1072, align 8
  %1074 = load i64, i64* %33, align 8
  %1075 = getelementptr inbounds i32, i32* %1073, i64 %1074
  %1076 = load i32, i32* %1075, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1079 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1078, i32 0, i32 0
  store i64 %1077, i64* %1079, align 8
  %1080 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1081 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1080, i32 0, i32 0
  %1082 = load i64, i64* %1081, align 8
  %1083 = load i64, i64* @SSL3_RT_APPLICATION_DATA, align 8
  %1084 = icmp ne i64 %1082, %1083
  br i1 %1084, label %1085, label %1103

1085:                                             ; preds = %1067
  %1086 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1087 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1086, i32 0, i32 0
  %1088 = load i64, i64* %1087, align 8
  %1089 = load i64, i64* @SSL3_RT_ALERT, align 8
  %1090 = icmp ne i64 %1088, %1089
  br i1 %1090, label %1091, label %1103

1091:                                             ; preds = %1085
  %1092 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1093 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1092, i32 0, i32 0
  %1094 = load i64, i64* %1093, align 8
  %1095 = load i64, i64* @SSL3_RT_HANDSHAKE, align 8
  %1096 = icmp ne i64 %1094, %1095
  br i1 %1096, label %1097, label %1103

1097:                                             ; preds = %1091
  %1098 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1099 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %1100 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1101 = load i32, i32* @SSL_R_BAD_RECORD_TYPE, align 4
  %1102 = call i32 @SSLfatal(%struct.TYPE_33__* %1098, i32 %1099, i32 %1100, i32 %1101)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1103:                                             ; preds = %1091, %1085, %1067
  %1104 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1105 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1104, i32 0, i32 7
  %1106 = load i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)*, i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)** %1105, align 8
  %1107 = icmp ne i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)* %1106, null
  br i1 %1107, label %1108, label %1128

1108:                                             ; preds = %1103
  %1109 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1110 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1109, i32 0, i32 7
  %1111 = load i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)*, i32 (i32, i16, i32, i64*, i32, %struct.TYPE_33__*, i32)** %1110, align 8
  %1112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1113 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1112, i32 0, i32 2
  %1114 = load i32, i32* %1113, align 8
  %1115 = trunc i32 %1114 to i16
  %1116 = load i32, i32* @SSL3_RT_INNER_CONTENT_TYPE, align 4
  %1117 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1118 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1117, i32 0, i32 4
  %1119 = load i32*, i32** %1118, align 8
  %1120 = load i64, i64* %33, align 8
  %1121 = getelementptr inbounds i32, i32* %1119, i64 %1120
  %1122 = bitcast i32* %1121 to i64*
  %1123 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1124, i32 0, i32 6
  %1126 = load i32, i32* %1125, align 8
  %1127 = call i32 %1111(i32 0, i16 zeroext %1115, i32 %1116, i64* %1122, i32 1, %struct.TYPE_33__* %1123, i32 %1126)
  br label %1128

1128:                                             ; preds = %1108, %1103
  br label %1129

1129:                                             ; preds = %1128, %1022, %1017, %1013
  %1130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1131 = call i64 @SSL_IS_TLS13(%struct.TYPE_33__* %1130)
  %1132 = icmp ne i64 %1131, 0
  br i1 %1132, label %1133, label %1156

1133:                                             ; preds = %1129
  %1134 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1135 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1134, i32 0, i32 0
  %1136 = load i64, i64* %1135, align 8
  %1137 = load i64, i64* @SSL3_RT_HANDSHAKE, align 8
  %1138 = icmp eq i64 %1136, %1137
  br i1 %1138, label %1145, label %1139

1139:                                             ; preds = %1133
  %1140 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1141 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1140, i32 0, i32 0
  %1142 = load i64, i64* %1141, align 8
  %1143 = load i64, i64* @SSL3_RT_ALERT, align 8
  %1144 = icmp eq i64 %1142, %1143
  br i1 %1144, label %1145, label %1156

1145:                                             ; preds = %1139, %1133
  %1146 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1147 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1146, i32 0, i32 2
  %1148 = load i64, i64* %1147, align 8
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1150, label %1156

1150:                                             ; preds = %1145
  %1151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1152 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %1153 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1154 = load i32, i32* @SSL_R_BAD_LENGTH, align 4
  %1155 = call i32 @SSLfatal(%struct.TYPE_33__* %1151, i32 %1152, i32 %1153, i32 %1154)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1156:                                             ; preds = %1145, %1139, %1129
  %1157 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1158 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1157, i32 0, i32 2
  %1159 = load i64, i64* %1158, align 8
  %1160 = load i64, i64* @SSL3_RT_MAX_PLAIN_LENGTH, align 8
  %1161 = icmp ugt i64 %1159, %1160
  br i1 %1161, label %1162, label %1168

1162:                                             ; preds = %1156
  %1163 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1164 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %1165 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1166 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  %1167 = call i32 @SSLfatal(%struct.TYPE_33__* %1163, i32 %1164, i32 %1165, i32 %1166)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1168:                                             ; preds = %1156
  %1169 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1170 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1169, i32 0, i32 5
  %1171 = load i32*, i32** %1170, align 8
  %1172 = icmp ne i32* %1171, null
  br i1 %1172, label %1173, label %1194

1173:                                             ; preds = %1168
  %1174 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1175 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1174, i32 0, i32 5
  %1176 = load i32*, i32** %1175, align 8
  %1177 = call i64 @USE_MAX_FRAGMENT_LENGTH_EXT(i32* %1176)
  %1178 = icmp ne i64 %1177, 0
  br i1 %1178, label %1179, label %1194

1179:                                             ; preds = %1173
  %1180 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1181 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1180, i32 0, i32 2
  %1182 = load i64, i64* %1181, align 8
  %1183 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1184 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1183, i32 0, i32 5
  %1185 = load i32*, i32** %1184, align 8
  %1186 = call i64 @GET_MAX_FRAGMENT_LENGTH(i32* %1185)
  %1187 = icmp ugt i64 %1182, %1186
  br i1 %1187, label %1188, label %1194

1188:                                             ; preds = %1179
  %1189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1190 = load i32, i32* @SSL_AD_RECORD_OVERFLOW, align 4
  %1191 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1192 = load i32, i32* @SSL_R_DATA_LENGTH_TOO_LONG, align 4
  %1193 = call i32 @SSLfatal(%struct.TYPE_33__* %1189, i32 %1190, i32 %1191, i32 %1192)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1194:                                             ; preds = %1179, %1173, %1168
  %1195 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1195, i32 0, i32 7
  store i64 0, i64* %1196, align 8
  %1197 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1198 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1197, i32 0, i32 2
  %1199 = load i64, i64* %1198, align 8
  %1200 = icmp eq i64 %1199, 0
  br i1 %1200, label %1201, label %1217

1201:                                             ; preds = %1194
  %1202 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1203 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1202, i32 0, i32 4
  %1204 = call i32 @RECORD_LAYER_inc_empty_record_count(i32* %1203)
  %1205 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1206 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1205, i32 0, i32 4
  %1207 = call i64 @RECORD_LAYER_get_empty_record_count(i32* %1206)
  %1208 = load i64, i64* @MAX_EMPTY_RECORDS, align 8
  %1209 = icmp sgt i64 %1207, %1208
  br i1 %1209, label %1210, label %1216

1210:                                             ; preds = %1201
  %1211 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1212 = load i32, i32* @SSL_AD_UNEXPECTED_MESSAGE, align 4
  %1213 = load i32, i32* @SSL_F_SSL3_GET_RECORD, align 4
  %1214 = load i32, i32* @SSL_R_RECORD_TOO_SMALL, align 4
  %1215 = call i32 @SSLfatal(%struct.TYPE_33__* %1211, i32 %1212, i32 %1213, i32 %1214)
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1216:                                             ; preds = %1201
  br label %1221

1217:                                             ; preds = %1194
  %1218 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1219 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1218, i32 0, i32 4
  %1220 = call i32 @RECORD_LAYER_reset_empty_record_count(i32* %1219)
  br label %1221

1221:                                             ; preds = %1217, %1216
  br label %1222

1222:                                             ; preds = %1221
  %1223 = load i64, i64* %21, align 8
  %1224 = add i64 %1223, 1
  store i64 %1224, i64* %21, align 8
  br label %977

1225:                                             ; preds = %977
  %1226 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1227 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1226, i32 0, i32 3
  %1228 = load i64, i64* %1227, align 8
  %1229 = load i64, i64* @SSL_EARLY_DATA_READING, align 8
  %1230 = icmp eq i64 %1228, %1229
  br i1 %1230, label %1231, label %1248

1231:                                             ; preds = %1225
  %1232 = load %struct.TYPE_32__*, %struct.TYPE_32__** %9, align 8
  %1233 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1232, i64 0
  store %struct.TYPE_32__* %1233, %struct.TYPE_32__** %10, align 8
  %1234 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1235 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1234, i32 0, i32 0
  %1236 = load i64, i64* %1235, align 8
  %1237 = load i64, i64* @SSL3_RT_APPLICATION_DATA, align 8
  %1238 = icmp eq i64 %1236, %1237
  br i1 %1238, label %1239, label %1247

1239:                                             ; preds = %1231
  %1240 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1241 = load %struct.TYPE_32__*, %struct.TYPE_32__** %10, align 8
  %1242 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %1241, i32 0, i32 2
  %1243 = load i64, i64* %1242, align 8
  %1244 = call i32 @early_data_count_ok(%struct.TYPE_33__* %1240, i64 %1243, i32 0, i32 0)
  %1245 = icmp ne i32 %1244, 0
  br i1 %1245, label %1247, label %1246

1246:                                             ; preds = %1239
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1247:                                             ; preds = %1239, %1231
  br label %1248

1248:                                             ; preds = %1247, %1225
  %1249 = load %struct.TYPE_33__*, %struct.TYPE_33__** %3, align 8
  %1250 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %1249, i32 0, i32 4
  %1251 = load i64, i64* %19, align 8
  %1252 = call i32 @RECORD_LAYER_set_numrpipes(i32* %1250, i64 %1251)
  store i32 1, i32* %2, align 4
  store i32 1, i32* %27, align 4
  br label %1253

1253:                                             ; preds = %1248, %1246, %1210, %1188, %1162, %1150, %1097, %1039, %1006, %995, %970, %957, %956, %942, %931, %776, %765, %764, %746, %713, %676, %654, %622, %616, %598, %478, %443, %420, %402, %386, %374, %330, %324, %317, %307, %272, %260, %202, %167, %155, %112, %99, %81
  %1254 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %1254)
  %1255 = load i32, i32* %2, align 4
  ret i32 %1255
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.TYPE_32__* @RECORD_LAYER_get_rrec(i32*) #2

declare dso_local i32* @RECORD_LAYER_get_rbuf(i32*) #2

declare dso_local i64 @RECORD_LAYER_get_rstate(i32*) #2

declare dso_local i64 @RECORD_LAYER_get_packet_length(i32*) #2

declare dso_local i32 @ssl3_read_n(%struct.TYPE_33__*, i64, i64, i32, i32, i64*) #2

declare dso_local i64 @SSL3_BUFFER_get_len(i32*) #2

declare dso_local i32 @RECORD_LAYER_set_rstate(i32*, i64) #2

declare dso_local i8* @RECORD_LAYER_get_packet(i32*) #2

declare dso_local i32 @PACKET_buf_init(i32*, i8*, i64) #2

declare dso_local i32 @SSLfatal(%struct.TYPE_33__*, i32, i32, i32) #2

declare dso_local i32 @PACKET_get_net_2_len(i32*, i64*) #2

declare dso_local i32 @PACKET_get_1(i32*, i32*) #2

declare dso_local i64 @RECORD_LAYER_is_first_record(i32*) #2

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #2

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_33__*) #2

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

declare dso_local i64 @SSL_IS_FIRST_HANDSHAKE(%struct.TYPE_33__*) #2

declare dso_local i32 @RECORD_LAYER_reset_packet_length(i32*) #2

declare dso_local i32 @RECORD_LAYER_clear_first_record(i32*) #2

declare dso_local i64 @SSL_USE_EXPLICIT_IV(%struct.TYPE_33__*) #2

declare dso_local i32 @EVP_CIPHER_flags(i32) #2

declare dso_local i32 @EVP_CIPHER_CTX_cipher(i32*) #2

declare dso_local i64 @ssl3_record_app_data_waiting(%struct.TYPE_33__*) #2

declare dso_local i32 @RECORD_LAYER_inc_empty_record_count(i32*) #2

declare dso_local i64 @RECORD_LAYER_get_empty_record_count(i32*) #2

declare dso_local i32 @RECORD_LAYER_set_numrpipes(i32*, i64) #2

declare dso_local i64 @SSL_READ_ETM(%struct.TYPE_33__*) #2

declare dso_local i8* @EVP_MD_CTX_size(i64) #2

declare dso_local i32 @ossl_assert(i32) #2

declare dso_local i64 @CRYPTO_memcmp(i8*, i8*, i64) #2

declare dso_local i64 @ossl_statem_in_error(%struct.TYPE_33__*) #2

declare dso_local i64 @ossl_statem_skip_early_data(%struct.TYPE_33__*) #2

declare dso_local i32 @early_data_count_ok(%struct.TYPE_33__*, i64, i32, i32) #2

declare dso_local i32 @RECORD_LAYER_reset_read_sequence(i32*) #2

declare dso_local i32* @EVP_MD_CTX_md(i64) #2

declare dso_local i64 @EVP_CIPHER_CTX_mode(i32*) #2

declare dso_local i32 @ssl3_cbc_copy_mac(i8*, %struct.TYPE_32__*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @ssl3_do_uncompress(%struct.TYPE_33__*, %struct.TYPE_32__*) #2

declare dso_local i64 @USE_MAX_FRAGMENT_LENGTH_EXT(i32*) #2

declare dso_local i64 @GET_MAX_FRAGMENT_LENGTH(i32*) #2

declare dso_local i32 @RECORD_LAYER_reset_empty_record_count(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
