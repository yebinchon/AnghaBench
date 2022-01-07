; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/sample/extr_https-client.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evhttp_uri = type { i32 }
%struct.bufferevent = type { i32 }
%struct.evhttp_connection = type { i32 }
%struct.evhttp_request = type { i32 }
%struct.evkeyvalq = type { i32 }
%struct.evbuffer = type { i32 }

@.str = private unnamed_addr constant [35 x i8] c"/etc/ssl/certs/ca-certificates.crt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"-url\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-crt\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"-ignore-cert\00", align 1
@ignore_cert = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"-data\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"-retries\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"-timeout\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"-help\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"malformed url\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"url must be http or https\00", align 1
@.str.12 = private unnamed_addr constant [21 x i8] c"url must have a host\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"%s?%s\00", align 1
@.str.16 = private unnamed_addr constant [10 x i8] c"RAND_poll\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"SSL_CTX_new\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"SSL_CTX_load_verify_locations\00", align 1
@SSL_VERIFY_PEER = common dso_local global i32 0, align 4
@cert_verify_callback = common dso_local global i32 0, align 4
@base = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [17 x i8] c"event_base_new()\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"SSL_new()\00", align 1
@BEV_OPT_CLOSE_ON_FREE = common dso_local global i32 0, align 4
@BUFFEREVENT_SSL_CONNECTING = common dso_local global i32 0, align 4
@BEV_OPT_DEFER_CALLBACKS = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [41 x i8] c"bufferevent_openssl_socket_new() failed\0A\00", align 1
@.str.22 = private unnamed_addr constant [49 x i8] c"evhttp_connection_base_bufferevent_new() failed\0A\00", align 1
@http_request_done = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [29 x i8] c"evhttp_request_new() failed\0A\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"Host\00", align 1
@.str.25 = private unnamed_addr constant [11 x i8] c"Connection\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.27 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Content-Length\00", align 1
@EVHTTP_REQ_POST = common dso_local global i32 0, align 4
@EVHTTP_REQ_GET = common dso_local global i32 0, align 4
@.str.30 = private unnamed_addr constant [30 x i8] c"evhttp_make_request() failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.evhttp_uri*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca [256 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.bufferevent*, align 8
  %22 = alloca %struct.evhttp_connection*, align 8
  %23 = alloca %struct.evhttp_request*, align 8
  %24 = alloca %struct.evkeyvalq*, align 8
  %25 = alloca %struct.evbuffer*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32*, align 8
  %30 = alloca [1024 x i8], align 16
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store %struct.evhttp_uri* null, %struct.evhttp_uri** %7, align 8
  store i8* null, i8** %8, align 8
  store i8* null, i8** %9, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  store i32 0, i32* %17, align 4
  store i32 -1, i32* %18, align 4
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store %struct.evhttp_connection* null, %struct.evhttp_connection** %22, align 8
  store i32 0, i32* %27, align 4
  store i32 0, i32* %28, align 4
  store i32 1, i32* %26, align 4
  br label %33

33:                                               ; preds = %180, %2
  %34 = load i32, i32* %26, align 4
  %35 = load i32, i32* %4, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %183

37:                                               ; preds = %33
  %38 = load i8**, i8*** %5, align 8
  %39 = load i32, i32* %26, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8*, i8** %38, i64 %40
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %60, label %45

45:                                               ; preds = %37
  %46 = load i32, i32* %26, align 4
  %47 = load i32, i32* %4, align 4
  %48 = sub nsw i32 %47, 1
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8**, i8*** %5, align 8
  %52 = load i32, i32* %26, align 4
  %53 = add nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i8*, i8** %51, i64 %54
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %8, align 8
  br label %59

57:                                               ; preds = %45
  %58 = call i32 (...) @syntax()
  br label %415

59:                                               ; preds = %50
  br label %179

60:                                               ; preds = %37
  %61 = load i8**, i8*** %5, align 8
  %62 = load i32, i32* %26, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i8*, i8** %61, i64 %63
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @strcmp(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %83, label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %26, align 4
  %70 = load i32, i32* %4, align 4
  %71 = sub nsw i32 %70, 1
  %72 = icmp slt i32 %69, %71
  br i1 %72, label %73, label %80

73:                                               ; preds = %68
  %74 = load i8**, i8*** %5, align 8
  %75 = load i32, i32* %26, align 4
  %76 = add nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %74, i64 %77
  %79 = load i8*, i8** %78, align 8
  store i8* %79, i8** %10, align 8
  br label %82

80:                                               ; preds = %68
  %81 = call i32 (...) @syntax()
  br label %415

82:                                               ; preds = %73
  br label %178

83:                                               ; preds = %60
  %84 = load i8**, i8*** %5, align 8
  %85 = load i32, i32* %26, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i8*, i8** %84, i64 %86
  %88 = load i8*, i8** %87, align 8
  %89 = call i32 @strcmp(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83
  store i32 1, i32* @ignore_cert, align 4
  br label %177

92:                                               ; preds = %83
  %93 = load i8**, i8*** %5, align 8
  %94 = load i32, i32* %26, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8*, i8** %93, i64 %95
  %97 = load i8*, i8** %96, align 8
  %98 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %115, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* %26, align 4
  %102 = load i32, i32* %4, align 4
  %103 = sub nsw i32 %102, 1
  %104 = icmp slt i32 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %100
  %106 = load i8**, i8*** %5, align 8
  %107 = load i32, i32* %26, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i8*, i8** %106, i64 %109
  %111 = load i8*, i8** %110, align 8
  store i8* %111, i8** %9, align 8
  br label %114

112:                                              ; preds = %100
  %113 = call i32 (...) @syntax()
  br label %415

114:                                              ; preds = %105
  br label %176

115:                                              ; preds = %92
  %116 = load i8**, i8*** %5, align 8
  %117 = load i32, i32* %26, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8*, i8** %116, i64 %118
  %120 = load i8*, i8** %119, align 8
  %121 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %139, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %26, align 4
  %125 = load i32, i32* %4, align 4
  %126 = sub nsw i32 %125, 1
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %128, label %136

128:                                              ; preds = %123
  %129 = load i8**, i8*** %5, align 8
  %130 = load i32, i32* %26, align 4
  %131 = add nsw i32 %130, 1
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 @atoi(i8* %134)
  store i32 %135, i32* %17, align 4
  br label %138

136:                                              ; preds = %123
  %137 = call i32 (...) @syntax()
  br label %415

138:                                              ; preds = %128
  br label %175

139:                                              ; preds = %115
  %140 = load i8**, i8*** %5, align 8
  %141 = load i32, i32* %26, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8*, i8** %140, i64 %142
  %144 = load i8*, i8** %143, align 8
  %145 = call i32 @strcmp(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8* %144)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %163, label %147

147:                                              ; preds = %139
  %148 = load i32, i32* %26, align 4
  %149 = load i32, i32* %4, align 4
  %150 = sub nsw i32 %149, 1
  %151 = icmp slt i32 %148, %150
  br i1 %151, label %152, label %160

152:                                              ; preds = %147
  %153 = load i8**, i8*** %5, align 8
  %154 = load i32, i32* %26, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8*, i8** %153, i64 %156
  %158 = load i8*, i8** %157, align 8
  %159 = call i32 @atoi(i8* %158)
  store i32 %159, i32* %18, align 4
  br label %162

160:                                              ; preds = %147
  %161 = call i32 (...) @syntax()
  br label %415

162:                                              ; preds = %152
  br label %174

163:                                              ; preds = %139
  %164 = load i8**, i8*** %5, align 8
  %165 = load i32, i32* %26, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i8*, i8** %164, i64 %166
  %168 = load i8*, i8** %167, align 8
  %169 = call i32 @strcmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %163
  %172 = call i32 (...) @syntax()
  br label %415

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173, %162
  br label %175

175:                                              ; preds = %174, %138
  br label %176

176:                                              ; preds = %175, %114
  br label %177

177:                                              ; preds = %176, %91
  br label %178

178:                                              ; preds = %177, %82
  br label %179

179:                                              ; preds = %178, %59
  br label %180

180:                                              ; preds = %179
  %181 = load i32, i32* %26, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %26, align 4
  br label %33

183:                                              ; preds = %33
  %184 = load i8*, i8** %8, align 8
  %185 = icmp ne i8* %184, null
  br i1 %185, label %188, label %186

186:                                              ; preds = %183
  %187 = call i32 (...) @syntax()
  br label %415

188:                                              ; preds = %183
  %189 = load i8*, i8** %8, align 8
  %190 = call %struct.evhttp_uri* @evhttp_uri_parse(i8* %189)
  store %struct.evhttp_uri* %190, %struct.evhttp_uri** %7, align 8
  %191 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %192 = icmp eq %struct.evhttp_uri* %191, null
  br i1 %192, label %193, label %195

193:                                              ; preds = %188
  %194 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  br label %415

195:                                              ; preds = %188
  %196 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %197 = call i8* @evhttp_uri_get_scheme(%struct.evhttp_uri* %196)
  store i8* %197, i8** %11, align 8
  %198 = load i8*, i8** %11, align 8
  %199 = icmp eq i8* %198, null
  br i1 %199, label %208, label %200

200:                                              ; preds = %195
  %201 = load i8*, i8** %11, align 8
  %202 = call i64 @strcasecmp(i8* %201, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  %203 = icmp ne i64 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %200
  %205 = load i8*, i8** %11, align 8
  %206 = call i64 @strcasecmp(i8* %205, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %204, %195
  %209 = call i32 @err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i64 0, i64 0))
  br label %415

210:                                              ; preds = %204, %200
  %211 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %212 = call i8* @evhttp_uri_get_host(%struct.evhttp_uri* %211)
  store i8* %212, i8** %12, align 8
  %213 = load i8*, i8** %12, align 8
  %214 = icmp eq i8* %213, null
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  %216 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.12, i64 0, i64 0))
  br label %415

217:                                              ; preds = %210
  %218 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %219 = call i32 @evhttp_uri_get_port(%struct.evhttp_uri* %218)
  store i32 %219, i32* %16, align 4
  %220 = load i32, i32* %16, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %228

222:                                              ; preds = %217
  %223 = load i8*, i8** %11, align 8
  %224 = call i64 @strcasecmp(i8* %223, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %225 = icmp eq i64 %224, 0
  %226 = zext i1 %225 to i64
  %227 = select i1 %225, i32 80, i32 443
  store i32 %227, i32* %16, align 4
  br label %228

228:                                              ; preds = %222, %217
  %229 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %230 = call i8* @evhttp_uri_get_path(%struct.evhttp_uri* %229)
  store i8* %230, i8** %13, align 8
  %231 = load i8*, i8** %13, align 8
  %232 = call i64 @strlen(i8* %231)
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %228
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0), i8** %13, align 8
  br label %235

235:                                              ; preds = %234, %228
  %236 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %237 = call i8* @evhttp_uri_get_query(%struct.evhttp_uri* %236)
  store i8* %237, i8** %14, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = icmp eq i8* %238, null
  br i1 %239, label %240, label %244

240:                                              ; preds = %235
  %241 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %242 = load i8*, i8** %13, align 8
  %243 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %241, i32 255, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %242)
  br label %249

244:                                              ; preds = %235
  %245 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %246 = load i8*, i8** %13, align 8
  %247 = load i8*, i8** %14, align 8
  %248 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %245, i32 255, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.15, i64 0, i64 0), i8* %246, i8* %247)
  br label %249

249:                                              ; preds = %244, %240
  %250 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 255
  store i8 0, i8* %250, align 1
  %251 = call i32 (...) @SSL_library_init()
  %252 = call i32 (...) @ERR_load_crypto_strings()
  %253 = call i32 (...) @SSL_load_error_strings()
  %254 = call i32 (...) @OpenSSL_add_all_algorithms()
  %255 = call i32 (...) @RAND_poll()
  store i32 %255, i32* %6, align 4
  %256 = load i32, i32* %6, align 4
  %257 = icmp eq i32 %256, 0
  br i1 %257, label %258, label %260

258:                                              ; preds = %249
  %259 = call i32 @err_openssl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.16, i64 0, i64 0))
  br label %415

260:                                              ; preds = %249
  %261 = call i32 (...) @SSLv23_method()
  %262 = call i32* @SSL_CTX_new(i32 %261)
  store i32* %262, i32** %19, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = icmp ne i32* %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  %266 = call i32 @err_openssl(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.17, i64 0, i64 0))
  br label %415

267:                                              ; preds = %260
  %268 = load i32*, i32** %19, align 8
  %269 = load i8*, i8** %10, align 8
  %270 = call i32 @SSL_CTX_load_verify_locations(i32* %268, i8* %269, i32* null)
  %271 = icmp ne i32 1, %270
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = call i32 @err_openssl(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.18, i64 0, i64 0))
  br label %415

274:                                              ; preds = %267
  %275 = load i32*, i32** %19, align 8
  %276 = load i32, i32* @SSL_VERIFY_PEER, align 4
  %277 = call i32 @SSL_CTX_set_verify(i32* %275, i32 %276, i32* null)
  %278 = load i32*, i32** %19, align 8
  %279 = load i32, i32* @cert_verify_callback, align 4
  %280 = load i8*, i8** %12, align 8
  %281 = call i32 @SSL_CTX_set_cert_verify_callback(i32* %278, i32 %279, i8* %280)
  %282 = call i32 (...) @event_base_new()
  store i32 %282, i32* @base, align 4
  %283 = load i32, i32* @base, align 4
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %287, label %285

285:                                              ; preds = %274
  %286 = call i32 @perror(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %415

287:                                              ; preds = %274
  %288 = load i32*, i32** %19, align 8
  %289 = call i32* @SSL_new(i32* %288)
  store i32* %289, i32** %20, align 8
  %290 = load i32*, i32** %20, align 8
  %291 = icmp eq i32* %290, null
  br i1 %291, label %292, label %294

292:                                              ; preds = %287
  %293 = call i32 @err_openssl(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i64 0, i64 0))
  br label %415

294:                                              ; preds = %287
  %295 = load i8*, i8** %11, align 8
  %296 = call i64 @strcasecmp(i8* %295, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0))
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %302

298:                                              ; preds = %294
  %299 = load i32, i32* @base, align 4
  %300 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %301 = call %struct.bufferevent* @bufferevent_socket_new(i32 %299, i32 -1, i32 %300)
  store %struct.bufferevent* %301, %struct.bufferevent** %21, align 8
  br label %310

302:                                              ; preds = %294
  store i32 1, i32* %28, align 4
  %303 = load i32, i32* @base, align 4
  %304 = load i32*, i32** %20, align 8
  %305 = load i32, i32* @BUFFEREVENT_SSL_CONNECTING, align 4
  %306 = load i32, i32* @BEV_OPT_CLOSE_ON_FREE, align 4
  %307 = load i32, i32* @BEV_OPT_DEFER_CALLBACKS, align 4
  %308 = or i32 %306, %307
  %309 = call %struct.bufferevent* @bufferevent_openssl_socket_new(i32 %303, i32 -1, i32* %304, i32 %305, i32 %308)
  store %struct.bufferevent* %309, %struct.bufferevent** %21, align 8
  br label %310

310:                                              ; preds = %302, %298
  %311 = load %struct.bufferevent*, %struct.bufferevent** %21, align 8
  %312 = icmp eq %struct.bufferevent* %311, null
  br i1 %312, label %313, label %316

313:                                              ; preds = %310
  %314 = load i32, i32* @stderr, align 4
  %315 = call i32 @fprintf(i32 %314, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.21, i64 0, i64 0))
  br label %415

316:                                              ; preds = %310
  %317 = load %struct.bufferevent*, %struct.bufferevent** %21, align 8
  %318 = call i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent* %317, i32 1)
  %319 = load i32, i32* @base, align 4
  %320 = load %struct.bufferevent*, %struct.bufferevent** %21, align 8
  %321 = load i8*, i8** %12, align 8
  %322 = load i32, i32* %16, align 4
  %323 = call %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(i32 %319, i32* null, %struct.bufferevent* %320, i8* %321, i32 %322)
  store %struct.evhttp_connection* %323, %struct.evhttp_connection** %22, align 8
  %324 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %325 = icmp eq %struct.evhttp_connection* %324, null
  br i1 %325, label %326, label %329

326:                                              ; preds = %316
  %327 = load i32, i32* @stderr, align 4
  %328 = call i32 @fprintf(i32 %327, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.22, i64 0, i64 0))
  br label %415

329:                                              ; preds = %316
  %330 = load i32, i32* %17, align 4
  %331 = icmp sgt i32 %330, 0
  br i1 %331, label %332, label %336

332:                                              ; preds = %329
  %333 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %334 = load i32, i32* %17, align 4
  %335 = call i32 @evhttp_connection_set_retries(%struct.evhttp_connection* %333, i32 %334)
  br label %336

336:                                              ; preds = %332, %329
  %337 = load i32, i32* %18, align 4
  %338 = icmp sge i32 %337, 0
  br i1 %338, label %339, label %343

339:                                              ; preds = %336
  %340 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %341 = load i32, i32* %18, align 4
  %342 = call i32 @evhttp_connection_set_timeout(%struct.evhttp_connection* %340, i32 %341)
  br label %343

343:                                              ; preds = %339, %336
  %344 = load i32, i32* @http_request_done, align 4
  %345 = load %struct.bufferevent*, %struct.bufferevent** %21, align 8
  %346 = call %struct.evhttp_request* @evhttp_request_new(i32 %344, %struct.bufferevent* %345)
  store %struct.evhttp_request* %346, %struct.evhttp_request** %23, align 8
  %347 = load %struct.evhttp_request*, %struct.evhttp_request** %23, align 8
  %348 = icmp eq %struct.evhttp_request* %347, null
  br i1 %348, label %349, label %352

349:                                              ; preds = %343
  %350 = load i32, i32* @stderr, align 4
  %351 = call i32 @fprintf(i32 %350, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0))
  br label %415

352:                                              ; preds = %343
  %353 = load %struct.evhttp_request*, %struct.evhttp_request** %23, align 8
  %354 = call %struct.evkeyvalq* @evhttp_request_get_output_headers(%struct.evhttp_request* %353)
  store %struct.evkeyvalq* %354, %struct.evkeyvalq** %24, align 8
  %355 = load %struct.evkeyvalq*, %struct.evkeyvalq** %24, align 8
  %356 = load i8*, i8** %12, align 8
  %357 = call i32 @evhttp_add_header(%struct.evkeyvalq* %355, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.24, i64 0, i64 0), i8* %356)
  %358 = load %struct.evkeyvalq*, %struct.evkeyvalq** %24, align 8
  %359 = call i32 @evhttp_add_header(%struct.evkeyvalq* %358, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.25, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.26, i64 0, i64 0))
  %360 = load i8*, i8** %9, align 8
  %361 = icmp ne i8* %360, null
  br i1 %361, label %362, label %394

362:                                              ; preds = %352
  %363 = load i8*, i8** %9, align 8
  %364 = call i32* @fopen(i8* %363, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.27, i64 0, i64 0))
  store i32* %364, i32** %29, align 8
  store i64 0, i64* %32, align 8
  %365 = load i32*, i32** %29, align 8
  %366 = icmp ne i32* %365, null
  br i1 %366, label %369, label %367

367:                                              ; preds = %362
  %368 = call i32 (...) @syntax()
  br label %415

369:                                              ; preds = %362
  %370 = load %struct.evhttp_request*, %struct.evhttp_request** %23, align 8
  %371 = call %struct.evbuffer* @evhttp_request_get_output_buffer(%struct.evhttp_request* %370)
  store %struct.evbuffer* %371, %struct.evbuffer** %25, align 8
  br label %372

372:                                              ; preds = %377, %369
  %373 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %374 = load i32*, i32** %29, align 8
  %375 = call i64 @fread(i8* %373, i32 1, i32 1024, i32* %374)
  store i64 %375, i64* %31, align 8
  %376 = icmp ugt i64 %375, 0
  br i1 %376, label %377, label %385

377:                                              ; preds = %372
  %378 = load %struct.evbuffer*, %struct.evbuffer** %25, align 8
  %379 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %380 = load i64, i64* %31, align 8
  %381 = call i32 @evbuffer_add(%struct.evbuffer* %378, i8* %379, i64 %380)
  %382 = load i64, i64* %31, align 8
  %383 = load i64, i64* %32, align 8
  %384 = add i64 %383, %382
  store i64 %384, i64* %32, align 8
  br label %372

385:                                              ; preds = %372
  %386 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %387 = load i64, i64* %32, align 8
  %388 = call i32 @evutil_snprintf(i8* %386, i32 1023, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i64 0, i64 0), i64 %387)
  %389 = load %struct.evkeyvalq*, %struct.evkeyvalq** %24, align 8
  %390 = getelementptr inbounds [1024 x i8], [1024 x i8]* %30, i64 0, i64 0
  %391 = call i32 @evhttp_add_header(%struct.evkeyvalq* %389, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.29, i64 0, i64 0), i8* %390)
  %392 = load i32*, i32** %29, align 8
  %393 = call i32 @fclose(i32* %392)
  br label %394

394:                                              ; preds = %385, %352
  %395 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %396 = load %struct.evhttp_request*, %struct.evhttp_request** %23, align 8
  %397 = load i8*, i8** %9, align 8
  %398 = icmp ne i8* %397, null
  br i1 %398, label %399, label %401

399:                                              ; preds = %394
  %400 = load i32, i32* @EVHTTP_REQ_POST, align 4
  br label %403

401:                                              ; preds = %394
  %402 = load i32, i32* @EVHTTP_REQ_GET, align 4
  br label %403

403:                                              ; preds = %401, %399
  %404 = phi i32 [ %400, %399 ], [ %402, %401 ]
  %405 = getelementptr inbounds [256 x i8], [256 x i8]* %15, i64 0, i64 0
  %406 = call i32 @evhttp_make_request(%struct.evhttp_connection* %395, %struct.evhttp_request* %396, i32 %404, i8* %405)
  store i32 %406, i32* %6, align 4
  %407 = load i32, i32* %6, align 4
  %408 = icmp ne i32 %407, 0
  br i1 %408, label %409, label %412

409:                                              ; preds = %403
  %410 = load i32, i32* @stderr, align 4
  %411 = call i32 @fprintf(i32 %410, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.30, i64 0, i64 0))
  br label %415

412:                                              ; preds = %403
  %413 = load i32, i32* @base, align 4
  %414 = call i32 @event_base_dispatch(i32 %413)
  br label %416

415:                                              ; preds = %409, %367, %349, %326, %313, %292, %285, %272, %265, %258, %215, %208, %193, %186, %171, %160, %136, %112, %80, %57
  store i32 1, i32* %27, align 4
  br label %416

416:                                              ; preds = %415, %412
  %417 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %418 = icmp ne %struct.evhttp_connection* %417, null
  br i1 %418, label %419, label %422

419:                                              ; preds = %416
  %420 = load %struct.evhttp_connection*, %struct.evhttp_connection** %22, align 8
  %421 = call i32 @evhttp_connection_free(%struct.evhttp_connection* %420)
  br label %422

422:                                              ; preds = %419, %416
  %423 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %424 = icmp ne %struct.evhttp_uri* %423, null
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = load %struct.evhttp_uri*, %struct.evhttp_uri** %7, align 8
  %427 = call i32 @evhttp_uri_free(%struct.evhttp_uri* %426)
  br label %428

428:                                              ; preds = %425, %422
  %429 = load i32, i32* @base, align 4
  %430 = call i32 @event_base_free(i32 %429)
  %431 = load i32*, i32** %19, align 8
  %432 = icmp ne i32* %431, null
  br i1 %432, label %433, label %436

433:                                              ; preds = %428
  %434 = load i32*, i32** %19, align 8
  %435 = call i32 @SSL_CTX_free(i32* %434)
  br label %436

436:                                              ; preds = %433, %428
  %437 = load i32, i32* %28, align 4
  %438 = icmp eq i32 %437, 0
  br i1 %438, label %439, label %445

439:                                              ; preds = %436
  %440 = load i32*, i32** %20, align 8
  %441 = icmp ne i32* %440, null
  br i1 %441, label %442, label %445

442:                                              ; preds = %439
  %443 = load i32*, i32** %20, align 8
  %444 = call i32 @SSL_free(i32* %443)
  br label %445

445:                                              ; preds = %442, %439, %436
  %446 = call i32 (...) @EVP_cleanup()
  %447 = call i32 (...) @ERR_free_strings()
  %448 = call i32 @ERR_remove_state(i32 0)
  %449 = call i32 (...) @CRYPTO_cleanup_all_ex_data()
  %450 = call i32 (...) @SSL_COMP_get_compression_methods()
  %451 = call i32 @sk_SSL_COMP_free(i32 %450)
  %452 = load i32, i32* %27, align 4
  ret i32 %452
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @syntax(...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local %struct.evhttp_uri* @evhttp_uri_parse(i8*) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i8* @evhttp_uri_get_scheme(%struct.evhttp_uri*) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i8* @evhttp_uri_get_host(%struct.evhttp_uri*) #1

declare dso_local i32 @evhttp_uri_get_port(%struct.evhttp_uri*) #1

declare dso_local i8* @evhttp_uri_get_path(%struct.evhttp_uri*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @evhttp_uri_get_query(%struct.evhttp_uri*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @SSL_library_init(...) #1

declare dso_local i32 @ERR_load_crypto_strings(...) #1

declare dso_local i32 @SSL_load_error_strings(...) #1

declare dso_local i32 @OpenSSL_add_all_algorithms(...) #1

declare dso_local i32 @RAND_poll(...) #1

declare dso_local i32 @err_openssl(i8*) #1

declare dso_local i32* @SSL_CTX_new(i32) #1

declare dso_local i32 @SSLv23_method(...) #1

declare dso_local i32 @SSL_CTX_load_verify_locations(i32*, i8*, i32*) #1

declare dso_local i32 @SSL_CTX_set_verify(i32*, i32, i32*) #1

declare dso_local i32 @SSL_CTX_set_cert_verify_callback(i32*, i32, i8*) #1

declare dso_local i32 @event_base_new(...) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32* @SSL_new(i32*) #1

declare dso_local %struct.bufferevent* @bufferevent_socket_new(i32, i32, i32) #1

declare dso_local %struct.bufferevent* @bufferevent_openssl_socket_new(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @bufferevent_openssl_set_allow_dirty_shutdown(%struct.bufferevent*, i32) #1

declare dso_local %struct.evhttp_connection* @evhttp_connection_base_bufferevent_new(i32, i32*, %struct.bufferevent*, i8*, i32) #1

declare dso_local i32 @evhttp_connection_set_retries(%struct.evhttp_connection*, i32) #1

declare dso_local i32 @evhttp_connection_set_timeout(%struct.evhttp_connection*, i32) #1

declare dso_local %struct.evhttp_request* @evhttp_request_new(i32, %struct.bufferevent*) #1

declare dso_local %struct.evkeyvalq* @evhttp_request_get_output_headers(%struct.evhttp_request*) #1

declare dso_local i32 @evhttp_add_header(%struct.evkeyvalq*, i8*, i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local %struct.evbuffer* @evhttp_request_get_output_buffer(%struct.evhttp_request*) #1

declare dso_local i64 @fread(i8*, i32, i32, i32*) #1

declare dso_local i32 @evbuffer_add(%struct.evbuffer*, i8*, i64) #1

declare dso_local i32 @evutil_snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @evhttp_make_request(%struct.evhttp_connection*, %struct.evhttp_request*, i32, i8*) #1

declare dso_local i32 @event_base_dispatch(i32) #1

declare dso_local i32 @evhttp_connection_free(%struct.evhttp_connection*) #1

declare dso_local i32 @evhttp_uri_free(%struct.evhttp_uri*) #1

declare dso_local i32 @event_base_free(i32) #1

declare dso_local i32 @SSL_CTX_free(i32*) #1

declare dso_local i32 @SSL_free(i32*) #1

declare dso_local i32 @EVP_cleanup(...) #1

declare dso_local i32 @ERR_free_strings(...) #1

declare dso_local i32 @ERR_remove_state(i32) #1

declare dso_local i32 @CRYPTO_cleanup_all_ex_data(...) #1

declare dso_local i32 @sk_SSL_COMP_free(i32) #1

declare dso_local i32 @SSL_COMP_get_compression_methods(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
