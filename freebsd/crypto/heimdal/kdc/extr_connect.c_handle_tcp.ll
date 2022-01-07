; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_handle_tcp.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/kdc/extr_connect.c_handle_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.descr = type { i64, i32, i8*, i32, i32, i32 }

@rk_SOCK_ERRNO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"recvfrom failed from %s to %s/%d\00", align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"connection closed before end of data after %lu bytes from %s to %s/%d\00", align 1
@enable_http = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"TCP data of strange type from %s to %s/%d\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"TCP extension not supported\00", align 1
@KRB5KRB_ERR_FIELD_TOOLONG = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.descr*, i32, i32)* @handle_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_tcp(i32 %0, i32* %1, %struct.descr* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.descr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store %struct.descr* %2, %struct.descr** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %13, align 4
  %15 = load %struct.descr*, %struct.descr** %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.descr, %struct.descr* %15, i64 %17
  %19 = getelementptr inbounds %struct.descr, %struct.descr* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %5
  %23 = load i32, i32* %6, align 4
  %24 = load i32*, i32** %7, align 8
  %25 = load %struct.descr*, %struct.descr** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @add_new_tcp(i32 %23, i32* %24, %struct.descr* %25, i32 %26, i32 %27)
  br label %337

29:                                               ; preds = %5
  %30 = load %struct.descr*, %struct.descr** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.descr, %struct.descr* %30, i64 %32
  %34 = getelementptr inbounds %struct.descr, %struct.descr* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %37 = call i32 @recvfrom(i32 %35, i8* %36, i32 1024, i32 0, i32* null, i32* null)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i64 @rk_IS_SOCKET_ERROR(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %63

41:                                               ; preds = %29
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @rk_SOCK_ERRNO, align 4
  %44 = load %struct.descr*, %struct.descr** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.descr, %struct.descr* %44, i64 %46
  %48 = getelementptr inbounds %struct.descr, %struct.descr* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.descr*, %struct.descr** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.descr, %struct.descr* %50, i64 %52
  %54 = call i32 @descr_type(%struct.descr* %53)
  %55 = load %struct.descr*, %struct.descr** %8, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.descr, %struct.descr* %55, i64 %57
  %59 = getelementptr inbounds %struct.descr, %struct.descr* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ntohs(i32 %60)
  %62 = call i32 @krb5_warn(i32 %42, i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %54, i32 %61)
  br label %337

63:                                               ; preds = %29
  %64 = load i32, i32* %12, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %99

66:                                               ; preds = %63
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.descr*, %struct.descr** %8, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.descr, %struct.descr* %68, i64 %70
  %72 = getelementptr inbounds %struct.descr, %struct.descr* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = load %struct.descr*, %struct.descr** %8, align 8
  %76 = load i32, i32* %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.descr, %struct.descr* %75, i64 %77
  %79 = getelementptr inbounds %struct.descr, %struct.descr* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.descr*, %struct.descr** %8, align 8
  %82 = load i32, i32* %9, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.descr, %struct.descr* %81, i64 %83
  %85 = call i32 @descr_type(%struct.descr* %84)
  %86 = load %struct.descr*, %struct.descr** %8, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.descr, %struct.descr* %86, i64 %88
  %90 = getelementptr inbounds %struct.descr, %struct.descr* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @ntohs(i32 %91)
  %93 = call i32 @krb5_warnx(i32 %67, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %80, i32 %85, i32 %92)
  %94 = load %struct.descr*, %struct.descr** %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.descr, %struct.descr* %94, i64 %96
  %98 = call i32 @clear_descr(%struct.descr* %97)
  br label %337

99:                                               ; preds = %63
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %6, align 4
  %102 = load i32*, i32** %7, align 8
  %103 = load %struct.descr*, %struct.descr** %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.descr, %struct.descr* %103, i64 %105
  %107 = load i32, i32* %12, align 4
  %108 = call i64 @grow_descr(i32 %101, i32* %102, %struct.descr* %106, i32 %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %100
  br label %337

111:                                              ; preds = %100
  %112 = load %struct.descr*, %struct.descr** %8, align 8
  %113 = load i32, i32* %9, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.descr, %struct.descr* %112, i64 %114
  %116 = getelementptr inbounds %struct.descr, %struct.descr* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = load %struct.descr*, %struct.descr** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.descr, %struct.descr* %118, i64 %120
  %122 = getelementptr inbounds %struct.descr, %struct.descr* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %117, i64 %124
  %126 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %127 = load i32, i32* %12, align 4
  %128 = call i32 @memcpy(i8* %125, i8* %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  %130 = load %struct.descr*, %struct.descr** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.descr, %struct.descr* %130, i64 %132
  %134 = getelementptr inbounds %struct.descr, %struct.descr* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = add nsw i32 %135, %129
  store i32 %136, i32* %134, align 8
  %137 = load %struct.descr*, %struct.descr** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.descr, %struct.descr* %137, i64 %139
  %141 = getelementptr inbounds %struct.descr, %struct.descr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %142, 4
  br i1 %143, label %144, label %163

144:                                              ; preds = %111
  %145 = load %struct.descr*, %struct.descr** %8, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.descr, %struct.descr* %145, i64 %147
  %149 = getelementptr inbounds %struct.descr, %struct.descr* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 0
  %152 = load i8, i8* %151, align 1
  %153 = sext i8 %152 to i32
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %163

155:                                              ; preds = %144
  %156 = load i32, i32* %6, align 4
  %157 = load i32*, i32** %7, align 8
  %158 = load %struct.descr*, %struct.descr** %8, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.descr, %struct.descr* %158, i64 %160
  %162 = call i32 @handle_vanilla_tcp(i32 %156, i32* %157, %struct.descr* %161)
  store i32 %162, i32* %13, align 4
  br label %302

163:                                              ; preds = %144, %111
  %164 = load i64, i64* @enable_http, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %233

166:                                              ; preds = %163
  %167 = load %struct.descr*, %struct.descr** %8, align 8
  %168 = load i32, i32* %9, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.descr, %struct.descr* %167, i64 %169
  %171 = getelementptr inbounds %struct.descr, %struct.descr* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = icmp sge i32 %172, 4
  br i1 %173, label %174, label %233

174:                                              ; preds = %166
  %175 = load %struct.descr*, %struct.descr** %8, align 8
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.descr, %struct.descr* %175, i64 %177
  %179 = getelementptr inbounds %struct.descr, %struct.descr* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = call i64 @strncmp(i8* %180, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %233

183:                                              ; preds = %174
  %184 = load %struct.descr*, %struct.descr** %8, align 8
  %185 = load i32, i32* %9, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.descr, %struct.descr* %184, i64 %186
  %188 = getelementptr inbounds %struct.descr, %struct.descr* %187, i32 0, i32 2
  %189 = load i8*, i8** %188, align 8
  %190 = load %struct.descr*, %struct.descr** %8, align 8
  %191 = load i32, i32* %9, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.descr, %struct.descr* %190, i64 %192
  %194 = getelementptr inbounds %struct.descr, %struct.descr* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8, i8* %189, i64 %196
  %198 = getelementptr inbounds i8, i8* %197, i64 -4
  %199 = call i64 @strncmp(i8* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %233

201:                                              ; preds = %183
  %202 = load %struct.descr*, %struct.descr** %8, align 8
  %203 = load i32, i32* %9, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds %struct.descr, %struct.descr* %202, i64 %204
  %206 = getelementptr inbounds %struct.descr, %struct.descr* %205, i32 0, i32 2
  %207 = load i8*, i8** %206, align 8
  %208 = load %struct.descr*, %struct.descr** %8, align 8
  %209 = load i32, i32* %9, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.descr, %struct.descr* %208, i64 %210
  %212 = getelementptr inbounds %struct.descr, %struct.descr* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 8
  %214 = sub nsw i32 %213, 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8, i8* %207, i64 %215
  store i8 0, i8* %216, align 1
  %217 = load i32, i32* %6, align 4
  %218 = load i32*, i32** %7, align 8
  %219 = load %struct.descr*, %struct.descr** %8, align 8
  %220 = load i32, i32* %9, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.descr, %struct.descr* %219, i64 %221
  %223 = call i32 @handle_http_tcp(i32 %217, i32* %218, %struct.descr* %222)
  store i32 %223, i32* %13, align 4
  %224 = load i32, i32* %13, align 4
  %225 = icmp slt i32 %224, 0
  br i1 %225, label %226, label %232

226:                                              ; preds = %201
  %227 = load %struct.descr*, %struct.descr** %8, align 8
  %228 = load i32, i32* %9, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.descr, %struct.descr* %227, i64 %229
  %231 = call i32 @clear_descr(%struct.descr* %230)
  br label %232

232:                                              ; preds = %226, %201
  br label %301

233:                                              ; preds = %183, %174, %166, %163
  %234 = load %struct.descr*, %struct.descr** %8, align 8
  %235 = load i32, i32* %9, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.descr, %struct.descr* %234, i64 %236
  %238 = getelementptr inbounds %struct.descr, %struct.descr* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = icmp sgt i32 %239, 4
  br i1 %240, label %241, label %300

241:                                              ; preds = %233
  %242 = load i32, i32* %6, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = load %struct.descr*, %struct.descr** %8, align 8
  %245 = load i32, i32* %9, align 4
  %246 = sext i32 %245 to i64
  %247 = getelementptr inbounds %struct.descr, %struct.descr* %244, i64 %246
  %248 = getelementptr inbounds %struct.descr, %struct.descr* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.descr*, %struct.descr** %8, align 8
  %251 = load i32, i32* %9, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.descr, %struct.descr* %250, i64 %252
  %254 = call i32 @descr_type(%struct.descr* %253)
  %255 = load %struct.descr*, %struct.descr** %8, align 8
  %256 = load i32, i32* %9, align 4
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds %struct.descr, %struct.descr* %255, i64 %257
  %259 = getelementptr inbounds %struct.descr, %struct.descr* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 8
  %261 = call i32 @ntohs(i32 %260)
  %262 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %242, i32* %243, i32 0, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %249, i32 %254, i32 %261)
  %263 = load %struct.descr*, %struct.descr** %8, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.descr, %struct.descr* %263, i64 %265
  %267 = getelementptr inbounds %struct.descr, %struct.descr* %266, i32 0, i32 2
  %268 = load i8*, i8** %267, align 8
  %269 = getelementptr inbounds i8, i8* %268, i64 0
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = and i32 %271, 128
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %294

274:                                              ; preds = %241
  %275 = load i32, i32* %6, align 4
  %276 = load i32*, i32** %7, align 8
  %277 = call i32 (i32, i32*, i32, i8*, ...) @kdc_log(i32 %275, i32* %276, i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  %278 = load i32, i32* %6, align 4
  %279 = load i32, i32* @KRB5KRB_ERR_FIELD_TOOLONG, align 4
  %280 = call i32 @krb5_mk_error(i32 %278, i32 %279, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %14)
  store i32 %280, i32* %13, align 4
  %281 = load i32, i32* %13, align 4
  %282 = icmp eq i32 %281, 0
  br i1 %282, label %283, label %293

283:                                              ; preds = %274
  %284 = load i32, i32* %6, align 4
  %285 = load i32*, i32** %7, align 8
  %286 = load i32, i32* @TRUE, align 4
  %287 = load %struct.descr*, %struct.descr** %8, align 8
  %288 = load i32, i32* %9, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.descr, %struct.descr* %287, i64 %289
  %291 = call i32 @send_reply(i32 %284, i32* %285, i32 %286, %struct.descr* %290, i32* %14)
  %292 = call i32 @krb5_data_free(i32* %14)
  br label %293

293:                                              ; preds = %283, %274
  br label %294

294:                                              ; preds = %293, %241
  %295 = load %struct.descr*, %struct.descr** %8, align 8
  %296 = load i32, i32* %9, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.descr, %struct.descr* %295, i64 %297
  %299 = call i32 @clear_descr(%struct.descr* %298)
  br label %337

300:                                              ; preds = %233
  br label %301

301:                                              ; preds = %300, %232
  br label %302

302:                                              ; preds = %301, %155
  %303 = load i32, i32* %13, align 4
  %304 = icmp slt i32 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %302
  br label %337

306:                                              ; preds = %302
  %307 = load i32, i32* %13, align 4
  %308 = icmp eq i32 %307, 1
  br i1 %308, label %309, label %336

309:                                              ; preds = %306
  %310 = load i32, i32* %6, align 4
  %311 = load i32*, i32** %7, align 8
  %312 = load %struct.descr*, %struct.descr** %8, align 8
  %313 = load i32, i32* %9, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds %struct.descr, %struct.descr* %312, i64 %314
  %316 = getelementptr inbounds %struct.descr, %struct.descr* %315, i32 0, i32 2
  %317 = load i8*, i8** %316, align 8
  %318 = bitcast i8* %317 to i32*
  %319 = load %struct.descr*, %struct.descr** %8, align 8
  %320 = load i32, i32* %9, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds %struct.descr, %struct.descr* %319, i64 %321
  %323 = getelementptr inbounds %struct.descr, %struct.descr* %322, i32 0, i32 1
  %324 = load i32, i32* %323, align 8
  %325 = load i32, i32* @TRUE, align 4
  %326 = load %struct.descr*, %struct.descr** %8, align 8
  %327 = load i32, i32* %9, align 4
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds %struct.descr, %struct.descr* %326, i64 %328
  %330 = call i32 @do_request(i32 %310, i32* %311, i32* %318, i32 %324, i32 %325, %struct.descr* %329)
  %331 = load %struct.descr*, %struct.descr** %8, align 8
  %332 = load i32, i32* %9, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds %struct.descr, %struct.descr* %331, i64 %333
  %335 = call i32 @clear_descr(%struct.descr* %334)
  br label %336

336:                                              ; preds = %309, %306
  br label %337

337:                                              ; preds = %22, %41, %66, %110, %294, %305, %336
  ret void
}

declare dso_local i32 @add_new_tcp(i32, i32*, %struct.descr*, i32, i32) #1

declare dso_local i32 @recvfrom(i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i64 @rk_IS_SOCKET_ERROR(i32) #1

declare dso_local i32 @krb5_warn(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @descr_type(%struct.descr*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @krb5_warnx(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @clear_descr(%struct.descr*) #1

declare dso_local i64 @grow_descr(i32, i32*, %struct.descr*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @handle_vanilla_tcp(i32, i32*, %struct.descr*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @handle_http_tcp(i32, i32*, %struct.descr*) #1

declare dso_local i32 @kdc_log(i32, i32*, i32, i8*, ...) #1

declare dso_local i32 @krb5_mk_error(i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @send_reply(i32, i32*, i32, %struct.descr*, i32*) #1

declare dso_local i32 @krb5_data_free(i32*) #1

declare dso_local i32 @do_request(i32, i32*, i32*, i32, i32, %struct.descr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
