; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_find_all_addresses.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/krb5/extr_get_addrs.c_find_all_addresses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }
%struct.sockaddr = type { i32 }
%struct.ifaddrs = type { i32, i32*, %struct.ifaddrs* }

@ENXIO = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [15 x i8] c"getifaddrs: %s\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"no addresses found\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@EXTRA_ADDRESSES = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"malloc: out of memory\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@LOOP = common dso_local global i32 0, align 4
@LOOP_IF_NONE = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_6__*, i32)* @find_all_addresses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_all_addresses(i32 %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sockaddr, align 4
  %9 = alloca %struct.ifaddrs*, align 8
  %10 = alloca %struct.ifaddrs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__, align 8
  store i32 %0, i32* %5, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i64, i64* @ENXIO, align 8
  store i64 %15, i64* %11, align 8
  %16 = call i32 @getifaddrs(%struct.ifaddrs** %9)
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load i64, i64* @errno, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i32 @strerror(i64 %22)
  %24 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %20, i64 %21, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i64, i64* %11, align 8
  store i64 %25, i64* %4, align 8
  br label %310

26:                                               ; preds = %3
  %27 = call i32 @memset(%struct.sockaddr* %8, i32 0, i32 4)
  %28 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  store %struct.ifaddrs* %28, %struct.ifaddrs** %10, align 8
  store i32 0, i32* %12, align 4
  br label %29

29:                                               ; preds = %33, %26
  %30 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %31 = icmp ne %struct.ifaddrs* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  br label %33

33:                                               ; preds = %32
  %34 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %35 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %34, i32 0, i32 2
  %36 = load %struct.ifaddrs*, %struct.ifaddrs** %35, align 8
  store %struct.ifaddrs* %36, %struct.ifaddrs** %10, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %29

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %39
  %43 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %44 = call i32 @freeifaddrs(%struct.ifaddrs* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i64, i64* @ENXIO, align 8
  %47 = call i32 @N_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %45, i64 %46, i8* %49)
  %51 = load i64, i64* @ENXIO, align 8
  store i64 %51, i64* %4, align 8
  br label %310

52:                                               ; preds = %39
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @EXTRA_ADDRESSES, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load i32, i32* %5, align 4
  %59 = call i64 @krb5_get_ignore_addresses(i32 %58, %struct.TYPE_6__* %14)
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %57
  %63 = load i64, i64* %11, align 8
  store i64 %63, i64* %4, align 8
  br label %310

64:                                               ; preds = %57
  br label %65

65:                                               ; preds = %64, %52
  %66 = load i32, i32* %12, align 4
  %67 = call i32* @calloc(i32 %66, i32 4)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32* %67, i32** %69, align 8
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = icmp eq i32* %72, null
  br i1 %73, label %74, label %86

74:                                               ; preds = %65
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @krb5_free_addresses(i32 %75, %struct.TYPE_6__* %14)
  %77 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %78 = call i32 @freeifaddrs(%struct.ifaddrs* %77)
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* @ENOMEM, align 8
  %81 = call i32 @N_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = call i32 (i32, i64, i8*, ...) @krb5_set_error_message(i32 %79, i64 %80, i8* %83)
  %85 = load i64, i64* @ENOMEM, align 8
  store i64 %85, i64* %4, align 8
  br label %310

86:                                               ; preds = %65
  %87 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  store %struct.ifaddrs* %87, %struct.ifaddrs** %10, align 8
  store i32 0, i32* %13, align 4
  br label %88

88:                                               ; preds = %177, %86
  %89 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %90 = icmp ne %struct.ifaddrs* %89, null
  br i1 %90, label %91, label %181

91:                                               ; preds = %88
  %92 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %93 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @IFF_UP, align 4
  %96 = and i32 %94, %95
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  br label %177

99:                                               ; preds = %91
  %100 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %101 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp eq i32* %102, null
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  br label %177

105:                                              ; preds = %99
  %106 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %107 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = call i64 @memcmp(i32* %108, %struct.sockaddr* %8, i32 4)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %177

112:                                              ; preds = %105
  %113 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %114 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @krb5_sockaddr_uninteresting(i32* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  br label %177

119:                                              ; preds = %112
  %120 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %121 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i64 @krb5_sockaddr_is_loopback(i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %131

125:                                              ; preds = %119
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* @LOOP, align 4
  %128 = and i32 %126, %127
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %125
  br label %177

131:                                              ; preds = %125, %119
  %132 = load i32, i32* %5, align 4
  %133 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %134 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32*, i32** %137, align 8
  %139 = load i32, i32* %13, align 4
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %138, i64 %140
  %142 = call i64 @krb5_sockaddr2address(i32 %132, i32* %135, i32* %141)
  store i64 %142, i64* %11, align 8
  %143 = load i64, i64* %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %131
  br label %177

146:                                              ; preds = %131
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @EXTRA_ADDRESSES, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %174

151:                                              ; preds = %146
  %152 = load i32, i32* %5, align 4
  %153 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %13, align 4
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = call i64 @krb5_address_search(i32 %152, i32* %158, %struct.TYPE_6__* %14)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %174

161:                                              ; preds = %151
  %162 = load i32, i32* %5, align 4
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %13, align 4
  %167 = zext i32 %166 to i64
  %168 = getelementptr inbounds i32, i32* %165, i64 %167
  %169 = call i32 @krb5_free_address(i32 %162, i32* %168)
  %170 = load i32, i32* @LOOP_IF_NONE, align 4
  %171 = xor i32 %170, -1
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %172, %171
  store i32 %173, i32* %7, align 4
  br label %177

174:                                              ; preds = %151, %146
  %175 = load i32, i32* %13, align 4
  %176 = add i32 %175, 1
  store i32 %176, i32* %13, align 4
  br label %177

177:                                              ; preds = %174, %161, %145, %130, %118, %111, %104, %98
  %178 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %179 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %178, i32 0, i32 2
  %180 = load %struct.ifaddrs*, %struct.ifaddrs** %179, align 8
  store %struct.ifaddrs* %180, %struct.ifaddrs** %10, align 8
  br label %88

181:                                              ; preds = %88
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* @LOOP_IF_NONE, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %284

186:                                              ; preds = %181
  %187 = load i32, i32* %13, align 4
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %189, label %284

189:                                              ; preds = %186
  %190 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  store %struct.ifaddrs* %190, %struct.ifaddrs** %10, align 8
  br label %191

191:                                              ; preds = %279, %189
  %192 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %193 = icmp ne %struct.ifaddrs* %192, null
  br i1 %193, label %194, label %283

194:                                              ; preds = %191
  %195 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %196 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @IFF_UP, align 4
  %199 = and i32 %197, %198
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %194
  br label %279

202:                                              ; preds = %194
  %203 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %204 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %203, i32 0, i32 1
  %205 = load i32*, i32** %204, align 8
  %206 = icmp eq i32* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %202
  br label %279

208:                                              ; preds = %202
  %209 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %210 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = call i64 @memcmp(i32* %211, %struct.sockaddr* %8, i32 4)
  %213 = icmp eq i64 %212, 0
  br i1 %213, label %214, label %215

214:                                              ; preds = %208
  br label %279

215:                                              ; preds = %208
  %216 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %217 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %216, i32 0, i32 1
  %218 = load i32*, i32** %217, align 8
  %219 = call i64 @krb5_sockaddr_uninteresting(i32* %218)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %215
  br label %279

222:                                              ; preds = %215
  %223 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %224 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %223, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i64 @krb5_sockaddr_is_loopback(i32* %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %229, label %228

228:                                              ; preds = %222
  br label %279

229:                                              ; preds = %222
  %230 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %231 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load i32, i32* @IFF_LOOPBACK, align 4
  %234 = and i32 %232, %233
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %229
  br label %279

237:                                              ; preds = %229
  %238 = load i32, i32* %5, align 4
  %239 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %240 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %13, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds i32, i32* %244, i64 %246
  %248 = call i64 @krb5_sockaddr2address(i32 %238, i32* %241, i32* %247)
  store i64 %248, i64* %11, align 8
  %249 = load i64, i64* %11, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %251, label %252

251:                                              ; preds = %237
  br label %279

252:                                              ; preds = %237
  %253 = load i32, i32* %7, align 4
  %254 = load i32, i32* @EXTRA_ADDRESSES, align 4
  %255 = and i32 %253, %254
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %257, label %276

257:                                              ; preds = %252
  %258 = load i32, i32* %5, align 4
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i32, i32* %13, align 4
  %263 = zext i32 %262 to i64
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  %265 = call i64 @krb5_address_search(i32 %258, i32* %264, %struct.TYPE_6__* %14)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %257
  %268 = load i32, i32* %5, align 4
  %269 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %269, i32 0, i32 1
  %271 = load i32*, i32** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %271, i64 %273
  %275 = call i32 @krb5_free_address(i32 %268, i32* %274)
  br label %279

276:                                              ; preds = %257, %252
  %277 = load i32, i32* %13, align 4
  %278 = add i32 %277, 1
  store i32 %278, i32* %13, align 4
  br label %279

279:                                              ; preds = %276, %267, %251, %236, %228, %221, %214, %207, %201
  %280 = load %struct.ifaddrs*, %struct.ifaddrs** %10, align 8
  %281 = getelementptr inbounds %struct.ifaddrs, %struct.ifaddrs* %280, i32 0, i32 2
  %282 = load %struct.ifaddrs*, %struct.ifaddrs** %281, align 8
  store %struct.ifaddrs* %282, %struct.ifaddrs** %10, align 8
  br label %191

283:                                              ; preds = %191
  br label %284

284:                                              ; preds = %283, %186, %181
  %285 = load i32, i32* %7, align 4
  %286 = load i32, i32* @EXTRA_ADDRESSES, align 4
  %287 = and i32 %285, %286
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %292

289:                                              ; preds = %284
  %290 = load i32, i32* %5, align 4
  %291 = call i32 @krb5_free_addresses(i32 %290, %struct.TYPE_6__* %14)
  br label %292

292:                                              ; preds = %289, %284
  %293 = load %struct.ifaddrs*, %struct.ifaddrs** %9, align 8
  %294 = call i32 @freeifaddrs(%struct.ifaddrs* %293)
  %295 = load i64, i64* %11, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %304

297:                                              ; preds = %292
  %298 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %299 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %298, i32 0, i32 1
  %300 = load i32*, i32** %299, align 8
  %301 = call i32 @free(i32* %300)
  %302 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %302, i32 0, i32 1
  store i32* null, i32** %303, align 8
  br label %308

304:                                              ; preds = %292
  %305 = load i32, i32* %13, align 4
  %306 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %307 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %306, i32 0, i32 0
  store i32 %305, i32* %307, align 8
  br label %308

308:                                              ; preds = %304, %297
  %309 = load i64, i64* %11, align 8
  store i64 %309, i64* %4, align 8
  br label %310

310:                                              ; preds = %308, %74, %62, %42, %18
  %311 = load i64, i64* %4, align 8
  ret i64 %311
}

declare dso_local i32 @getifaddrs(%struct.ifaddrs**) #1

declare dso_local i32 @krb5_set_error_message(i32, i64, i8*, ...) #1

declare dso_local i32 @strerror(i64) #1

declare dso_local i32 @memset(%struct.sockaddr*, i32, i32) #1

declare dso_local i32 @freeifaddrs(%struct.ifaddrs*) #1

declare dso_local i32 @N_(i8*, i8*) #1

declare dso_local i64 @krb5_get_ignore_addresses(i32, %struct.TYPE_6__*) #1

declare dso_local i32* @calloc(i32, i32) #1

declare dso_local i32 @krb5_free_addresses(i32, %struct.TYPE_6__*) #1

declare dso_local i64 @memcmp(i32*, %struct.sockaddr*, i32) #1

declare dso_local i64 @krb5_sockaddr_uninteresting(i32*) #1

declare dso_local i64 @krb5_sockaddr_is_loopback(i32*) #1

declare dso_local i64 @krb5_sockaddr2address(i32, i32*, i32*) #1

declare dso_local i64 @krb5_address_search(i32, i32*, %struct.TYPE_6__*) #1

declare dso_local i32 @krb5_free_address(i32, i32*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
