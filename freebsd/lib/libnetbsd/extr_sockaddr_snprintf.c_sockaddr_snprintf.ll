; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libnetbsd/extr_sockaddr_snprintf.c_sockaddr_snprintf.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libnetbsd/extr_sockaddr_snprintf.c_sockaddr_snprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr = type { i32 }
%struct.sockaddr_in = type { i32, i32 }
%struct.sockaddr_in6 = type { i64, i64, i32, i32 }
%struct.sockaddr_un = type { i32 }

@EAFNOSUPPORT = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@NI_NUMERICHOST = common dso_local global i32 0, align 4
@NI_NUMERICSERV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"N/A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%zu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sockaddr_snprintf(i8* %0, i64 %1, i8* %2, %struct.sockaddr* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sockaddr*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca [1024 x i8], align 16
  %12 = alloca [1024 x i8], align 16
  %13 = alloca i8*, align 8
  %14 = alloca [1024 x i8], align 16
  %15 = alloca [32 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.sockaddr_in*, align 8
  %25 = alloca %struct.sockaddr_in6*, align 8
  %26 = alloca %struct.sockaddr_un*, align 8
  %27 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.sockaddr* %3, %struct.sockaddr** %9, align 8
  store i8* null, i8** %10, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %17, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8* %31, i8** %18, align 8
  %32 = load i8*, i8** %6, align 8
  store i8* %32, i8** %19, align 8
  store i32 -1, i32* %23, align 4
  store %struct.sockaddr_in* null, %struct.sockaddr_in** %24, align 8
  store %struct.sockaddr_in6* null, %struct.sockaddr_in6** %25, align 8
  store %struct.sockaddr_un* null, %struct.sockaddr_un** %26, align 8
  store i32 1, i32* %27, align 4
  %33 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %34 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %68 [
    i32 128, label %36
    i32 129, label %37
    i32 132, label %46
    i32 131, label %57
  ]

36:                                               ; preds = %4
  br label %778

37:                                               ; preds = %4
  store i64 4, i64* %22, align 8
  %38 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %39 = bitcast %struct.sockaddr* %38 to i8*
  %40 = bitcast i8* %39 to %struct.sockaddr_un*
  store %struct.sockaddr_un* %40, %struct.sockaddr_un** %26, align 8
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %41, i8** %13, align 8
  %42 = load %struct.sockaddr_un*, %struct.sockaddr_un** %26, align 8
  %43 = getelementptr inbounds %struct.sockaddr_un, %struct.sockaddr_un* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @strlcpy(i8* %41, i32 %44, i32 1024)
  br label %70

46:                                               ; preds = %4
  store i64 8, i64* %22, align 8
  %47 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %48 = bitcast %struct.sockaddr* %47 to i8*
  %49 = bitcast i8* %48 to %struct.sockaddr_in*
  store %struct.sockaddr_in* %49, %struct.sockaddr_in** %24, align 8
  %50 = load %struct.sockaddr_in*, %struct.sockaddr_in** %24, align 8
  %51 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %23, align 4
  %54 = load %struct.sockaddr_in*, %struct.sockaddr_in** %24, align 8
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 0
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %10, align 8
  br label %70

57:                                               ; preds = %4
  store i64 24, i64* %22, align 8
  %58 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %59 = bitcast %struct.sockaddr* %58 to i8*
  %60 = bitcast i8* %59 to %struct.sockaddr_in6*
  store %struct.sockaddr_in6* %60, %struct.sockaddr_in6** %25, align 8
  %61 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @ntohs(i32 %63)
  store i32 %64, i32* %23, align 4
  %65 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %66 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %65, i32 0, i32 2
  %67 = bitcast i32* %66 to i8*
  store i8* %67, i8** %10, align 8
  br label %70

68:                                               ; preds = %4
  %69 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %69, i32* @errno, align 4
  store i32 -1, i32* %5, align 4
  br label %800

70:                                               ; preds = %57, %46, %37
  %71 = load i8*, i8** %13, align 8
  %72 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %73 = icmp eq i8* %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i8*, i8** %13, align 8
  store i8* %75, i8** %16, align 8
  br label %76

76:                                               ; preds = %74, %70
  %77 = load i8*, i8** %10, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %81 = load i64, i64* %22, align 8
  %82 = trunc i64 %81 to i32
  %83 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  store i8* %83, i8** %13, align 8
  %84 = load i32, i32* @NI_NUMERICHOST, align 4
  %85 = load i32, i32* @NI_NUMERICSERV, align 4
  %86 = or i32 %84, %85
  %87 = call i64 @getnameinfo(%struct.sockaddr* %80, i32 %82, i8* %83, i32 1024, i8* null, i32 0, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %79
  store i32 -1, i32* %5, align 4
  br label %800

90:                                               ; preds = %79, %76
  %91 = load i8*, i8** %8, align 8
  store i8* %91, i8** %20, align 8
  br label %92

92:                                               ; preds = %774, %90
  %93 = load i8*, i8** %20, align 8
  %94 = load i8, i8* %93, align 1
  %95 = icmp ne i8 %94, 0
  br i1 %95, label %96, label %777

96:                                               ; preds = %92
  %97 = load i8*, i8** %20, align 8
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp ne i32 %99, 37
  br i1 %100, label %101, label %116

101:                                              ; preds = %96
  br label %102

102:                                              ; preds = %101
  %103 = load i8*, i8** %19, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = icmp ult i8* %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i8*, i8** %20, align 8
  %108 = load i8, i8* %107, align 1
  %109 = load i8*, i8** %19, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %19, align 8
  store i8 %108, i8* %109, align 1
  br label %114

111:                                              ; preds = %102
  %112 = load i8*, i8** %19, align 8
  %113 = getelementptr inbounds i8, i8* %112, i32 1
  store i8* %113, i8** %19, align 8
  br label %114

114:                                              ; preds = %111, %106
  br label %115

115:                                              ; preds = %114
  br label %774

116:                                              ; preds = %96
  br label %117

117:                                              ; preds = %122, %116
  %118 = load i8*, i8** %20, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %20, align 8
  %120 = load i8, i8* %119, align 1
  %121 = sext i8 %120 to i32
  switch i32 %121, label %723 [
    i32 63, label %122
    i32 97, label %123
    i32 112, label %150
    i32 102, label %217
    i32 108, label %250
    i32 65, label %280
    i32 80, label %379
    i32 73, label %478
    i32 70, label %510
    i32 83, label %578
    i32 82, label %646
    i32 68, label %678
    i32 37, label %758
  ]

122:                                              ; preds = %117
  store i32 0, i32* %27, align 4
  br label %117

123:                                              ; preds = %117
  br label %124

124:                                              ; preds = %123
  %125 = load i8*, i8** %13, align 8
  store i8* %125, i8** %21, align 8
  br label %126

126:                                              ; preds = %145, %124
  %127 = load i8*, i8** %21, align 8
  %128 = load i8, i8* %127, align 1
  %129 = icmp ne i8 %128, 0
  br i1 %129, label %130, label %148

130:                                              ; preds = %126
  br label %131

131:                                              ; preds = %130
  %132 = load i8*, i8** %19, align 8
  %133 = load i8*, i8** %18, align 8
  %134 = icmp ult i8* %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i8*, i8** %21, align 8
  %137 = load i8, i8* %136, align 1
  %138 = load i8*, i8** %19, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %19, align 8
  store i8 %137, i8* %138, align 1
  br label %143

140:                                              ; preds = %131
  %141 = load i8*, i8** %19, align 8
  %142 = getelementptr inbounds i8, i8* %141, i32 1
  store i8* %142, i8** %19, align 8
  br label %143

143:                                              ; preds = %140, %135
  br label %144

144:                                              ; preds = %143
  br label %145

145:                                              ; preds = %144
  %146 = load i8*, i8** %21, align 8
  %147 = getelementptr inbounds i8, i8* %146, i32 1
  store i8* %147, i8** %21, align 8
  br label %126

148:                                              ; preds = %126
  br label %149

149:                                              ; preds = %148
  br label %773

150:                                              ; preds = %117
  %151 = load i32, i32* %23, align 4
  %152 = icmp ne i32 %151, -1
  br i1 %152, label %153, label %184

153:                                              ; preds = %150
  %154 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %155 = load i32, i32* %23, align 4
  %156 = sext i32 %155 to i64
  %157 = call i32 @snprintf(i8* %154, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %156)
  br label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %159, i8** %21, align 8
  br label %160

160:                                              ; preds = %179, %158
  %161 = load i8*, i8** %21, align 8
  %162 = load i8, i8* %161, align 1
  %163 = icmp ne i8 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %160
  br label %165

165:                                              ; preds = %164
  %166 = load i8*, i8** %19, align 8
  %167 = load i8*, i8** %18, align 8
  %168 = icmp ult i8* %166, %167
  br i1 %168, label %169, label %174

169:                                              ; preds = %165
  %170 = load i8*, i8** %21, align 8
  %171 = load i8, i8* %170, align 1
  %172 = load i8*, i8** %19, align 8
  %173 = getelementptr inbounds i8, i8* %172, i32 1
  store i8* %173, i8** %19, align 8
  store i8 %171, i8* %172, align 1
  br label %177

174:                                              ; preds = %165
  %175 = load i8*, i8** %19, align 8
  %176 = getelementptr inbounds i8, i8* %175, i32 1
  store i8* %176, i8** %19, align 8
  br label %177

177:                                              ; preds = %174, %169
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  %180 = load i8*, i8** %21, align 8
  %181 = getelementptr inbounds i8, i8* %180, i32 1
  store i8* %181, i8** %21, align 8
  br label %160

182:                                              ; preds = %160
  br label %183

183:                                              ; preds = %182
  br label %216

184:                                              ; preds = %150
  br label %185

185:                                              ; preds = %184
  %186 = load i32, i32* %27, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %214

188:                                              ; preds = %185
  br label %189

189:                                              ; preds = %188
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %190

190:                                              ; preds = %209, %189
  %191 = load i8*, i8** %21, align 8
  %192 = load i8, i8* %191, align 1
  %193 = icmp ne i8 %192, 0
  br i1 %193, label %194, label %212

194:                                              ; preds = %190
  br label %195

195:                                              ; preds = %194
  %196 = load i8*, i8** %19, align 8
  %197 = load i8*, i8** %18, align 8
  %198 = icmp ult i8* %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %195
  %200 = load i8*, i8** %21, align 8
  %201 = load i8, i8* %200, align 1
  %202 = load i8*, i8** %19, align 8
  %203 = getelementptr inbounds i8, i8* %202, i32 1
  store i8* %203, i8** %19, align 8
  store i8 %201, i8* %202, align 1
  br label %207

204:                                              ; preds = %195
  %205 = load i8*, i8** %19, align 8
  %206 = getelementptr inbounds i8, i8* %205, i32 1
  store i8* %206, i8** %19, align 8
  br label %207

207:                                              ; preds = %204, %199
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  %210 = load i8*, i8** %21, align 8
  %211 = getelementptr inbounds i8, i8* %210, i32 1
  store i8* %211, i8** %21, align 8
  br label %190

212:                                              ; preds = %190
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %185
  br label %215

215:                                              ; preds = %214
  br label %216

216:                                              ; preds = %215, %183
  br label %773

217:                                              ; preds = %117
  %218 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %219 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %220 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = call i32 @snprintf(i8* %218, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %222)
  br label %224

224:                                              ; preds = %217
  %225 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %225, i8** %21, align 8
  br label %226

226:                                              ; preds = %245, %224
  %227 = load i8*, i8** %21, align 8
  %228 = load i8, i8* %227, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %248

230:                                              ; preds = %226
  br label %231

231:                                              ; preds = %230
  %232 = load i8*, i8** %19, align 8
  %233 = load i8*, i8** %18, align 8
  %234 = icmp ult i8* %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i8*, i8** %21, align 8
  %237 = load i8, i8* %236, align 1
  %238 = load i8*, i8** %19, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %19, align 8
  store i8 %237, i8* %238, align 1
  br label %243

240:                                              ; preds = %231
  %241 = load i8*, i8** %19, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %19, align 8
  br label %243

243:                                              ; preds = %240, %235
  br label %244

244:                                              ; preds = %243
  br label %245

245:                                              ; preds = %244
  %246 = load i8*, i8** %21, align 8
  %247 = getelementptr inbounds i8, i8* %246, i32 1
  store i8* %247, i8** %21, align 8
  br label %226

248:                                              ; preds = %226
  br label %249

249:                                              ; preds = %248
  br label %773

250:                                              ; preds = %117
  %251 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %252 = load i64, i64* %22, align 8
  %253 = call i32 @snprintf(i8* %251, i32 1024, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i64 %252)
  br label %254

254:                                              ; preds = %250
  %255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %255, i8** %21, align 8
  br label %256

256:                                              ; preds = %275, %254
  %257 = load i8*, i8** %21, align 8
  %258 = load i8, i8* %257, align 1
  %259 = icmp ne i8 %258, 0
  br i1 %259, label %260, label %278

260:                                              ; preds = %256
  br label %261

261:                                              ; preds = %260
  %262 = load i8*, i8** %19, align 8
  %263 = load i8*, i8** %18, align 8
  %264 = icmp ult i8* %262, %263
  br i1 %264, label %265, label %270

265:                                              ; preds = %261
  %266 = load i8*, i8** %21, align 8
  %267 = load i8, i8* %266, align 1
  %268 = load i8*, i8** %19, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %19, align 8
  store i8 %267, i8* %268, align 1
  br label %273

270:                                              ; preds = %261
  %271 = load i8*, i8** %19, align 8
  %272 = getelementptr inbounds i8, i8* %271, i32 1
  store i8* %272, i8** %19, align 8
  br label %273

273:                                              ; preds = %270, %265
  br label %274

274:                                              ; preds = %273
  br label %275

275:                                              ; preds = %274
  %276 = load i8*, i8** %21, align 8
  %277 = getelementptr inbounds i8, i8* %276, i32 1
  store i8* %277, i8** %21, align 8
  br label %256

278:                                              ; preds = %256
  br label %279

279:                                              ; preds = %278
  br label %773

280:                                              ; preds = %117
  %281 = load i8*, i8** %16, align 8
  %282 = icmp ne i8* %281, null
  br i1 %282, label %283, label %310

283:                                              ; preds = %280
  br label %284

284:                                              ; preds = %283
  %285 = load i8*, i8** %16, align 8
  store i8* %285, i8** %21, align 8
  br label %286

286:                                              ; preds = %305, %284
  %287 = load i8*, i8** %21, align 8
  %288 = load i8, i8* %287, align 1
  %289 = icmp ne i8 %288, 0
  br i1 %289, label %290, label %308

290:                                              ; preds = %286
  br label %291

291:                                              ; preds = %290
  %292 = load i8*, i8** %19, align 8
  %293 = load i8*, i8** %18, align 8
  %294 = icmp ult i8* %292, %293
  br i1 %294, label %295, label %300

295:                                              ; preds = %291
  %296 = load i8*, i8** %21, align 8
  %297 = load i8, i8* %296, align 1
  %298 = load i8*, i8** %19, align 8
  %299 = getelementptr inbounds i8, i8* %298, i32 1
  store i8* %299, i8** %19, align 8
  store i8 %297, i8* %298, align 1
  br label %303

300:                                              ; preds = %291
  %301 = load i8*, i8** %19, align 8
  %302 = getelementptr inbounds i8, i8* %301, i32 1
  store i8* %302, i8** %19, align 8
  br label %303

303:                                              ; preds = %300, %295
  br label %304

304:                                              ; preds = %303
  br label %305

305:                                              ; preds = %304
  %306 = load i8*, i8** %21, align 8
  %307 = getelementptr inbounds i8, i8* %306, i32 1
  store i8* %307, i8** %21, align 8
  br label %286

308:                                              ; preds = %286
  br label %309

309:                                              ; preds = %308
  br label %378

310:                                              ; preds = %280
  %311 = load i8*, i8** %10, align 8
  %312 = icmp ne i8* %311, null
  br i1 %312, label %345, label %313

313:                                              ; preds = %310
  br label %314

314:                                              ; preds = %313
  %315 = load i32, i32* %27, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %343

317:                                              ; preds = %314
  br label %318

318:                                              ; preds = %317
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %319

319:                                              ; preds = %338, %318
  %320 = load i8*, i8** %21, align 8
  %321 = load i8, i8* %320, align 1
  %322 = icmp ne i8 %321, 0
  br i1 %322, label %323, label %341

323:                                              ; preds = %319
  br label %324

324:                                              ; preds = %323
  %325 = load i8*, i8** %19, align 8
  %326 = load i8*, i8** %18, align 8
  %327 = icmp ult i8* %325, %326
  br i1 %327, label %328, label %333

328:                                              ; preds = %324
  %329 = load i8*, i8** %21, align 8
  %330 = load i8, i8* %329, align 1
  %331 = load i8*, i8** %19, align 8
  %332 = getelementptr inbounds i8, i8* %331, i32 1
  store i8* %332, i8** %19, align 8
  store i8 %330, i8* %331, align 1
  br label %336

333:                                              ; preds = %324
  %334 = load i8*, i8** %19, align 8
  %335 = getelementptr inbounds i8, i8* %334, i32 1
  store i8* %335, i8** %19, align 8
  br label %336

336:                                              ; preds = %333, %328
  br label %337

337:                                              ; preds = %336
  br label %338

338:                                              ; preds = %337
  %339 = load i8*, i8** %21, align 8
  %340 = getelementptr inbounds i8, i8* %339, i32 1
  store i8* %340, i8** %21, align 8
  br label %319

341:                                              ; preds = %319
  br label %342

342:                                              ; preds = %341
  br label %343

343:                                              ; preds = %342, %314
  br label %344

344:                                              ; preds = %343
  br label %377

345:                                              ; preds = %310
  %346 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %347 = load i64, i64* %22, align 8
  %348 = trunc i64 %347 to i32
  %349 = getelementptr inbounds [1024 x i8], [1024 x i8]* %14, i64 0, i64 0
  store i8* %349, i8** %16, align 8
  %350 = call i64 @getnameinfo(%struct.sockaddr* %346, i32 %348, i8* %349, i32 1024, i8* null, i32 0, i32 0)
  br label %351

351:                                              ; preds = %345
  %352 = load i8*, i8** %16, align 8
  store i8* %352, i8** %21, align 8
  br label %353

353:                                              ; preds = %372, %351
  %354 = load i8*, i8** %21, align 8
  %355 = load i8, i8* %354, align 1
  %356 = icmp ne i8 %355, 0
  br i1 %356, label %357, label %375

357:                                              ; preds = %353
  br label %358

358:                                              ; preds = %357
  %359 = load i8*, i8** %19, align 8
  %360 = load i8*, i8** %18, align 8
  %361 = icmp ult i8* %359, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %358
  %363 = load i8*, i8** %21, align 8
  %364 = load i8, i8* %363, align 1
  %365 = load i8*, i8** %19, align 8
  %366 = getelementptr inbounds i8, i8* %365, i32 1
  store i8* %366, i8** %19, align 8
  store i8 %364, i8* %365, align 1
  br label %370

367:                                              ; preds = %358
  %368 = load i8*, i8** %19, align 8
  %369 = getelementptr inbounds i8, i8* %368, i32 1
  store i8* %369, i8** %19, align 8
  br label %370

370:                                              ; preds = %367, %362
  br label %371

371:                                              ; preds = %370
  br label %372

372:                                              ; preds = %371
  %373 = load i8*, i8** %21, align 8
  %374 = getelementptr inbounds i8, i8* %373, i32 1
  store i8* %374, i8** %21, align 8
  br label %353

375:                                              ; preds = %353
  br label %376

376:                                              ; preds = %375
  br label %377

377:                                              ; preds = %376, %344
  br label %378

378:                                              ; preds = %377, %309
  br label %773

379:                                              ; preds = %117
  %380 = load i8*, i8** %17, align 8
  %381 = icmp ne i8* %380, null
  br i1 %381, label %382, label %409

382:                                              ; preds = %379
  br label %383

383:                                              ; preds = %382
  %384 = load i8*, i8** %17, align 8
  store i8* %384, i8** %21, align 8
  br label %385

385:                                              ; preds = %404, %383
  %386 = load i8*, i8** %21, align 8
  %387 = load i8, i8* %386, align 1
  %388 = icmp ne i8 %387, 0
  br i1 %388, label %389, label %407

389:                                              ; preds = %385
  br label %390

390:                                              ; preds = %389
  %391 = load i8*, i8** %19, align 8
  %392 = load i8*, i8** %18, align 8
  %393 = icmp ult i8* %391, %392
  br i1 %393, label %394, label %399

394:                                              ; preds = %390
  %395 = load i8*, i8** %21, align 8
  %396 = load i8, i8* %395, align 1
  %397 = load i8*, i8** %19, align 8
  %398 = getelementptr inbounds i8, i8* %397, i32 1
  store i8* %398, i8** %19, align 8
  store i8 %396, i8* %397, align 1
  br label %402

399:                                              ; preds = %390
  %400 = load i8*, i8** %19, align 8
  %401 = getelementptr inbounds i8, i8* %400, i32 1
  store i8* %401, i8** %19, align 8
  br label %402

402:                                              ; preds = %399, %394
  br label %403

403:                                              ; preds = %402
  br label %404

404:                                              ; preds = %403
  %405 = load i8*, i8** %21, align 8
  %406 = getelementptr inbounds i8, i8* %405, i32 1
  store i8* %406, i8** %21, align 8
  br label %385

407:                                              ; preds = %385
  br label %408

408:                                              ; preds = %407
  br label %477

409:                                              ; preds = %379
  %410 = load i32, i32* %23, align 4
  %411 = icmp eq i32 %410, -1
  br i1 %411, label %412, label %444

412:                                              ; preds = %409
  br label %413

413:                                              ; preds = %412
  %414 = load i32, i32* %27, align 4
  %415 = icmp ne i32 %414, 0
  br i1 %415, label %416, label %442

416:                                              ; preds = %413
  br label %417

417:                                              ; preds = %416
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %418

418:                                              ; preds = %437, %417
  %419 = load i8*, i8** %21, align 8
  %420 = load i8, i8* %419, align 1
  %421 = icmp ne i8 %420, 0
  br i1 %421, label %422, label %440

422:                                              ; preds = %418
  br label %423

423:                                              ; preds = %422
  %424 = load i8*, i8** %19, align 8
  %425 = load i8*, i8** %18, align 8
  %426 = icmp ult i8* %424, %425
  br i1 %426, label %427, label %432

427:                                              ; preds = %423
  %428 = load i8*, i8** %21, align 8
  %429 = load i8, i8* %428, align 1
  %430 = load i8*, i8** %19, align 8
  %431 = getelementptr inbounds i8, i8* %430, i32 1
  store i8* %431, i8** %19, align 8
  store i8 %429, i8* %430, align 1
  br label %435

432:                                              ; preds = %423
  %433 = load i8*, i8** %19, align 8
  %434 = getelementptr inbounds i8, i8* %433, i32 1
  store i8* %434, i8** %19, align 8
  br label %435

435:                                              ; preds = %432, %427
  br label %436

436:                                              ; preds = %435
  br label %437

437:                                              ; preds = %436
  %438 = load i8*, i8** %21, align 8
  %439 = getelementptr inbounds i8, i8* %438, i32 1
  store i8* %439, i8** %21, align 8
  br label %418

440:                                              ; preds = %418
  br label %441

441:                                              ; preds = %440
  br label %442

442:                                              ; preds = %441, %413
  br label %443

443:                                              ; preds = %442
  br label %476

444:                                              ; preds = %409
  %445 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %446 = load i64, i64* %22, align 8
  %447 = trunc i64 %446 to i32
  %448 = getelementptr inbounds [32 x i8], [32 x i8]* %15, i64 0, i64 0
  store i8* %448, i8** %17, align 8
  %449 = call i64 @getnameinfo(%struct.sockaddr* %445, i32 %447, i8* null, i32 0, i8* %448, i32 32, i32 0)
  br label %450

450:                                              ; preds = %444
  %451 = load i8*, i8** %17, align 8
  store i8* %451, i8** %21, align 8
  br label %452

452:                                              ; preds = %471, %450
  %453 = load i8*, i8** %21, align 8
  %454 = load i8, i8* %453, align 1
  %455 = icmp ne i8 %454, 0
  br i1 %455, label %456, label %474

456:                                              ; preds = %452
  br label %457

457:                                              ; preds = %456
  %458 = load i8*, i8** %19, align 8
  %459 = load i8*, i8** %18, align 8
  %460 = icmp ult i8* %458, %459
  br i1 %460, label %461, label %466

461:                                              ; preds = %457
  %462 = load i8*, i8** %21, align 8
  %463 = load i8, i8* %462, align 1
  %464 = load i8*, i8** %19, align 8
  %465 = getelementptr inbounds i8, i8* %464, i32 1
  store i8* %465, i8** %19, align 8
  store i8 %463, i8* %464, align 1
  br label %469

466:                                              ; preds = %457
  %467 = load i8*, i8** %19, align 8
  %468 = getelementptr inbounds i8, i8* %467, i32 1
  store i8* %468, i8** %19, align 8
  br label %469

469:                                              ; preds = %466, %461
  br label %470

470:                                              ; preds = %469
  br label %471

471:                                              ; preds = %470
  %472 = load i8*, i8** %21, align 8
  %473 = getelementptr inbounds i8, i8* %472, i32 1
  store i8* %473, i8** %21, align 8
  br label %452

474:                                              ; preds = %452
  br label %475

475:                                              ; preds = %474
  br label %476

476:                                              ; preds = %475, %443
  br label %477

477:                                              ; preds = %476, %408
  br label %773

478:                                              ; preds = %117
  br label %479

479:                                              ; preds = %478
  %480 = load i32, i32* %27, align 4
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %482, label %508

482:                                              ; preds = %479
  br label %483

483:                                              ; preds = %482
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %484

484:                                              ; preds = %503, %483
  %485 = load i8*, i8** %21, align 8
  %486 = load i8, i8* %485, align 1
  %487 = icmp ne i8 %486, 0
  br i1 %487, label %488, label %506

488:                                              ; preds = %484
  br label %489

489:                                              ; preds = %488
  %490 = load i8*, i8** %19, align 8
  %491 = load i8*, i8** %18, align 8
  %492 = icmp ult i8* %490, %491
  br i1 %492, label %493, label %498

493:                                              ; preds = %489
  %494 = load i8*, i8** %21, align 8
  %495 = load i8, i8* %494, align 1
  %496 = load i8*, i8** %19, align 8
  %497 = getelementptr inbounds i8, i8* %496, i32 1
  store i8* %497, i8** %19, align 8
  store i8 %495, i8* %496, align 1
  br label %501

498:                                              ; preds = %489
  %499 = load i8*, i8** %19, align 8
  %500 = getelementptr inbounds i8, i8* %499, i32 1
  store i8* %500, i8** %19, align 8
  br label %501

501:                                              ; preds = %498, %493
  br label %502

502:                                              ; preds = %501
  br label %503

503:                                              ; preds = %502
  %504 = load i8*, i8** %21, align 8
  %505 = getelementptr inbounds i8, i8* %504, i32 1
  store i8* %505, i8** %21, align 8
  br label %484

506:                                              ; preds = %484
  br label %507

507:                                              ; preds = %506
  br label %508

508:                                              ; preds = %507, %479
  br label %509

509:                                              ; preds = %508
  br label %773

510:                                              ; preds = %117
  %511 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %512 = icmp ne %struct.sockaddr_in6* %511, null
  br i1 %512, label %513, label %545

513:                                              ; preds = %510
  %514 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %515 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %516 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = call i32 @snprintf(i8* %514, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %517)
  br label %519

519:                                              ; preds = %513
  %520 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %520, i8** %21, align 8
  br label %521

521:                                              ; preds = %540, %519
  %522 = load i8*, i8** %21, align 8
  %523 = load i8, i8* %522, align 1
  %524 = icmp ne i8 %523, 0
  br i1 %524, label %525, label %543

525:                                              ; preds = %521
  br label %526

526:                                              ; preds = %525
  %527 = load i8*, i8** %19, align 8
  %528 = load i8*, i8** %18, align 8
  %529 = icmp ult i8* %527, %528
  br i1 %529, label %530, label %535

530:                                              ; preds = %526
  %531 = load i8*, i8** %21, align 8
  %532 = load i8, i8* %531, align 1
  %533 = load i8*, i8** %19, align 8
  %534 = getelementptr inbounds i8, i8* %533, i32 1
  store i8* %534, i8** %19, align 8
  store i8 %532, i8* %533, align 1
  br label %538

535:                                              ; preds = %526
  %536 = load i8*, i8** %19, align 8
  %537 = getelementptr inbounds i8, i8* %536, i32 1
  store i8* %537, i8** %19, align 8
  br label %538

538:                                              ; preds = %535, %530
  br label %539

539:                                              ; preds = %538
  br label %540

540:                                              ; preds = %539
  %541 = load i8*, i8** %21, align 8
  %542 = getelementptr inbounds i8, i8* %541, i32 1
  store i8* %542, i8** %21, align 8
  br label %521

543:                                              ; preds = %521
  br label %544

544:                                              ; preds = %543
  br label %773

545:                                              ; preds = %510
  br label %546

546:                                              ; preds = %545
  %547 = load i32, i32* %27, align 4
  %548 = icmp ne i32 %547, 0
  br i1 %548, label %549, label %575

549:                                              ; preds = %546
  br label %550

550:                                              ; preds = %549
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %551

551:                                              ; preds = %570, %550
  %552 = load i8*, i8** %21, align 8
  %553 = load i8, i8* %552, align 1
  %554 = icmp ne i8 %553, 0
  br i1 %554, label %555, label %573

555:                                              ; preds = %551
  br label %556

556:                                              ; preds = %555
  %557 = load i8*, i8** %19, align 8
  %558 = load i8*, i8** %18, align 8
  %559 = icmp ult i8* %557, %558
  br i1 %559, label %560, label %565

560:                                              ; preds = %556
  %561 = load i8*, i8** %21, align 8
  %562 = load i8, i8* %561, align 1
  %563 = load i8*, i8** %19, align 8
  %564 = getelementptr inbounds i8, i8* %563, i32 1
  store i8* %564, i8** %19, align 8
  store i8 %562, i8* %563, align 1
  br label %568

565:                                              ; preds = %556
  %566 = load i8*, i8** %19, align 8
  %567 = getelementptr inbounds i8, i8* %566, i32 1
  store i8* %567, i8** %19, align 8
  br label %568

568:                                              ; preds = %565, %560
  br label %569

569:                                              ; preds = %568
  br label %570

570:                                              ; preds = %569
  %571 = load i8*, i8** %21, align 8
  %572 = getelementptr inbounds i8, i8* %571, i32 1
  store i8* %572, i8** %21, align 8
  br label %551

573:                                              ; preds = %551
  br label %574

574:                                              ; preds = %573
  br label %575

575:                                              ; preds = %574, %546
  br label %576

576:                                              ; preds = %575
  br label %577

577:                                              ; preds = %576
  br label %773

578:                                              ; preds = %117
  %579 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %580 = icmp ne %struct.sockaddr_in6* %579, null
  br i1 %580, label %581, label %613

581:                                              ; preds = %578
  %582 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %583 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %584 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %583, i32 0, i32 1
  %585 = load i64, i64* %584, align 8
  %586 = call i32 @snprintf(i8* %582, i32 1024, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %585)
  br label %587

587:                                              ; preds = %581
  %588 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %588, i8** %21, align 8
  br label %589

589:                                              ; preds = %608, %587
  %590 = load i8*, i8** %21, align 8
  %591 = load i8, i8* %590, align 1
  %592 = icmp ne i8 %591, 0
  br i1 %592, label %593, label %611

593:                                              ; preds = %589
  br label %594

594:                                              ; preds = %593
  %595 = load i8*, i8** %19, align 8
  %596 = load i8*, i8** %18, align 8
  %597 = icmp ult i8* %595, %596
  br i1 %597, label %598, label %603

598:                                              ; preds = %594
  %599 = load i8*, i8** %21, align 8
  %600 = load i8, i8* %599, align 1
  %601 = load i8*, i8** %19, align 8
  %602 = getelementptr inbounds i8, i8* %601, i32 1
  store i8* %602, i8** %19, align 8
  store i8 %600, i8* %601, align 1
  br label %606

603:                                              ; preds = %594
  %604 = load i8*, i8** %19, align 8
  %605 = getelementptr inbounds i8, i8* %604, i32 1
  store i8* %605, i8** %19, align 8
  br label %606

606:                                              ; preds = %603, %598
  br label %607

607:                                              ; preds = %606
  br label %608

608:                                              ; preds = %607
  %609 = load i8*, i8** %21, align 8
  %610 = getelementptr inbounds i8, i8* %609, i32 1
  store i8* %610, i8** %21, align 8
  br label %589

611:                                              ; preds = %589
  br label %612

612:                                              ; preds = %611
  br label %773

613:                                              ; preds = %578
  br label %614

614:                                              ; preds = %613
  %615 = load i32, i32* %27, align 4
  %616 = icmp ne i32 %615, 0
  br i1 %616, label %617, label %643

617:                                              ; preds = %614
  br label %618

618:                                              ; preds = %617
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %619

619:                                              ; preds = %638, %618
  %620 = load i8*, i8** %21, align 8
  %621 = load i8, i8* %620, align 1
  %622 = icmp ne i8 %621, 0
  br i1 %622, label %623, label %641

623:                                              ; preds = %619
  br label %624

624:                                              ; preds = %623
  %625 = load i8*, i8** %19, align 8
  %626 = load i8*, i8** %18, align 8
  %627 = icmp ult i8* %625, %626
  br i1 %627, label %628, label %633

628:                                              ; preds = %624
  %629 = load i8*, i8** %21, align 8
  %630 = load i8, i8* %629, align 1
  %631 = load i8*, i8** %19, align 8
  %632 = getelementptr inbounds i8, i8* %631, i32 1
  store i8* %632, i8** %19, align 8
  store i8 %630, i8* %631, align 1
  br label %636

633:                                              ; preds = %624
  %634 = load i8*, i8** %19, align 8
  %635 = getelementptr inbounds i8, i8* %634, i32 1
  store i8* %635, i8** %19, align 8
  br label %636

636:                                              ; preds = %633, %628
  br label %637

637:                                              ; preds = %636
  br label %638

638:                                              ; preds = %637
  %639 = load i8*, i8** %21, align 8
  %640 = getelementptr inbounds i8, i8* %639, i32 1
  store i8* %640, i8** %21, align 8
  br label %619

641:                                              ; preds = %619
  br label %642

642:                                              ; preds = %641
  br label %643

643:                                              ; preds = %642, %614
  br label %644

644:                                              ; preds = %643
  br label %645

645:                                              ; preds = %644
  br label %773

646:                                              ; preds = %117
  br label %647

647:                                              ; preds = %646
  %648 = load i32, i32* %27, align 4
  %649 = icmp ne i32 %648, 0
  br i1 %649, label %650, label %676

650:                                              ; preds = %647
  br label %651

651:                                              ; preds = %650
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  br label %652

652:                                              ; preds = %671, %651
  %653 = load i8*, i8** %21, align 8
  %654 = load i8, i8* %653, align 1
  %655 = icmp ne i8 %654, 0
  br i1 %655, label %656, label %674

656:                                              ; preds = %652
  br label %657

657:                                              ; preds = %656
  %658 = load i8*, i8** %19, align 8
  %659 = load i8*, i8** %18, align 8
  %660 = icmp ult i8* %658, %659
  br i1 %660, label %661, label %666

661:                                              ; preds = %657
  %662 = load i8*, i8** %21, align 8
  %663 = load i8, i8* %662, align 1
  %664 = load i8*, i8** %19, align 8
  %665 = getelementptr inbounds i8, i8* %664, i32 1
  store i8* %665, i8** %19, align 8
  store i8 %663, i8* %664, align 1
  br label %669

666:                                              ; preds = %657
  %667 = load i8*, i8** %19, align 8
  %668 = getelementptr inbounds i8, i8* %667, i32 1
  store i8* %668, i8** %19, align 8
  br label %669

669:                                              ; preds = %666, %661
  br label %670

670:                                              ; preds = %669
  br label %671

671:                                              ; preds = %670
  %672 = load i8*, i8** %21, align 8
  %673 = getelementptr inbounds i8, i8* %672, i32 1
  store i8* %673, i8** %21, align 8
  br label %652

674:                                              ; preds = %652
  br label %675

675:                                              ; preds = %674
  br label %676

676:                                              ; preds = %675, %647
  br label %677

677:                                              ; preds = %676
  br label %773

678:                                              ; preds = %117
  %679 = load %struct.sockaddr*, %struct.sockaddr** %9, align 8
  %680 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %679, i32 0, i32 0
  %681 = load i32, i32* %680, align 4
  switch i32 %681, label %694 [
    i32 129, label %682
    i32 132, label %686
    i32 131, label %690
  ]

682:                                              ; preds = %678
  %683 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %684 = load %struct.sockaddr_un*, %struct.sockaddr_un** %26, align 8
  %685 = call i32 @debug_un(i8* %683, i32 1024, %struct.sockaddr_un* %684)
  br label %696

686:                                              ; preds = %678
  %687 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %688 = load %struct.sockaddr_in*, %struct.sockaddr_in** %24, align 8
  %689 = call i32 @debug_in(i8* %687, i32 1024, %struct.sockaddr_in* %688)
  br label %696

690:                                              ; preds = %678
  %691 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  %692 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %25, align 8
  %693 = call i32 @debug_in6(i8* %691, i32 1024, %struct.sockaddr_in6* %692)
  br label %696

694:                                              ; preds = %678
  %695 = call i32 (...) @abort() #3
  unreachable

696:                                              ; preds = %690, %686, %682
  br label %697

697:                                              ; preds = %696
  %698 = getelementptr inbounds [1024 x i8], [1024 x i8]* %12, i64 0, i64 0
  store i8* %698, i8** %21, align 8
  br label %699

699:                                              ; preds = %718, %697
  %700 = load i8*, i8** %21, align 8
  %701 = load i8, i8* %700, align 1
  %702 = icmp ne i8 %701, 0
  br i1 %702, label %703, label %721

703:                                              ; preds = %699
  br label %704

704:                                              ; preds = %703
  %705 = load i8*, i8** %19, align 8
  %706 = load i8*, i8** %18, align 8
  %707 = icmp ult i8* %705, %706
  br i1 %707, label %708, label %713

708:                                              ; preds = %704
  %709 = load i8*, i8** %21, align 8
  %710 = load i8, i8* %709, align 1
  %711 = load i8*, i8** %19, align 8
  %712 = getelementptr inbounds i8, i8* %711, i32 1
  store i8* %712, i8** %19, align 8
  store i8 %710, i8* %711, align 1
  br label %716

713:                                              ; preds = %704
  %714 = load i8*, i8** %19, align 8
  %715 = getelementptr inbounds i8, i8* %714, i32 1
  store i8* %715, i8** %19, align 8
  br label %716

716:                                              ; preds = %713, %708
  br label %717

717:                                              ; preds = %716
  br label %718

718:                                              ; preds = %717
  %719 = load i8*, i8** %21, align 8
  %720 = getelementptr inbounds i8, i8* %719, i32 1
  store i8* %720, i8** %21, align 8
  br label %699

721:                                              ; preds = %699
  br label %722

722:                                              ; preds = %721
  br label %773

723:                                              ; preds = %117
  br label %724

724:                                              ; preds = %723
  %725 = load i8*, i8** %19, align 8
  %726 = load i8*, i8** %18, align 8
  %727 = icmp ult i8* %725, %726
  br i1 %727, label %728, label %731

728:                                              ; preds = %724
  %729 = load i8*, i8** %19, align 8
  %730 = getelementptr inbounds i8, i8* %729, i32 1
  store i8* %730, i8** %19, align 8
  store i8 37, i8* %729, align 1
  br label %734

731:                                              ; preds = %724
  %732 = load i8*, i8** %19, align 8
  %733 = getelementptr inbounds i8, i8* %732, i32 1
  store i8* %733, i8** %19, align 8
  br label %734

734:                                              ; preds = %731, %728
  br label %735

735:                                              ; preds = %734
  %736 = load i32, i32* %27, align 4
  %737 = icmp eq i32 %736, 0
  br i1 %737, label %738, label %751

738:                                              ; preds = %735
  br label %739

739:                                              ; preds = %738
  %740 = load i8*, i8** %19, align 8
  %741 = load i8*, i8** %18, align 8
  %742 = icmp ult i8* %740, %741
  br i1 %742, label %743, label %746

743:                                              ; preds = %739
  %744 = load i8*, i8** %19, align 8
  %745 = getelementptr inbounds i8, i8* %744, i32 1
  store i8* %745, i8** %19, align 8
  store i8 63, i8* %744, align 1
  br label %749

746:                                              ; preds = %739
  %747 = load i8*, i8** %19, align 8
  %748 = getelementptr inbounds i8, i8* %747, i32 1
  store i8* %748, i8** %19, align 8
  br label %749

749:                                              ; preds = %746, %743
  br label %750

750:                                              ; preds = %749
  br label %751

751:                                              ; preds = %750, %735
  %752 = load i8*, i8** %20, align 8
  %753 = load i8, i8* %752, align 1
  %754 = sext i8 %753 to i32
  %755 = icmp eq i32 %754, 0
  br i1 %755, label %756, label %757

756:                                              ; preds = %751
  br label %778

757:                                              ; preds = %751
  br label %758

758:                                              ; preds = %117, %757
  br label %759

759:                                              ; preds = %758
  %760 = load i8*, i8** %19, align 8
  %761 = load i8*, i8** %18, align 8
  %762 = icmp ult i8* %760, %761
  br i1 %762, label %763, label %768

763:                                              ; preds = %759
  %764 = load i8*, i8** %20, align 8
  %765 = load i8, i8* %764, align 1
  %766 = load i8*, i8** %19, align 8
  %767 = getelementptr inbounds i8, i8* %766, i32 1
  store i8* %767, i8** %19, align 8
  store i8 %765, i8* %766, align 1
  br label %771

768:                                              ; preds = %759
  %769 = load i8*, i8** %19, align 8
  %770 = getelementptr inbounds i8, i8* %769, i32 1
  store i8* %770, i8** %19, align 8
  br label %771

771:                                              ; preds = %768, %763
  br label %772

772:                                              ; preds = %771
  br label %773

773:                                              ; preds = %772, %722, %677, %645, %612, %577, %544, %509, %477, %378, %279, %249, %216, %149
  store i32 1, i32* %27, align 4
  br label %774

774:                                              ; preds = %773, %115
  %775 = load i8*, i8** %20, align 8
  %776 = getelementptr inbounds i8, i8* %775, i32 1
  store i8* %776, i8** %20, align 8
  br label %92

777:                                              ; preds = %92
  br label %778

778:                                              ; preds = %777, %756, %36
  %779 = load i8*, i8** %19, align 8
  %780 = load i8*, i8** %18, align 8
  %781 = icmp ult i8* %779, %780
  br i1 %781, label %782, label %784

782:                                              ; preds = %778
  %783 = load i8*, i8** %19, align 8
  store i8 0, i8* %783, align 1
  br label %793

784:                                              ; preds = %778
  %785 = load i64, i64* %7, align 8
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %787, label %792

787:                                              ; preds = %784
  %788 = load i8*, i8** %6, align 8
  %789 = load i64, i64* %7, align 8
  %790 = sub i64 %789, 1
  %791 = getelementptr inbounds i8, i8* %788, i64 %790
  store i8 0, i8* %791, align 1
  br label %792

792:                                              ; preds = %787, %784
  br label %793

793:                                              ; preds = %792, %782
  %794 = load i8*, i8** %19, align 8
  %795 = load i8*, i8** %6, align 8
  %796 = ptrtoint i8* %794 to i64
  %797 = ptrtoint i8* %795 to i64
  %798 = sub i64 %796, %797
  %799 = trunc i64 %798 to i32
  store i32 %799, i32* %5, align 4
  br label %800

800:                                              ; preds = %793, %89, %68
  %801 = load i32, i32* %5, align 4
  ret i32 %801
}

declare dso_local i32 @strlcpy(i8*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i64 @getnameinfo(%struct.sockaddr*, i32, i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i64) #1

declare dso_local i32 @debug_un(i8*, i32, %struct.sockaddr_un*) #1

declare dso_local i32 @debug_in(i8*, i32, %struct.sockaddr_in*) #1

declare dso_local i32 @debug_in6(i8*, i32, %struct.sockaddr_in6*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
