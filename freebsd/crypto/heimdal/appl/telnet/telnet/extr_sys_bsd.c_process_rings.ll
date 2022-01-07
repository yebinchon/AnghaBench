; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_process_rings.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/appl/telnet/telnet/extr_sys_bsd.c_process_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_7__ = type { i64, i64 }

@process_rings.TimeValue = internal global %struct.timeval zeroinitializer, align 4
@net = common dso_local global i64 0, align 8
@FD_SETSIZE = common dso_local global i64 0, align 8
@tout = common dso_local global i64 0, align 8
@tin = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [13 x i8] c"fd too large\00", align 1
@obits = common dso_local global i32 0, align 4
@ibits = common dso_local global i32 0, align 4
@xbits = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"sleep(5) from telnet, after select\0D\0A\00", align 1
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
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %20 = load i64, i64* @net, align 8
  %21 = load i64, i64* @FD_SETSIZE, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %31, label %23

23:                                               ; preds = %6
  %24 = load i64, i64* @tout, align 8
  %25 = load i64, i64* @FD_SETSIZE, align 8
  %26 = icmp sge i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* @tin, align 8
  %29 = load i64, i64* @FD_SETSIZE, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %27, %23, %6
  %32 = call i32 @errx(i32 1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %27
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i64, i64* @net, align 8
  %38 = call i32 @FD_SET(i64 %37, i32* @obits)
  br label %39

39:                                               ; preds = %36, %33
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %39
  %43 = load i64, i64* @tout, align 8
  %44 = call i32 @FD_SET(i64 %43, i32* @obits)
  br label %45

45:                                               ; preds = %42, %39
  %46 = load i32, i32* %11, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load i64, i64* @tin, align 8
  %50 = call i32 @FD_SET(i64 %49, i32* @ibits)
  br label %51

51:                                               ; preds = %48, %45
  %52 = load i32, i32* %8, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @net, align 8
  %56 = call i32 @FD_SET(i64 %55, i32* @ibits)
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* @net, align 8
  %62 = call i32 @FD_SET(i64 %61, i32* @xbits)
  br label %63

63:                                               ; preds = %60, %57
  %64 = load i64, i64* @FD_SETSIZE, align 8
  %65 = load i32, i32* %13, align 4
  %66 = icmp eq i32 %65, 0
  %67 = zext i1 %66 to i64
  %68 = select i1 %66, %struct.timeval* null, %struct.timeval* @process_rings.TimeValue
  %69 = call i32 @select(i64 %64, i32* @ibits, i32* @obits, i32* @xbits, %struct.timeval* %68)
  store i32 %69, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %83

71:                                               ; preds = %63
  %72 = load i32, i32* %14, align 4
  %73 = icmp eq i32 %72, -1
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i64, i64* @errno, align 8
  %76 = load i64, i64* @EINTR, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %74
  store i32 0, i32* %7, align 4
  br label %317

79:                                               ; preds = %74
  %80 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %81 = call i32 @sleep(i32 5)
  br label %82

82:                                               ; preds = %79, %71
  store i32 0, i32* %7, align 4
  br label %317

83:                                               ; preds = %63
  %84 = load i64, i64* @net, align 8
  %85 = call i64 @FD_ISSET(i64 %84, i32* @xbits)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %83
  %88 = load i64, i64* @net, align 8
  %89 = call i32 @FD_CLR(i64 %88, i32* @xbits)
  store i32 1, i32* @SYNCHing, align 4
  %90 = call i64 @ttyflush(i32 1)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load i64, i64* @net, align 8
  %93 = call i64 @FD_ISSET(i64 %92, i32* @ibits)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %236

95:                                               ; preds = %91
  %96 = load i64, i64* @net, align 8
  %97 = call i32 @FD_CLR(i64 %96, i32* @ibits)
  %98 = call i32 @ring_empty_consecutive(%struct.TYPE_6__* @netiring)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* @SYNCHing, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %202

101:                                              ; preds = %95
  %102 = load i64, i64* @net, align 8
  %103 = load i32, i32* @SIOCATMARK, align 4
  %104 = bitcast i32* %17 to i8*
  %105 = call i32 @ioctl(i64 %102, i32 %103, i8* %104)
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %196

108:                                              ; preds = %101
  %109 = load i64, i64* @net, align 8
  %110 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %111 = load i32, i32* %16, align 4
  %112 = load i32, i32* @MSG_OOB, align 4
  %113 = call i32 @recv(i64 %109, i8* %110, i32 %111, i32 %112)
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %14, align 4
  %115 = icmp eq i32 %114, -1
  br i1 %115, label %116, label %131

116:                                              ; preds = %108
  %117 = load i64, i64* @errno, align 8
  %118 = load i64, i64* @EINVAL, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %131

120:                                              ; preds = %116
  %121 = load i64, i64* @net, align 8
  %122 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @recv(i64 %121, i8* %122, i32 %123, i32 0)
  store i32 %124, i32* %14, align 4
  %125 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clocks, i32 0, i32 0), align 8
  %126 = load i64, i64* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @clocks, i32 0, i32 1), align 8
  %127 = icmp slt i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = call i32 (...) @stilloob()
  store i32 %129, i32* @SYNCHing, align 4
  br label %130

130:                                              ; preds = %128, %120
  br label %172

131:                                              ; preds = %116, %108
  %132 = load i32, i32* @process_rings.first, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %171

134:                                              ; preds = %131
  %135 = load i32, i32* %14, align 4
  %136 = icmp sgt i32 %135, 0
  br i1 %136, label %137, label %171

137:                                              ; preds = %134
  %138 = load i64, i64* @net, align 8
  %139 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %140 = load i32, i32* %14, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i8, i8* %139, i64 %141
  %143 = load i32, i32* %16, align 4
  %144 = load i32, i32* %14, align 4
  %145 = sub nsw i32 %143, %144
  %146 = load i32, i32* @MSG_OOB, align 4
  %147 = call i32 @recv(i64 %138, i8* %142, i32 %145, i32 %146)
  store i32 %147, i32* %18, align 4
  %148 = load i32, i32* %18, align 4
  %149 = load i32, i32* %14, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %161

151:                                              ; preds = %137
  %152 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %153 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  %157 = load i32, i32* %18, align 4
  %158 = call i64 @memcmp(i8* %152, i8* %156, i32 %157)
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %151
  store i32 1, i32* @process_rings.bogus_oob, align 4
  store i32 0, i32* @process_rings.first, align 4
  br label %170

161:                                              ; preds = %151, %137
  %162 = load i32, i32* %18, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %161
  store i32 0, i32* @process_rings.bogus_oob, align 4
  store i32 0, i32* @process_rings.first, align 4
  br label %169

165:                                              ; preds = %161
  %166 = load i32, i32* %18, align 4
  %167 = load i32, i32* %14, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %165, %164
  br label %170

170:                                              ; preds = %169, %160
  br label %171

171:                                              ; preds = %170, %134, %131
  br label %172

172:                                              ; preds = %171, %130
  %173 = load i32, i32* @process_rings.bogus_oob, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %195

175:                                              ; preds = %172
  %176 = load i32, i32* %14, align 4
  %177 = icmp sgt i32 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load i64, i64* @net, align 8
  %180 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %181 = load i32, i32* %14, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %180, i64 %182
  %184 = load i32, i32* %16, align 4
  %185 = load i32, i32* %14, align 4
  %186 = sub nsw i32 %184, %185
  %187 = call i32 @read(i64 %179, i8* %183, i32 %186)
  store i32 %187, i32* %19, align 4
  %188 = load i32, i32* %19, align 4
  %189 = icmp sgt i32 %188, 0
  br i1 %189, label %190, label %194

190:                                              ; preds = %178
  %191 = load i32, i32* %19, align 4
  %192 = load i32, i32* %14, align 4
  %193 = add nsw i32 %192, %191
  store i32 %193, i32* %14, align 4
  br label %194

194:                                              ; preds = %190, %178
  br label %195

195:                                              ; preds = %194, %175, %172
  br label %201

196:                                              ; preds = %101
  %197 = load i64, i64* @net, align 8
  %198 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @recv(i64 %197, i8* %198, i32 %199, i32 0)
  store i32 %200, i32* %14, align 4
  br label %201

201:                                              ; preds = %196, %195
  br label %207

202:                                              ; preds = %95
  %203 = load i64, i64* @net, align 8
  %204 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %205 = load i32, i32* %16, align 4
  %206 = call i32 @recv(i64 %203, i8* %204, i32 %205, i32 0)
  store i32 %206, i32* %14, align 4
  br label %207

207:                                              ; preds = %202, %201
  %208 = load i32, i32* @didnetreceive, align 4
  %209 = call i32 @settimer(i32 %208)
  %210 = load i32, i32* %14, align 4
  %211 = icmp slt i32 %210, 0
  br i1 %211, label %212, label %217

212:                                              ; preds = %207
  %213 = load i64, i64* @errno, align 8
  %214 = load i64, i64* @EWOULDBLOCK, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %217

216:                                              ; preds = %212
  store i32 0, i32* %14, align 4
  br label %222

217:                                              ; preds = %212, %207
  %218 = load i32, i32* %14, align 4
  %219 = icmp sle i32 %218, 0
  br i1 %219, label %220, label %221

220:                                              ; preds = %217
  store i32 -1, i32* %7, align 4
  br label %317

221:                                              ; preds = %217
  br label %222

222:                                              ; preds = %221, %216
  %223 = load i64, i64* @netdata, align 8
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %222
  %226 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @netiring, i32 0, i32 0), align 8
  %227 = load i32, i32* %14, align 4
  %228 = call i32 @Dump(i8 signext 60, i8* %226, i32 %227)
  br label %229

229:                                              ; preds = %225, %222
  %230 = load i32, i32* %14, align 4
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %229
  %233 = load i32, i32* %14, align 4
  %234 = call i32 @ring_supplied(%struct.TYPE_6__* @netiring, i32 %233)
  br label %235

235:                                              ; preds = %232, %229
  store i32 1, i32* %15, align 4
  br label %236

236:                                              ; preds = %235, %91
  %237 = load i64, i64* @tin, align 8
  %238 = call i64 @FD_ISSET(i64 %237, i32* @ibits)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %290

240:                                              ; preds = %236
  %241 = load i64, i64* @tin, align 8
  %242 = call i32 @FD_CLR(i64 %241, i32* @ibits)
  %243 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  %244 = call i32 @ring_empty_consecutive(%struct.TYPE_6__* @ttyiring)
  %245 = call i32 @TerminalRead(i8* %243, i32 %244)
  store i32 %245, i32* %14, align 4
  %246 = load i32, i32* %14, align 4
  %247 = icmp slt i32 %246, 0
  br i1 %247, label %248, label %253

248:                                              ; preds = %240
  %249 = load i64, i64* @errno, align 8
  %250 = load i64, i64* @EIO, align 8
  %251 = icmp eq i64 %249, %250
  br i1 %251, label %252, label %253

252:                                              ; preds = %248
  store i32 0, i32* %14, align 4
  br label %253

253:                                              ; preds = %252, %248, %240
  %254 = load i32, i32* %14, align 4
  %255 = icmp slt i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %253
  %257 = load i64, i64* @errno, align 8
  %258 = load i64, i64* @EWOULDBLOCK, align 8
  %259 = icmp eq i64 %257, %258
  br i1 %259, label %260, label %261

260:                                              ; preds = %256
  store i32 0, i32* %14, align 4
  br label %289

261:                                              ; preds = %256, %253
  %262 = load i32, i32* %14, align 4
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32, i32* @globalmode, align 4
  %266 = call i64 @MODE_LOCAL_CHARS(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %264
  %269 = load i64, i64* @tin, align 8
  %270 = call i64 @isatty(i64 %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %268
  %273 = load i8, i8* @termEofChar, align 1
  %274 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  store i8 %273, i8* %274, align 1
  store i32 1, i32* %14, align 4
  br label %275

275:                                              ; preds = %272, %268, %264, %261
  %276 = load i32, i32* %14, align 4
  %277 = icmp sle i32 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %275
  store i32 -1, i32* %7, align 4
  br label %317

279:                                              ; preds = %275
  %280 = load i64, i64* @termdata, align 8
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i8*, i8** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @ttyiring, i32 0, i32 0), align 8
  %284 = load i32, i32* %14, align 4
  %285 = call i32 @Dump(i8 signext 60, i8* %283, i32 %284)
  br label %286

286:                                              ; preds = %282, %279
  %287 = load i32, i32* %14, align 4
  %288 = call i32 @ring_supplied(%struct.TYPE_6__* @ttyiring, i32 %287)
  br label %289

289:                                              ; preds = %286, %260
  store i32 1, i32* %15, align 4
  br label %290

290:                                              ; preds = %289, %236
  %291 = load i64, i64* @net, align 8
  %292 = call i64 @FD_ISSET(i64 %291, i32* @obits)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %300

294:                                              ; preds = %290
  %295 = load i64, i64* @net, align 8
  %296 = call i32 @FD_CLR(i64 %295, i32* @obits)
  %297 = call i32 (...) @netflush()
  %298 = load i32, i32* %15, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %15, align 4
  br label %300

300:                                              ; preds = %294, %290
  %301 = load i64, i64* @tout, align 8
  %302 = call i64 @FD_ISSET(i64 %301, i32* @obits)
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %304, label %315

304:                                              ; preds = %300
  %305 = load i64, i64* @tout, align 8
  %306 = call i32 @FD_CLR(i64 %305, i32* @obits)
  %307 = load i32, i32* @SYNCHing, align 4
  %308 = load i32, i32* @flushout, align 4
  %309 = or i32 %307, %308
  %310 = call i64 @ttyflush(i32 %309)
  %311 = icmp sgt i64 %310, 0
  %312 = zext i1 %311 to i32
  %313 = load i32, i32* %15, align 4
  %314 = or i32 %313, %312
  store i32 %314, i32* %15, align 4
  br label %315

315:                                              ; preds = %304, %300
  %316 = load i32, i32* %15, align 4
  store i32 %316, i32* %7, align 4
  br label %317

317:                                              ; preds = %315, %278, %220, %82, %78
  %318 = load i32, i32* %7, align 4
  ret i32 %318
}

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @FD_SET(i64, i32*) #1

declare dso_local i32 @select(i64, i32*, i32*, i32*, %struct.timeval*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @sleep(i32) #1

declare dso_local i64 @FD_ISSET(i64, i32*) #1

declare dso_local i32 @FD_CLR(i64, i32*) #1

declare dso_local i64 @ttyflush(i32) #1

declare dso_local i32 @ring_empty_consecutive(%struct.TYPE_6__*) #1

declare dso_local i32 @ioctl(i64, i32, i8*) #1

declare dso_local i32 @recv(i64, i8*, i32, i32) #1

declare dso_local i32 @stilloob(...) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @read(i64, i8*, i32) #1

declare dso_local i32 @settimer(i32) #1

declare dso_local i32 @Dump(i8 signext, i8*, i32) #1

declare dso_local i32 @ring_supplied(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @TerminalRead(i8*, i32) #1

declare dso_local i64 @MODE_LOCAL_CHARS(i32) #1

declare dso_local i64 @isatty(i64) #1

declare dso_local i32 @netflush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
