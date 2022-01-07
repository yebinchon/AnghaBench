; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_new_session_ticket.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/ssl/statem/extr_statem_clnt.c_tls_process_new_session_ticket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { %struct.TYPE_19__*, i32, %struct.TYPE_17__* }
%struct.TYPE_19__ = type { i32, i64, i64, i32, i64, i32, %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32, i64, i64, i32* }
%struct.TYPE_17__ = type { i32 }

@SSL_AD_DECODE_ERROR = common dso_local global i32 0, align 4
@SSL_F_TLS_PROCESS_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@SSL_R_LENGTH_MISMATCH = common dso_local global i32 0, align 4
@MSG_PROCESS_CONTINUE_READING = common dso_local global i32 0, align 4
@SSL_AD_INTERNAL_ERROR = common dso_local global i32 0, align 4
@ERR_R_MALLOC_FAILURE = common dso_local global i32 0, align 4
@SSL_SESS_CACHE_CLIENT = common dso_local global i32 0, align 4
@SSL_EXT_TLS1_3_NEW_SESSION_TICKET = common dso_local global i32 0, align 4
@ERR_R_EVP_LIB = common dso_local global i32 0, align 4
@tls_process_new_session_ticket.nonce_label = internal constant [11 x i8] c"resumption\00", align 1
@ERR_R_INTERNAL_ERROR = common dso_local global i32 0, align 4
@MSG_PROCESS_FINISHED_READING = common dso_local global i32 0, align 4
@MSG_PROCESS_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tls_process_new_session_ticket(%struct.TYPE_20__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 0, i64* %8, align 8
  store i32* null, i32** %10, align 8
  %17 = call i32 @PACKET_null_init(i32* %11)
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @PACKET_get_net_4(i32* %18, i64* %7)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %54

21:                                               ; preds = %2
  %22 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %23 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @PACKET_get_net_4(i32* %26, i64* %8)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load i32*, i32** %5, align 8
  %31 = call i32 @PACKET_get_length_prefixed_1(i32* %30, i32* %11)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %29, %21
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @PACKET_get_net_2(i32* %34, i32* %6)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %33
  %38 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %39 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load i32, i32* %6, align 4
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %54, label %44

44:                                               ; preds = %41
  %45 = load i32*, i32** %5, align 8
  %46 = call i32 @PACKET_remaining(i32* %45)
  %47 = load i32, i32* %6, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %54, label %60

49:                                               ; preds = %37
  %50 = load i32*, i32** %5, align 8
  %51 = call i32 @PACKET_remaining(i32* %50)
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %49, %44, %41, %33, %29, %25, %2
  %55 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %56 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %57 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %58 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %59 = call i32 @SSLfatal(%struct.TYPE_20__* %55, i32 %56, i32 %57, i32 %58)
  br label %310

60:                                               ; preds = %49, %44
  %61 = load i32, i32* %6, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %60
  %64 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %64, i32* %3, align 4
  br label %314

65:                                               ; preds = %60
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %67 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %76, label %69

69:                                               ; preds = %65
  %70 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_19__*, %struct.TYPE_19__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ugt i32 %74, 0
  br i1 %75, label %76, label %117

76:                                               ; preds = %69, %65
  %77 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_19__*, %struct.TYPE_19__** %78, align 8
  %80 = call %struct.TYPE_19__* @ssl_session_dup(%struct.TYPE_19__* %79, i32 0)
  store %struct.TYPE_19__* %80, %struct.TYPE_19__** %12, align 8
  %81 = icmp eq %struct.TYPE_19__* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %84 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %85 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %86 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %87 = call i32 @SSLfatal(%struct.TYPE_20__* %83, i32 %84, i32 %85, i32 %86)
  br label %310

88:                                               ; preds = %76
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %89, i32 0, i32 2
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %109

97:                                               ; preds = %88
  %98 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %99 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %97
  %102 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %102, i32 0, i32 2
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %103, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %106, align 8
  %108 = call i32 @SSL_CTX_remove_session(%struct.TYPE_17__* %104, %struct.TYPE_19__* %107)
  br label %109

109:                                              ; preds = %101, %97, %88
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_19__*, %struct.TYPE_19__** %111, align 8
  %113 = call i32 @SSL_SESSION_free(%struct.TYPE_19__* %112)
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %115, i32 0, i32 0
  store %struct.TYPE_19__* %114, %struct.TYPE_19__** %116, align 8
  br label %117

117:                                              ; preds = %109, %69
  %118 = call i64 @time(i32* null)
  %119 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %121, i32 0, i32 1
  store i64 %118, i64* %122, align 8
  %123 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %123, i32 0, i32 0
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %125, i32 0, i32 6
  %127 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %126, i32 0, i32 3
  %128 = load i32*, i32** %127, align 8
  %129 = call i32 @OPENSSL_free(i32* %128)
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 6
  %134 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %133, i32 0, i32 3
  store i32* null, i32** %134, align 8
  %135 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %135, i32 0, i32 0
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 6
  %139 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %138, i32 0, i32 0
  store i32 0, i32* %139, align 8
  %140 = load i32, i32* %6, align 4
  %141 = call i32* @OPENSSL_malloc(i32 %140)
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 6
  %146 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %145, i32 0, i32 3
  store i32* %141, i32** %146, align 8
  %147 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 6
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = icmp eq i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %117
  %155 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %156 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %157 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %158 = load i32, i32* @ERR_R_MALLOC_FAILURE, align 4
  %159 = call i32 @SSLfatal(%struct.TYPE_20__* %155, i32 %156, i32 %157, i32 %158)
  br label %310

160:                                              ; preds = %117
  %161 = load i32*, i32** %5, align 8
  %162 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %162, i32 0, i32 0
  %164 = load %struct.TYPE_19__*, %struct.TYPE_19__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 6
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 3
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 @PACKET_copy_bytes(i32* %161, i32* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %160
  %172 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %173 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %174 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %175 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %176 = call i32 @SSLfatal(%struct.TYPE_20__* %172, i32 %173, i32 %174, i32 %175)
  br label %310

177:                                              ; preds = %160
  %178 = load i64, i64* %7, align 8
  %179 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %179, i32 0, i32 0
  %181 = load %struct.TYPE_19__*, %struct.TYPE_19__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 6
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 1
  store i64 %178, i64* %183, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %187, i32 0, i32 6
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 2
  store i64 %184, i64* %189, align 8
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %191, i32 0, i32 0
  %193 = load %struct.TYPE_19__*, %struct.TYPE_19__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %193, i32 0, i32 6
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  store i32 %190, i32* %195, align 8
  %196 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %197 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %226

199:                                              ; preds = %177
  %200 = load i32*, i32** %5, align 8
  %201 = call i32 @PACKET_as_length_prefixed_2(i32* %200, i32* %13)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %203, label %207

203:                                              ; preds = %199
  %204 = load i32*, i32** %5, align 8
  %205 = call i32 @PACKET_remaining(i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %213

207:                                              ; preds = %203, %199
  %208 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %209 = load i32, i32* @SSL_AD_DECODE_ERROR, align 4
  %210 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %211 = load i32, i32* @SSL_R_LENGTH_MISMATCH, align 4
  %212 = call i32 @SSLfatal(%struct.TYPE_20__* %208, i32 %209, i32 %210, i32 %211)
  br label %310

213:                                              ; preds = %203
  %214 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %215 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %216 = call i32 @tls_collect_extensions(%struct.TYPE_20__* %214, i32* %13, i32 %215, i32** %10, i32* null, i32 1)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %224

218:                                              ; preds = %213
  %219 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %220 = load i32, i32* @SSL_EXT_TLS1_3_NEW_SESSION_TICKET, align 4
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @tls_parse_all_extensions(%struct.TYPE_20__* %219, i32 %220, i32* %221, i32* null, i32 0, i32 1)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %225, label %224

224:                                              ; preds = %218, %213
  br label %310

225:                                              ; preds = %218
  br label %226

226:                                              ; preds = %225, %177
  %227 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %227, i32 0, i32 0
  %229 = load %struct.TYPE_19__*, %struct.TYPE_19__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %229, i32 0, i32 6
  %231 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %230, i32 0, i32 3
  %232 = load i32*, i32** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %235 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_19__*, %struct.TYPE_19__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %236, i32 0, i32 5
  %238 = load i32, i32* %237, align 8
  %239 = call i32 (...) @EVP_sha256()
  %240 = call i32 @EVP_Digest(i32* %232, i32 %233, i32 %238, i32* %9, i32 %239, i32* null)
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %226
  %243 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %244 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %245 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %246 = load i32, i32* @ERR_R_EVP_LIB, align 4
  %247 = call i32 @SSLfatal(%struct.TYPE_20__* %243, i32 %244, i32 %245, i32 %246)
  br label %310

248:                                              ; preds = %226
  %249 = load i32, i32* %9, align 4
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %251, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 0
  store i32 %249, i32* %253, align 8
  %254 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %254, i32 0, i32 0
  %256 = load %struct.TYPE_19__*, %struct.TYPE_19__** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %256, i32 0, i32 4
  store i64 0, i64* %257, align 8
  %258 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %259 = call i64 @SSL_IS_TLS13(%struct.TYPE_20__* %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %308

261:                                              ; preds = %248
  %262 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %263 = call i32* @ssl_handshake_md(%struct.TYPE_20__* %262)
  store i32* %263, i32** %14, align 8
  %264 = load i32*, i32** %14, align 8
  %265 = call i32 @EVP_MD_size(i32* %264)
  store i32 %265, i32* %15, align 4
  %266 = load i32, i32* %15, align 4
  %267 = icmp sge i32 %266, 0
  %268 = zext i1 %267 to i32
  %269 = call i32 @ossl_assert(i32 %268)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %277, label %271

271:                                              ; preds = %261
  %272 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %273 = load i32, i32* @SSL_AD_INTERNAL_ERROR, align 4
  %274 = load i32, i32* @SSL_F_TLS_PROCESS_NEW_SESSION_TICKET, align 4
  %275 = load i32, i32* @ERR_R_INTERNAL_ERROR, align 4
  %276 = call i32 @SSLfatal(%struct.TYPE_20__* %272, i32 %273, i32 %274, i32 %275)
  br label %310

277:                                              ; preds = %261
  %278 = load i32, i32* %15, align 4
  %279 = sext i32 %278 to i64
  store i64 %279, i64* %16, align 8
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %281 = load i32*, i32** %14, align 8
  %282 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %283 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 8
  %285 = call i32 @PACKET_data(i32* %11)
  %286 = call i32 @PACKET_remaining(i32* %11)
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 0
  %289 = load %struct.TYPE_19__*, %struct.TYPE_19__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %289, i32 0, i32 3
  %291 = load i32, i32* %290, align 8
  %292 = load i64, i64* %16, align 8
  %293 = call i32 @tls13_hkdf_expand(%struct.TYPE_20__* %280, i32* %281, i32 %284, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @tls_process_new_session_ticket.nonce_label, i64 0, i64 0), i32 10, i32 %285, i32 %286, i32 %291, i64 %292, i32 1)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %296, label %295

295:                                              ; preds = %277
  br label %310

296:                                              ; preds = %277
  %297 = load i64, i64* %16, align 8
  %298 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %298, i32 0, i32 0
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %300, i32 0, i32 2
  store i64 %297, i64* %301, align 8
  %302 = load i32*, i32** %10, align 8
  %303 = call i32 @OPENSSL_free(i32* %302)
  %304 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %305 = load i32, i32* @SSL_SESS_CACHE_CLIENT, align 4
  %306 = call i32 @ssl_update_cache(%struct.TYPE_20__* %304, i32 %305)
  %307 = load i32, i32* @MSG_PROCESS_FINISHED_READING, align 4
  store i32 %307, i32* %3, align 4
  br label %314

308:                                              ; preds = %248
  %309 = load i32, i32* @MSG_PROCESS_CONTINUE_READING, align 4
  store i32 %309, i32* %3, align 4
  br label %314

310:                                              ; preds = %295, %271, %242, %224, %207, %171, %154, %82, %54
  %311 = load i32*, i32** %10, align 8
  %312 = call i32 @OPENSSL_free(i32* %311)
  %313 = load i32, i32* @MSG_PROCESS_ERROR, align 4
  store i32 %313, i32* %3, align 4
  br label %314

314:                                              ; preds = %310, %308, %296, %63
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @PACKET_null_init(i32*) #1

declare dso_local i32 @PACKET_get_net_4(i32*, i64*) #1

declare dso_local i64 @SSL_IS_TLS13(%struct.TYPE_20__*) #1

declare dso_local i32 @PACKET_get_length_prefixed_1(i32*, i32*) #1

declare dso_local i32 @PACKET_get_net_2(i32*, i32*) #1

declare dso_local i32 @PACKET_remaining(i32*) #1

declare dso_local i32 @SSLfatal(%struct.TYPE_20__*, i32, i32, i32) #1

declare dso_local %struct.TYPE_19__* @ssl_session_dup(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @SSL_CTX_remove_session(%struct.TYPE_17__*, %struct.TYPE_19__*) #1

declare dso_local i32 @SSL_SESSION_free(%struct.TYPE_19__*) #1

declare dso_local i64 @time(i32*) #1

declare dso_local i32 @OPENSSL_free(i32*) #1

declare dso_local i32* @OPENSSL_malloc(i32) #1

declare dso_local i32 @PACKET_copy_bytes(i32*, i32*, i32) #1

declare dso_local i32 @PACKET_as_length_prefixed_2(i32*, i32*) #1

declare dso_local i32 @tls_collect_extensions(%struct.TYPE_20__*, i32*, i32, i32**, i32*, i32) #1

declare dso_local i32 @tls_parse_all_extensions(%struct.TYPE_20__*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @EVP_Digest(i32*, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @EVP_sha256(...) #1

declare dso_local i32* @ssl_handshake_md(%struct.TYPE_20__*) #1

declare dso_local i32 @EVP_MD_size(i32*) #1

declare dso_local i32 @ossl_assert(i32) #1

declare dso_local i32 @tls13_hkdf_expand(%struct.TYPE_20__*, i32*, i32, i8*, i32, i32, i32, i32, i64, i32) #1

declare dso_local i32 @PACKET_data(i32*) #1

declare dso_local i32 @ssl_update_cache(%struct.TYPE_20__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
