; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_process_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/telnet/telnet/extr_sys_bsd.c_process_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i64, i64 }

@process_rings.TimeValue = internal global %struct.timeval zeroinitializer, align 4
@net = common dso_local global i32 0, align 4
@tout = common dso_local global i32 0, align 4
@tin = common dso_local global i32 0, align 4
@NFDBITS = common dso_local global i32 0, align 4
@fdsn = common dso_local global i32 0, align 4
@ibitsp = common dso_local global i32* null, align 8
@obitsp = common dso_local global i32* null, align 8
@xbitsp = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"sleep(5) from telnet, after select: %s\0D\0A\00", align 1
@SYNCHing = common dso_local global i32 0, align 4
@netiring = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@process_rings.bogus_oob = internal global i32 0, align 4
@process_rings.first = internal global i32 1, align 4
@SIOCATMARK = common dso_local global i32 0, align 4
@MSG_OOB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@clocks = common dso_local global %struct.TYPE_7__ zeroinitializer, align 8
@didnetreceive = common dso_local global i32 0, align 4
@EWOULDBLOCK = common dso_local global i64 0, align 8
@netdata = common dso_local global i64 0, align 8
@ttyiring = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@EIO = common dso_local global i64 0, align 8
@globalmode = common dso_local global i32 0, align 4
@termEofChar = common dso_local global i8 0, align 1
@termdata = common dso_local global i64 0, align 8
@flushout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @process_rings(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %6
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %10, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27, %24, %6
  %31 = load i32, i32* @net, align 4
  %32 = load i32, i32* %16, align 4
  %33 = icmp sgt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = load i32, i32* @net, align 4
  store i32 %35, i32* %16, align 4
  br label %36

36:                                               ; preds = %34, %30, %27
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = load i32, i32* @tout, align 4
  %41 = load i32, i32* %16, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %39
  %44 = load i32, i32* @tout, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %39, %36
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = load i32, i32* @tin, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @tin, align 4
  store i32 %53, i32* %16, align 4
  br label %54

54:                                               ; preds = %52, %48, %45
  %55 = load i32, i32* %16, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* @NFDBITS, align 4
  %58 = call i32 @howmany(i32 %56, i32 %57)
  %59 = sext i32 %58 to i64
  %60 = mul i64 %59, 4
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %17, align 4
  %62 = load i32, i32* %17, align 4
  %63 = load i32, i32* @fdsn, align 4
  %64 = icmp sgt i32 %62, %63
  br i1 %64, label %65, label %115

65:                                               ; preds = %54
  %66 = load i32*, i32** @ibitsp, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32*, i32** @ibitsp, align 8
  %70 = call i32 @free(i32* %69)
  br label %71

71:                                               ; preds = %68, %65
  %72 = load i32*, i32** @obitsp, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %77

74:                                               ; preds = %71
  %75 = load i32*, i32** @obitsp, align 8
  %76 = call i32 @free(i32* %75)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load i32*, i32** @xbitsp, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %83

80:                                               ; preds = %77
  %81 = load i32*, i32** @xbitsp, align 8
  %82 = call i32 @free(i32* %81)
  br label %83

83:                                               ; preds = %80, %77
  %84 = load i32, i32* %17, align 4
  store i32 %84, i32* @fdsn, align 4
  %85 = load i32, i32* @fdsn, align 4
  %86 = call i64 @malloc(i32 %85)
  %87 = inttoptr i64 %86 to i32*
  store i32* %87, i32** @ibitsp, align 8
  %88 = icmp eq i32* %87, null
  br i1 %88, label %89, label %91

89:                                               ; preds = %83
  %90 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %83
  %92 = load i32, i32* @fdsn, align 4
  %93 = call i64 @malloc(i32 %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** @obitsp, align 8
  %95 = icmp eq i32* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %91
  %97 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %98

98:                                               ; preds = %96, %91
  %99 = load i32, i32* @fdsn, align 4
  %100 = call i64 @malloc(i32 %99)
  %101 = inttoptr i64 %100 to i32*
  store i32* %101, i32** @xbitsp, align 8
  %102 = icmp eq i32* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = call i32 @err(i32 1, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i32*, i32** @ibitsp, align 8
  %107 = load i32, i32* @fdsn, align 4
  %108 = call i32 @memset(i32* %106, i32 0, i32 %107)
  %109 = load i32*, i32** @obitsp, align 8
  %110 = load i32, i32* @fdsn, align 4
  %111 = call i32 @memset(i32* %109, i32 0, i32 %110)
  %112 = load i32*, i32** @xbitsp, align 8
  %113 = load i32, i32* @fdsn, align 4
  %114 = call i32 @memset(i32* %112, i32 0, i32 %113)
  br label %115

115:                                              ; preds = %105, %54
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %115
  %119 = load i32, i32* @net, align 4
  %120 = load i32*, i32** @obitsp, align 8
  %121 = call i32 @FD_SET(i32 %119, i32* %120)
  br label %122

122:                                              ; preds = %118, %115
  %123 = load i32, i32* %12, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %122
  %126 = load i32, i32* @tout, align 4
  %127 = load i32*, i32** @obitsp, align 8
  %128 = call i32 @FD_SET(i32 %126, i32* %127)
  br label %129

129:                                              ; preds = %125, %122
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load i32, i32* @tin, align 4
  %134 = load i32*, i32** @ibitsp, align 8
  %135 = call i32 @FD_SET(i32 %133, i32* %134)
  br label %136

136:                                              ; preds = %132, %129
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %136
  %140 = load i32, i32* @net, align 4
  %141 = load i32*, i32** @ibitsp, align 8
  %142 = call i32 @FD_SET(i32 %140, i32* %141)
  br label %143

143:                                              ; preds = %139, %136
  %144 = load i32, i32* %10, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %143
  %147 = load i32, i32* @net, align 4
  %148 = load i32*, i32** @xbitsp, align 8
  %149 = call i32 @FD_SET(i32 %147, i32* %148)
  br label %150

150:                                              ; preds = %146, %143
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  %153 = load i32*, i32** @ibitsp, align 8
  %154 = load i32*, i32** @obitsp, align 8
  %155 = load i32*, i32** @xbitsp, align 8
  %156 = load i32, i32* %13, align 4
  %157 = icmp eq i32 %156, 0
  %158 = zext i1 %157 to i64
  %159 = select i1 %157, %struct.timeval* null, %struct.timeval* @process_rings.TimeValue
  %160 = call i32 @select(i32 %152, i32* %153, i32* %154, i32* %155, %struct.timeval* %159)
  store i32 %160, i32* %14, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %150
  %163 = load i32, i32* %14, align 4
  %164 = icmp eq i32 %163, -1
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i64, i64* @errno, align 8
  %167 = load i64, i64* @EINTR, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  store i32 0, i32* %7, align 4
  br label %421

170:                                              ; preds = %165
  %171 = load i64, i64* @errno, align 8
  %172 = call i8* @strerror(i64 %171)
  %173 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i8* %172)
  %174 = call i32 @sleep(i32 5)
  br label %175

175:                                              ; preds = %170, %162
  store i32 0, i32* %7, align 4
  br label %421

176:                                              ; preds = %150
  %177 = load i32, i32* @net, align 4
  %178 = load i32*, i32** @xbitsp, align 8
  %179 = call i64 @FD_ISSET(i32 %177, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load i32, i32* @net, align 4
  %183 = load i32*, i32** @xbitsp, align 8
  %184 = call i32 @FD_CLR(i32 %182, i32* %183)
  store i32 1, i32* @SYNCHing, align 4
  %185 = call i64 @ttyflush(i32 1)
  br label %186

186:                                              ; preds = %181, %176
  %187 = load i32, i32* @net, align 4
  %188 = load i32*, i32** @ibitsp, align 8
  %189 = call i64 @FD_ISSET(i32 %187, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %334

191:                                              ; preds = %186
  %192 = load i32, i32* @net, align 4
  %193 = load i32*, i32** @ibitsp, align 8
  %194 = call i32 @FD_CLR(i32 %192, i32* %193)
  %195 = call i32 @ring_empty_consecutive(%struct.TYPE_6__* @netiring)
  store i32 %195, i32* %18, align 4
  %196 = load i32, i32* @SYNCHing, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %300

198:                                              ; preds = %191
  %199 = load i32, i32* @net, align 4
  %200 = load i32, i32* @SIOCATMARK, align 4
  %201 = bitcast i32* %19 to i8*
  %202 = call i32 @ioctl(i32 %199, i32 %200, i8* %201)
  %203 = load i32, i32* %19, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %294

205:                                              ; preds = %198
  %206 = load i32, i32* @net, align 4
  %207 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %208 = load i32, i32* %18, align 4
  %209 = load i32, i32* @MSG_OOB, align 4
  %210 = call i32 @recv(i32 %206, i8* %207, i32 %208, i32 %209)
  store i32 %210, i32* %14, align 4
  %211 = load i32, i32* %14, align 4
  %212 = icmp eq i32 %211, -1
  br i1 %212, label %213, label %229

213:                                              ; preds = %205
  %214 = load i64, i64* @errno, align 8
  %215 = load i64, i64* @EINVAL, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %229

217:                                              ; preds = %213
  %218 = load i32, i32* @net, align 4
  %219 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %220 = load i32, i32* %18, align 4
  %221 = call i32 @recv(i32 %218, i8* %219, i32 %220, i32 0)
  store i32 %221, i32* %14, align 4
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clocks, i32 0, i32 0), align 8
  %223 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clocks, i32 0, i32 1), align 8
  %224 = icmp slt i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load i32, i32* @net, align 4
  %227 = call i32 @stilloob(i32 %226)
  store i32 %227, i32* @SYNCHing, align 4
  br label %228

228:                                              ; preds = %225, %217
  br label %270

229:                                              ; preds = %213, %205
  %230 = load i32, i32* @process_rings.first, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %269

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %269

235:                                              ; preds = %232
  %236 = load i32, i32* @net, align 4
  %237 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %238 = load i32, i32* %14, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i8, i8* %237, i64 %239
  %241 = load i32, i32* %18, align 4
  %242 = load i32, i32* %14, align 4
  %243 = sub nsw i32 %241, %242
  %244 = load i32, i32* @MSG_OOB, align 4
  %245 = call i32 @recv(i32 %236, i8* %240, i32 %243, i32 %244)
  store i32 %245, i32* %20, align 4
  %246 = load i32, i32* %20, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp eq i32 %246, %247
  br i1 %248, label %249, label %259

249:                                              ; preds = %235
  %250 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %251 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %252 = load i32, i32* %14, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds i8, i8* %251, i64 %253
  %255 = load i32, i32* %20, align 4
  %256 = call i64 @memcmp(i8* %250, i8* %254, i32 %255)
  %257 = icmp eq i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %249
  store i32 1, i32* @process_rings.bogus_oob, align 4
  store i32 0, i32* @process_rings.first, align 4
  br label %268

259:                                              ; preds = %249, %235
  %260 = load i32, i32* %20, align 4
  %261 = icmp slt i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  store i32 0, i32* @process_rings.bogus_oob, align 4
  store i32 0, i32* @process_rings.first, align 4
  br label %267

263:                                              ; preds = %259
  %264 = load i32, i32* %20, align 4
  %265 = load i32, i32* %14, align 4
  %266 = add nsw i32 %265, %264
  store i32 %266, i32* %14, align 4
  br label %267

267:                                              ; preds = %263, %262
  br label %268

268:                                              ; preds = %267, %258
  br label %269

269:                                              ; preds = %268, %232, %229
  br label %270

270:                                              ; preds = %269, %228
  %271 = load i32, i32* @process_rings.bogus_oob, align 4
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %273, label %293

273:                                              ; preds = %270
  %274 = load i32, i32* %14, align 4
  %275 = icmp sgt i32 %274, 0
  br i1 %275, label %276, label %293

276:                                              ; preds = %273
  %277 = load i32, i32* @net, align 4
  %278 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %279 = load i32, i32* %14, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8, i8* %278, i64 %280
  %282 = load i32, i32* %18, align 4
  %283 = load i32, i32* %14, align 4
  %284 = sub nsw i32 %282, %283
  %285 = call i32 @read(i32 %277, i8* %281, i32 %284)
  store i32 %285, i32* %21, align 4
  %286 = load i32, i32* %21, align 4
  %287 = icmp sgt i32 %286, 0
  br i1 %287, label %288, label %292

288:                                              ; preds = %276
  %289 = load i32, i32* %21, align 4
  %290 = load i32, i32* %14, align 4
  %291 = add nsw i32 %290, %289
  store i32 %291, i32* %14, align 4
  br label %292

292:                                              ; preds = %288, %276
  br label %293

293:                                              ; preds = %292, %273, %270
  br label %299

294:                                              ; preds = %198
  %295 = load i32, i32* @net, align 4
  %296 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %297 = load i32, i32* %18, align 4
  %298 = call i32 @recv(i32 %295, i8* %296, i32 %297, i32 0)
  store i32 %298, i32* %14, align 4
  br label %299

299:                                              ; preds = %294, %293
  br label %305

300:                                              ; preds = %191
  %301 = load i32, i32* @net, align 4
  %302 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %303 = load i32, i32* %18, align 4
  %304 = call i32 @recv(i32 %301, i8* %302, i32 %303, i32 0)
  store i32 %304, i32* %14, align 4
  br label %305

305:                                              ; preds = %300, %299
  %306 = load i32, i32* @didnetreceive, align 4
  %307 = call i32 @settimer(i32 %306)
  %308 = load i32, i32* %14, align 4
  %309 = icmp slt i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i64, i64* @errno, align 8
  %312 = load i64, i64* @EWOULDBLOCK, align 8
  %313 = icmp eq i64 %311, %312
  br i1 %313, label %314, label %315

314:                                              ; preds = %310
  store i32 0, i32* %14, align 4
  br label %320

315:                                              ; preds = %310, %305
  %316 = load i32, i32* %14, align 4
  %317 = icmp sle i32 %316, 0
  br i1 %317, label %318, label %319

318:                                              ; preds = %315
  store i32 -1, i32* %7, align 4
  br label %421

319:                                              ; preds = %315
  br label %320

320:                                              ; preds = %319, %314
  %321 = load i64, i64* @netdata, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %327

323:                                              ; preds = %320
  %324 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %325 = load i32, i32* %14, align 4
  %326 = call i32 @Dump(i8 signext 60, i8* %324, i32 %325)
  br label %327

327:                                              ; preds = %323, %320
  %328 = load i32, i32* %14, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i32, i32* %14, align 4
  %332 = call i32 @ring_supplied(%struct.TYPE_6__* @netiring, i32 %331)
  br label %333

333:                                              ; preds = %330, %327
  store i32 1, i32* %15, align 4
  br label %334

334:                                              ; preds = %333, %186
  %335 = load i32, i32* @tin, align 4
  %336 = load i32*, i32** @ibitsp, align 8
  %337 = call i64 @FD_ISSET(i32 %335, i32* %336)
  %338 = icmp ne i64 %337, 0
  br i1 %338, label %339, label %390

339:                                              ; preds = %334
  %340 = load i32, i32* @tin, align 4
  %341 = load i32*, i32** @ibitsp, align 8
  %342 = call i32 @FD_CLR(i32 %340, i32* %341)
  %343 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  %344 = call i32 @ring_empty_consecutive(%struct.TYPE_6__* @ttyiring)
  %345 = call i32 @TerminalRead(i8* %343, i32 %344)
  store i32 %345, i32* %14, align 4
  %346 = load i32, i32* %14, align 4
  %347 = icmp slt i32 %346, 0
  br i1 %347, label %348, label %353

348:                                              ; preds = %339
  %349 = load i64, i64* @errno, align 8
  %350 = load i64, i64* @EIO, align 8
  %351 = icmp eq i64 %349, %350
  br i1 %351, label %352, label %353

352:                                              ; preds = %348
  store i32 0, i32* %14, align 4
  br label %353

353:                                              ; preds = %352, %348, %339
  %354 = load i32, i32* %14, align 4
  %355 = icmp slt i32 %354, 0
  br i1 %355, label %356, label %361

356:                                              ; preds = %353
  %357 = load i64, i64* @errno, align 8
  %358 = load i64, i64* @EWOULDBLOCK, align 8
  %359 = icmp eq i64 %357, %358
  br i1 %359, label %360, label %361

360:                                              ; preds = %356
  store i32 0, i32* %14, align 4
  br label %389

361:                                              ; preds = %356, %353
  %362 = load i32, i32* %14, align 4
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %364, label %375

364:                                              ; preds = %361
  %365 = load i32, i32* @globalmode, align 4
  %366 = call i64 @MODE_LOCAL_CHARS(i32 %365)
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %375

368:                                              ; preds = %364
  %369 = load i32, i32* @tin, align 4
  %370 = call i64 @isatty(i32 %369)
  %371 = icmp ne i64 %370, 0
  br i1 %371, label %372, label %375

372:                                              ; preds = %368
  %373 = load i8, i8* @termEofChar, align 1
  %374 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  store i8 %373, i8* %374, align 1
  store i32 1, i32* %14, align 4
  br label %375

375:                                              ; preds = %372, %368, %364, %361
  %376 = load i32, i32* %14, align 4
  %377 = icmp sle i32 %376, 0
  br i1 %377, label %378, label %379

378:                                              ; preds = %375
  store i32 -1, i32* %7, align 4
  br label %421

379:                                              ; preds = %375
  %380 = load i64, i64* @termdata, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %386

382:                                              ; preds = %379
  %383 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  %384 = load i32, i32* %14, align 4
  %385 = call i32 @Dump(i8 signext 60, i8* %383, i32 %384)
  br label %386

386:                                              ; preds = %382, %379
  %387 = load i32, i32* %14, align 4
  %388 = call i32 @ring_supplied(%struct.TYPE_6__* @ttyiring, i32 %387)
  br label %389

389:                                              ; preds = %386, %360
  store i32 1, i32* %15, align 4
  br label %390

390:                                              ; preds = %389, %334
  %391 = load i32, i32* @net, align 4
  %392 = load i32*, i32** @obitsp, align 8
  %393 = call i64 @FD_ISSET(i32 %391, i32* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %395, label %402

395:                                              ; preds = %390
  %396 = load i32, i32* @net, align 4
  %397 = load i32*, i32** @obitsp, align 8
  %398 = call i32 @FD_CLR(i32 %396, i32* %397)
  %399 = call i32 (...) @netflush()
  %400 = load i32, i32* %15, align 4
  %401 = or i32 %400, %399
  store i32 %401, i32* %15, align 4
  br label %402

402:                                              ; preds = %395, %390
  %403 = load i32, i32* @tout, align 4
  %404 = load i32*, i32** @obitsp, align 8
  %405 = call i64 @FD_ISSET(i32 %403, i32* %404)
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %419

407:                                              ; preds = %402
  %408 = load i32, i32* @tout, align 4
  %409 = load i32*, i32** @obitsp, align 8
  %410 = call i32 @FD_CLR(i32 %408, i32* %409)
  %411 = load i32, i32* @SYNCHing, align 4
  %412 = load i32, i32* @flushout, align 4
  %413 = or i32 %411, %412
  %414 = call i64 @ttyflush(i32 %413)
  %415 = icmp sgt i64 %414, 0
  %416 = zext i1 %415 to i32
  %417 = load i32, i32* %15, align 4
  %418 = or i32 %417, %416
  store i32 %418, i32* %15, align 4
  br label %419

419:                                              ; preds = %407, %402
  %420 = load i32, i32* %15, align 4
  store i32 %420, i32* %7, align 4
  br label %421

421:                                              ; preds = %419, %378, %318, %175, %169
  %422 = load i32, i32* %7, align 4
  ret i32 %422
}

declare dso_local i32 @howmany(i32, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @FD_SET(i32, i32*) #1

declare dso_local i32 @select(i32, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i8* @strerror(i64) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @FD_CLR(i32, i32*) #1

declare dso_local i64 @ttyflush(i32) #1

declare dso_local i32 @ring_empty_consecutive(%struct.TYPE_6__*) #1

declare dso_local i32 @ioctl(i32, i32, i8*) #1

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @stilloob(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @settimer(i32) #1

declare dso_local i32 @Dump(i8 signext, i8*, i32) #1

declare dso_local i32 @ring_supplied(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TerminalRead(i8*, i32) #1

declare dso_local i64 @MODE_LOCAL_CHARS(i32) #1

declare dso_local i64 @isatty(i32) #1

declare dso_local i32 @netflush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
