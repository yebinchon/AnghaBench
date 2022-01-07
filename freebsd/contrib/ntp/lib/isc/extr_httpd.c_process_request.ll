; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_process_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/extr_httpd.c_process_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, i8*, i32, i64*, i32 }

@.str = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@ISC_R_NOTFOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"GET \00", align 1
@ISC_HTTPD_METHODGET = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"POST \00", align 1
@ISC_HTTPD_METHODPOST = common dso_local global i32 0, align 4
@ISC_R_RANGE = common dso_local global i32 0, align 4
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"http:/\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"https:/\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"HTTP/1.0\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"HTTP/1.1\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"Connection: close\00", align 1
@HTTPD_CLOSE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"Host: \00", align 1
@HTTPD_FOUNDHOST = common dso_local global i32 0, align 4
@ISC_R_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @process_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_request(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 @ENTER(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %17, i64 %21
  store i8 0, i8* %22, align 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = call i8* @strstr(i8* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i8* %26, i8** %6, align 8
  store i32 1, i32* %8, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = icmp eq i8* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = call i8* @strstr(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %33, i8** %6, align 8
  store i32 2, i32* %8, align 4
  br label %34

34:                                               ; preds = %29, %2
  %35 = load i8*, i8** %6, align 8
  %36 = icmp eq i8* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %38, i32* %3, align 4
  br label %329

39:                                               ; preds = %34
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i64 @strncmp(i8* %42, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %39
  %46 = load i32, i32* @ISC_HTTPD_METHODGET, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 4
  store i8* %52, i8** %7, align 8
  br label %70

53:                                               ; preds = %39
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = call i64 @strncmp(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 5)
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %53
  %60 = load i32, i32* @ISC_HTTPD_METHODPOST, align 4
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 6
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 5
  store i8* %66, i8** %7, align 8
  br label %69

67:                                               ; preds = %53
  %68 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %68, i32* %3, align 4
  br label %329

69:                                               ; preds = %59
  br label %70

70:                                               ; preds = %69, %45
  %71 = load i8*, i8** %7, align 8
  store i8* %71, i8** %6, align 8
  br label %72

72:                                               ; preds = %104, %70
  %73 = load i8*, i8** %6, align 8
  %74 = call i64 @LENGTHOK(i8* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %72
  %77 = load i8*, i8** %6, align 8
  %78 = call i64 @BUFLENOK(i8* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load i8*, i8** %6, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 10
  br i1 %84, label %85, label %100

85:                                               ; preds = %80
  %86 = load i8*, i8** %6, align 8
  %87 = load i8, i8* %86, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp ne i32 %88, 13
  br i1 %89, label %90, label %100

90:                                               ; preds = %85
  %91 = load i8*, i8** %6, align 8
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %100

95:                                               ; preds = %90
  %96 = load i8*, i8** %6, align 8
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp ne i32 %98, 32
  br label %100

100:                                              ; preds = %95, %90, %85, %80
  %101 = phi i1 [ false, %90 ], [ false, %85 ], [ false, %80 ], [ %99, %95 ]
  br label %102

102:                                              ; preds = %100, %76, %72
  %103 = phi i1 [ false, %76 ], [ false, %72 ], [ %101, %100 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %6, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %6, align 8
  br label %72

107:                                              ; preds = %102
  %108 = load i8*, i8** %6, align 8
  %109 = call i64 @LENGTHOK(i8* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %112, i32* %3, align 4
  br label %329

113:                                              ; preds = %107
  %114 = load i8*, i8** %6, align 8
  %115 = call i64 @BUFLENOK(i8* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %119, label %117

117:                                              ; preds = %113
  %118 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %118, i32* %3, align 4
  br label %329

119:                                              ; preds = %113
  %120 = load i8*, i8** %6, align 8
  store i8 0, i8* %120, align 1
  %121 = load i8*, i8** %7, align 8
  %122 = call i64 @strncmp(i8* %121, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 6)
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %128, label %124

124:                                              ; preds = %119
  %125 = load i8*, i8** %7, align 8
  %126 = call i64 @strncmp(i8* %125, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0), i32 7)
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %204

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %141, %128
  %130 = load i8*, i8** %7, align 8
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp ne i32 %132, 47
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load i8*, i8** %7, align 8
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp ne i32 %137, 0
  br label %139

139:                                              ; preds = %134, %129
  %140 = phi i1 [ false, %129 ], [ %138, %134 ]
  br i1 %140, label %141, label %144

141:                                              ; preds = %139
  %142 = load i8*, i8** %7, align 8
  %143 = getelementptr inbounds i8, i8* %142, i32 1
  store i8* %143, i8** %7, align 8
  br label %129

144:                                              ; preds = %139
  %145 = load i8*, i8** %7, align 8
  %146 = load i8, i8* %145, align 1
  %147 = sext i8 %146 to i32
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %144
  %150 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %150, i32* %3, align 4
  br label %329

151:                                              ; preds = %144
  %152 = load i8*, i8** %7, align 8
  %153 = getelementptr inbounds i8, i8* %152, i32 1
  store i8* %153, i8** %7, align 8
  br label %154

154:                                              ; preds = %166, %151
  %155 = load i8*, i8** %7, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = icmp ne i32 %157, 47
  br i1 %158, label %159, label %164

159:                                              ; preds = %154
  %160 = load i8*, i8** %7, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %162, 0
  br label %164

164:                                              ; preds = %159, %154
  %165 = phi i1 [ false, %154 ], [ %163, %159 ]
  br i1 %165, label %166, label %169

166:                                              ; preds = %164
  %167 = load i8*, i8** %7, align 8
  %168 = getelementptr inbounds i8, i8* %167, i32 1
  store i8* %168, i8** %7, align 8
  br label %154

169:                                              ; preds = %164
  %170 = load i8*, i8** %7, align 8
  %171 = load i8, i8* %170, align 1
  %172 = sext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %175, i32* %3, align 4
  br label %329

176:                                              ; preds = %169
  %177 = load i8*, i8** %7, align 8
  %178 = getelementptr inbounds i8, i8* %177, i32 1
  store i8* %178, i8** %7, align 8
  br label %179

179:                                              ; preds = %191, %176
  %180 = load i8*, i8** %7, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp ne i32 %182, 47
  br i1 %183, label %184, label %189

184:                                              ; preds = %179
  %185 = load i8*, i8** %7, align 8
  %186 = load i8, i8* %185, align 1
  %187 = sext i8 %186 to i32
  %188 = icmp ne i32 %187, 0
  br label %189

189:                                              ; preds = %184, %179
  %190 = phi i1 [ false, %179 ], [ %188, %184 ]
  br i1 %190, label %191, label %194

191:                                              ; preds = %189
  %192 = load i8*, i8** %7, align 8
  %193 = getelementptr inbounds i8, i8* %192, i32 1
  store i8* %193, i8** %7, align 8
  br label %179

194:                                              ; preds = %189
  %195 = load i8*, i8** %7, align 8
  %196 = load i8, i8* %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %194
  %200 = load i8*, i8** %7, align 8
  %201 = getelementptr inbounds i8, i8* %200, i32 -1
  store i8* %201, i8** %7, align 8
  %202 = load i8*, i8** %7, align 8
  store i8 47, i8* %202, align 1
  br label %203

203:                                              ; preds = %199, %194
  br label %204

204:                                              ; preds = %203, %124
  %205 = load i8*, i8** %7, align 8
  %206 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %206, i32 0, i32 2
  store i8* %205, i8** %207, align 8
  %208 = load i8*, i8** %6, align 8
  %209 = load i32, i32* %8, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i8, i8* %208, i64 %210
  store i8* %211, i8** %7, align 8
  %212 = load i8*, i8** %7, align 8
  store i8* %212, i8** %6, align 8
  %213 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %213, i32 0, i32 2
  %215 = load i8*, i8** %214, align 8
  %216 = call i64* @strchr(i8* %215, i8 signext 63)
  %217 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 5
  store i64* %216, i64** %218, align 8
  %219 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %219, i32 0, i32 5
  %221 = load i64*, i64** %220, align 8
  %222 = icmp ne i64* %221, null
  br i1 %222, label %223, label %231

223:                                              ; preds = %204
  %224 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 5
  %226 = load i64*, i64** %225, align 8
  store i64 0, i64* %226, align 8
  %227 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %228 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %227, i32 0, i32 5
  %229 = load i64*, i64** %228, align 8
  %230 = getelementptr inbounds i64, i64* %229, i32 1
  store i64* %230, i64** %228, align 8
  br label %231

231:                                              ; preds = %223, %204
  br label %232

232:                                              ; preds = %259, %231
  %233 = load i8*, i8** %6, align 8
  %234 = call i64 @LENGTHOK(i8* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %257

236:                                              ; preds = %232
  %237 = load i8*, i8** %6, align 8
  %238 = call i64 @BUFLENOK(i8* %237)
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %236
  %241 = load i8*, i8** %6, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp ne i32 %243, 10
  br i1 %244, label %245, label %255

245:                                              ; preds = %240
  %246 = load i8*, i8** %6, align 8
  %247 = load i8, i8* %246, align 1
  %248 = sext i8 %247 to i32
  %249 = icmp ne i32 %248, 13
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i8*, i8** %6, align 8
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp ne i32 %253, 0
  br label %255

255:                                              ; preds = %250, %245, %240
  %256 = phi i1 [ false, %245 ], [ false, %240 ], [ %254, %250 ]
  br label %257

257:                                              ; preds = %255, %236, %232
  %258 = phi i1 [ false, %236 ], [ false, %232 ], [ %256, %255 ]
  br i1 %258, label %259, label %262

259:                                              ; preds = %257
  %260 = load i8*, i8** %6, align 8
  %261 = getelementptr inbounds i8, i8* %260, i32 1
  store i8* %261, i8** %6, align 8
  br label %232

262:                                              ; preds = %257
  %263 = load i8*, i8** %6, align 8
  %264 = call i64 @LENGTHOK(i8* %263)
  %265 = icmp ne i64 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %262
  %267 = load i32, i32* @ISC_R_NOTFOUND, align 4
  store i32 %267, i32* %3, align 4
  br label %329

268:                                              ; preds = %262
  %269 = load i8*, i8** %6, align 8
  %270 = call i64 @BUFLENOK(i8* %269)
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %274, label %272

272:                                              ; preds = %268
  %273 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %273, i32* %3, align 4
  br label %329

274:                                              ; preds = %268
  %275 = load i8*, i8** %6, align 8
  store i8 0, i8* %275, align 1
  %276 = load i8*, i8** %7, align 8
  %277 = call i64 @strncmp(i8* %276, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i32 8)
  %278 = icmp ne i64 %277, 0
  br i1 %278, label %279, label %285

279:                                              ; preds = %274
  %280 = load i8*, i8** %7, align 8
  %281 = call i64 @strncmp(i8* %280, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i32 8)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %285

283:                                              ; preds = %279
  %284 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %284, i32* %3, align 4
  br label %329

285:                                              ; preds = %279, %274
  %286 = load i8*, i8** %7, align 8
  %287 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %287, i32 0, i32 3
  store i8* %286, i8** %288, align 8
  %289 = load i8*, i8** %6, align 8
  %290 = getelementptr inbounds i8, i8* %289, i64 1
  store i8* %290, i8** %7, align 8
  %291 = load i8*, i8** %7, align 8
  store i8* %291, i8** %6, align 8
  %292 = load i8*, i8** %6, align 8
  %293 = call i8* @strstr(i8* %292, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %294 = icmp ne i8* %293, null
  br i1 %294, label %295, label %301

295:                                              ; preds = %285
  %296 = load i32, i32* @HTTPD_CLOSE, align 4
  %297 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 8
  br label %301

301:                                              ; preds = %295, %285
  %302 = load i8*, i8** %6, align 8
  %303 = call i8* @strstr(i8* %302, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %304 = icmp ne i8* %303, null
  br i1 %304, label %305, label %311

305:                                              ; preds = %301
  %306 = load i32, i32* @HTTPD_FOUNDHOST, align 4
  %307 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %308 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %307, i32 0, i32 4
  %309 = load i32, i32* %308, align 8
  %310 = or i32 %309, %306
  store i32 %310, i32* %308, align 8
  br label %311

311:                                              ; preds = %305, %301
  %312 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %313 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %312, i32 0, i32 3
  %314 = load i8*, i8** %313, align 8
  %315 = call i64 @strcmp(i8* %314, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0))
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %311
  %318 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %319 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %318, i32 0, i32 4
  %320 = load i32, i32* %319, align 8
  %321 = load i32, i32* @HTTPD_FOUNDHOST, align 4
  %322 = and i32 %320, %321
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %326

324:                                              ; preds = %317
  %325 = load i32, i32* @ISC_R_RANGE, align 4
  store i32 %325, i32* %3, align 4
  br label %329

326:                                              ; preds = %317, %311
  %327 = call i32 @EXIT(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %328 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %328, i32* %3, align 4
  br label %329

329:                                              ; preds = %326, %324, %283, %272, %266, %174, %149, %117, %111, %67, %37
  %330 = load i32, i32* %3, align 4
  ret i32 %330
}

declare dso_local i32 @ENTER(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i64 @LENGTHOK(i8*) #1

declare dso_local i64 @BUFLENOK(i8*) #1

declare dso_local i64* @strchr(i8*, i8 signext) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @EXIT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
