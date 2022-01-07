; ModuleID = '/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootp.c_setenv_.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/libsa/extr_bootp.c_setenv_.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dhcp_opt = type { i64, i32, i8* }
%struct.in_addr = type { i8 }

@dhcp_opt = common dso_local global %struct.dhcp_opt* null, align 8
@TAG_END = common dso_local global i64 0, align 8
@vndr_opt = common dso_local global %struct.dhcp_opt* null, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" \09\0A\0D\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%stags\00", align 1
@FLD_SEP = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64*, %struct.dhcp_opt*)* @setenv_ to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setenv_(i64* %0, i64* %1, %struct.dhcp_opt* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.dhcp_opt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca [512 x i8], align 16
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca [256 x i8], align 16
  %15 = alloca %struct.dhcp_opt*, align 8
  %16 = alloca %struct.in_addr, align 1
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca [128 x i8], align 16
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  store %struct.dhcp_opt* %2, %struct.dhcp_opt** %6, align 8
  %21 = load i64*, i64** %4, align 8
  store i64* %21, i64** %7, align 8
  %22 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  store i8* %22, i8** %10, align 8
  %23 = load %struct.dhcp_opt*, %struct.dhcp_opt** %6, align 8
  %24 = icmp eq %struct.dhcp_opt* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %3
  %26 = load %struct.dhcp_opt*, %struct.dhcp_opt** @dhcp_opt, align 8
  store %struct.dhcp_opt* %26, %struct.dhcp_opt** %6, align 8
  br label %27

27:                                               ; preds = %25, %3
  br label %28

28:                                               ; preds = %365, %52, %27
  %29 = load i64*, i64** %7, align 8
  %30 = load i64*, i64** %5, align 8
  %31 = icmp ult i64* %29, %30
  br i1 %31, label %32, label %366

32:                                               ; preds = %28
  %33 = load i64*, i64** %7, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %7, align 8
  %35 = load i64, i64* %33, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = getelementptr inbounds i64, i64* %36, i32 1
  store i64* %37, i64** %7, align 8
  %38 = load i64, i64* %36, align 8
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i64*, i64** %7, align 8
  store i64* %40, i64** %4, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i64, i64* %42, i64 %43
  store i64* %44, i64** %7, align 8
  %45 = load i64, i64* %8, align 8
  %46 = load i64, i64* @TAG_END, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %32
  br label %366

49:                                               ; preds = %32
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  br label %28

53:                                               ; preds = %49
  %54 = load %struct.dhcp_opt*, %struct.dhcp_opt** %6, align 8
  %55 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %54, i64 1
  store %struct.dhcp_opt* %55, %struct.dhcp_opt** %15, align 8
  br label %56

56:                                               ; preds = %70, %53
  %57 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %58 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %56
  %62 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %63 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = icmp ne i64 %64, %65
  br label %67

67:                                               ; preds = %61, %56
  %68 = phi i1 [ false, %56 ], [ %66, %61 ]
  br i1 %68, label %69, label %73

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %72 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %71, i32 1
  store %struct.dhcp_opt* %72, %struct.dhcp_opt** %15, align 8
  br label %56

73:                                               ; preds = %67
  %74 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %12, align 8
  store i8 0, i8* %75, align 1
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %77 = getelementptr inbounds i8, i8* %76, i64 256
  %78 = getelementptr inbounds i8, i8* %77, i64 -1
  %79 = getelementptr inbounds i8, i8* %78, i64 -16
  store i8* %79, i8** %13, align 8
  %80 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %81 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  switch i32 %82, label %306 [
    i32 130, label %83
    i32 128, label %84
    i32 131, label %91
    i32 134, label %129
    i32 129, label %155
    i32 136, label %163
    i32 137, label %163
    i32 135, label %163
    i32 132, label %249
    i32 133, label %249
  ]

83:                                               ; preds = %73
  br label %306

84:                                               ; preds = %73
  %85 = load i64*, i64** %4, align 8
  %86 = load i64*, i64** %4, align 8
  %87 = load i32, i32* %11, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %86, i64 %88
  %90 = load %struct.dhcp_opt*, %struct.dhcp_opt** @vndr_opt, align 8
  call void @setenv_(i64* %85, i64* %89, %struct.dhcp_opt* %90)
  br label %306

91:                                               ; preds = %73
  br label %92

92:                                               ; preds = %123, %91
  %93 = load i32, i32* %11, align 4
  %94 = icmp ugt i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %92
  %96 = load i8*, i8** %12, align 8
  %97 = load i8*, i8** %13, align 8
  %98 = icmp ult i8* %96, %97
  br label %99

99:                                               ; preds = %95, %92
  %100 = phi i1 [ false, %92 ], [ %98, %95 ]
  br i1 %100, label %101, label %128

101:                                              ; preds = %99
  %102 = load i8*, i8** %12, align 8
  %103 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %104 = icmp ne i8* %102, %103
  br i1 %104, label %105, label %108

105:                                              ; preds = %101
  %106 = load i8*, i8** %12, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %12, align 8
  store i8 44, i8* %106, align 1
  br label %108

108:                                              ; preds = %105, %101
  %109 = load i64*, i64** %4, align 8
  %110 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  %111 = call i32 @bcopy(i64* %109, i8* %110, i32 1)
  %112 = load i8*, i8** %12, align 8
  %113 = getelementptr inbounds %struct.in_addr, %struct.in_addr* %16, i32 0, i32 0
  %114 = load i8, i8* %113, align 1
  %115 = call i8* @inet_ntoa(i8 %114)
  %116 = ptrtoint i8* %115 to i64
  %117 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %112, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 %116)
  %118 = load i8*, i8** %12, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = load i8*, i8** %12, align 8
  %121 = sext i32 %119 to i64
  %122 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8* %122, i8** %12, align 8
  br label %123

123:                                              ; preds = %108
  %124 = load i32, i32* %11, align 4
  %125 = sub i32 %124, 4
  store i32 %125, i32* %11, align 4
  %126 = load i64*, i64** %4, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 4
  store i64* %127, i64** %4, align 8
  br label %92

128:                                              ; preds = %99
  br label %306

129:                                              ; preds = %73
  br label %130

130:                                              ; preds = %149, %129
  %131 = load i32, i32* %11, align 4
  %132 = icmp ugt i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i8*, i8** %12, align 8
  %135 = load i8*, i8** %13, align 8
  %136 = icmp ult i8* %134, %135
  br label %137

137:                                              ; preds = %133, %130
  %138 = phi i1 [ false, %130 ], [ %136, %133 ]
  br i1 %138, label %139, label %154

139:                                              ; preds = %137
  %140 = load i8*, i8** %12, align 8
  %141 = load i64*, i64** %4, align 8
  %142 = load i64, i64* %141, align 8
  %143 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %140, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i64 %142)
  %144 = load i8*, i8** %12, align 8
  %145 = call i32 @strlen(i8* %144)
  %146 = load i8*, i8** %12, align 8
  %147 = sext i32 %145 to i64
  %148 = getelementptr inbounds i8, i8* %146, i64 %147
  store i8* %148, i8** %12, align 8
  br label %149

149:                                              ; preds = %139
  %150 = load i32, i32* %11, align 4
  %151 = sub i32 %150, 1
  store i32 %151, i32* %11, align 4
  %152 = load i64*, i64** %4, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  store i64* %153, i64** %4, align 8
  br label %130

154:                                              ; preds = %137
  br label %306

155:                                              ; preds = %73
  %156 = load i64*, i64** %4, align 8
  %157 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %158 = load i32, i32* %11, align 4
  %159 = call i32 @bcopy(i64* %156, i8* %157, i32 %158)
  %160 = load i32, i32* %11, align 4
  %161 = zext i32 %160 to i64
  %162 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %161
  store i8 0, i8* %162, align 1
  br label %306

163:                                              ; preds = %73, %73, %73
  br label %164

164:                                              ; preds = %236, %163
  %165 = load i32, i32* %11, align 4
  %166 = icmp ugt i32 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %164
  %168 = load i8*, i8** %12, align 8
  %169 = load i8*, i8** %13, align 8
  %170 = icmp ult i8* %168, %169
  br label %171

171:                                              ; preds = %167, %164
  %172 = phi i1 [ false, %164 ], [ %170, %167 ]
  br i1 %172, label %173, label %248

173:                                              ; preds = %171
  %174 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %175 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 136
  br i1 %177, label %178, label %198

178:                                              ; preds = %173
  %179 = load i64*, i64** %4, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 0
  %181 = load i64, i64* %180, align 8
  %182 = shl i64 %181, 24
  %183 = load i64*, i64** %4, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 1
  %185 = load i64, i64* %184, align 8
  %186 = shl i64 %185, 16
  %187 = add nsw i64 %182, %186
  %188 = load i64*, i64** %4, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 2
  %190 = load i64, i64* %189, align 8
  %191 = shl i64 %190, 8
  %192 = add nsw i64 %187, %191
  %193 = load i64*, i64** %4, align 8
  %194 = getelementptr inbounds i64, i64* %193, i64 3
  %195 = load i64, i64* %194, align 8
  %196 = add nsw i64 %192, %195
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %17, align 4
  br label %219

198:                                              ; preds = %173
  %199 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %200 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 8
  %202 = icmp eq i32 %201, 137
  br i1 %202, label %203, label %213

203:                                              ; preds = %198
  %204 = load i64*, i64** %4, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 0
  %206 = load i64, i64* %205, align 8
  %207 = shl i64 %206, 8
  %208 = load i64*, i64** %4, align 8
  %209 = getelementptr inbounds i64, i64* %208, i64 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %207, %210
  %212 = trunc i64 %211 to i32
  store i32 %212, i32* %17, align 4
  br label %218

213:                                              ; preds = %198
  %214 = load i64*, i64** %4, align 8
  %215 = getelementptr inbounds i64, i64* %214, i64 0
  %216 = load i64, i64* %215, align 8
  %217 = trunc i64 %216 to i32
  store i32 %217, i32* %17, align 4
  br label %218

218:                                              ; preds = %213, %203
  br label %219

219:                                              ; preds = %218, %178
  %220 = load i8*, i8** %12, align 8
  %221 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %222 = icmp ne i8* %220, %221
  br i1 %222, label %223, label %226

223:                                              ; preds = %219
  %224 = load i8*, i8** %12, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %12, align 8
  store i8 44, i8* %224, align 1
  br label %226

226:                                              ; preds = %223, %219
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %227, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i64 %229)
  %231 = load i8*, i8** %12, align 8
  %232 = call i32 @strlen(i8* %231)
  %233 = load i8*, i8** %12, align 8
  %234 = sext i32 %232 to i64
  %235 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8* %235, i8** %12, align 8
  br label %236

236:                                              ; preds = %226
  %237 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %238 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* %11, align 4
  %241 = sub i32 %240, %239
  store i32 %241, i32* %11, align 4
  %242 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %243 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 8
  %245 = load i64*, i64** %4, align 8
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i64, i64* %245, i64 %246
  store i64* %247, i64** %4, align 8
  br label %164

248:                                              ; preds = %171
  br label %306

249:                                              ; preds = %73, %73
  %250 = load i64*, i64** %4, align 8
  %251 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %252 = load i32, i32* %11, align 4
  %253 = call i32 @bcopy(i64* %250, i8* %251, i32 %252)
  %254 = load i32, i32* %11, align 4
  %255 = zext i32 %254 to i64
  %256 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 %255
  store i8 0, i8* %256, align 1
  %257 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8* %257, i8** %13, align 8
  br label %258

258:                                              ; preds = %302, %249
  %259 = load i8*, i8** %13, align 8
  %260 = icmp ne i8* %259, null
  br i1 %260, label %261, label %304

261:                                              ; preds = %258
  store i8* null, i8** %18, align 8
  br label %262

262:                                              ; preds = %274, %261
  %263 = load i8*, i8** %13, align 8
  %264 = load i8, i8* %263, align 1
  %265 = sext i8 %264 to i32
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %272

267:                                              ; preds = %262
  %268 = load i8*, i8** %13, align 8
  %269 = load i8, i8* %268, align 1
  %270 = call i8* @strchr(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8 signext %269)
  %271 = icmp ne i8* %270, null
  br label %272

272:                                              ; preds = %267, %262
  %273 = phi i1 [ false, %262 ], [ %271, %267 ]
  br i1 %273, label %274, label %277

274:                                              ; preds = %272
  %275 = load i8*, i8** %13, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %13, align 8
  br label %262

277:                                              ; preds = %272
  %278 = load i8*, i8** %13, align 8
  %279 = call i8* @strchr(i8* %278, i8 signext 61)
  store i8* %279, i8** %12, align 8
  %280 = load i8*, i8** %12, align 8
  %281 = icmp ne i8* %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %277
  br label %304

283:                                              ; preds = %277
  %284 = load i8*, i8** %12, align 8
  %285 = getelementptr inbounds i8, i8* %284, i32 1
  store i8* %285, i8** %12, align 8
  store i8 0, i8* %284, align 1
  %286 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %287 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %286, i32 0, i32 1
  %288 = load i32, i32* %287, align 8
  %289 = icmp eq i32 %288, 133
  br i1 %289, label %290, label %297

290:                                              ; preds = %283
  %291 = load i8*, i8** %12, align 8
  %292 = call i8* @strchr(i8* %291, i8 signext 59)
  store i8* %292, i8** %18, align 8
  %293 = icmp ne i8* %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %290
  %295 = load i8*, i8** %18, align 8
  %296 = getelementptr inbounds i8, i8* %295, i32 1
  store i8* %296, i8** %18, align 8
  store i8 0, i8* %295, align 1
  br label %297

297:                                              ; preds = %294, %290, %283
  %298 = load i8*, i8** %13, align 8
  %299 = load i8*, i8** %12, align 8
  %300 = call i32 @setenv(i8* %298, i8* %299, i32 1)
  %301 = load i8*, i8** %18, align 8
  store i8* %301, i8** %12, align 8
  br label %302

302:                                              ; preds = %297
  %303 = load i8*, i8** %12, align 8
  store i8* %303, i8** %13, align 8
  br label %258

304:                                              ; preds = %282, %258
  %305 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  store i8 0, i8* %305, align 16
  br label %306

306:                                              ; preds = %304, %73, %248, %155, %154, %128, %84, %83
  %307 = load i8*, i8** %10, align 8
  %308 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %309 = ptrtoint i8* %307 to i64
  %310 = ptrtoint i8* %308 to i64
  %311 = sub i64 %309, %310
  %312 = icmp ult i64 %311, 507
  br i1 %312, label %313, label %329

313:                                              ; preds = %306
  %314 = load i8*, i8** %10, align 8
  %315 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %316 = icmp ne i8* %314, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %313
  %318 = load i8*, i8** %10, align 8
  %319 = getelementptr inbounds i8, i8* %318, i32 1
  store i8* %319, i8** %10, align 8
  store i8 44, i8* %318, align 1
  br label %320

320:                                              ; preds = %317, %313
  %321 = load i8*, i8** %10, align 8
  %322 = load i64, i64* %8, align 8
  %323 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %321, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i64 %322)
  %324 = load i8*, i8** %10, align 8
  %325 = call i32 @strlen(i8* %324)
  %326 = load i8*, i8** %10, align 8
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i8, i8* %326, i64 %327
  store i8* %328, i8** %10, align 8
  br label %329

329:                                              ; preds = %320, %306
  %330 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %331 = load i8, i8* %330, align 16
  %332 = icmp ne i8 %331, 0
  br i1 %332, label %333, label %365

333:                                              ; preds = %329
  %334 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %335 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %334, i32 0, i32 0
  %336 = load i64, i64* %335, align 8
  %337 = icmp eq i64 %336, 0
  br i1 %337, label %338, label %350

338:                                              ; preds = %333
  %339 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %340 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %341 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %340, i32 0, i32 2
  %342 = load i8*, i8** %341, align 8
  %343 = load %struct.dhcp_opt*, %struct.dhcp_opt** %6, align 8
  %344 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %343, i64 0
  %345 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %344, i32 0, i32 2
  %346 = load i8*, i8** %345, align 8
  %347 = ptrtoint i8* %346 to i64
  %348 = load i64, i64* %8, align 8
  %349 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %339, i8* %342, i64 %347, i64 %348)
  br label %361

350:                                              ; preds = %333
  %351 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %352 = load %struct.dhcp_opt*, %struct.dhcp_opt** %6, align 8
  %353 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %352, i64 0
  %354 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %353, i32 0, i32 2
  %355 = load i8*, i8** %354, align 8
  %356 = ptrtoint i8* %355 to i64
  %357 = load %struct.dhcp_opt*, %struct.dhcp_opt** %15, align 8
  %358 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %357, i32 0, i32 2
  %359 = load i8*, i8** %358, align 8
  %360 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %351, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %356, i8* %359)
  br label %361

361:                                              ; preds = %350, %338
  %362 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %363 = getelementptr inbounds [256 x i8], [256 x i8]* %14, i64 0, i64 0
  %364 = call i32 @setenv(i8* %362, i8* %363, i32 0)
  br label %365

365:                                              ; preds = %361, %329
  br label %28

366:                                              ; preds = %48, %28
  %367 = load i8*, i8** %10, align 8
  %368 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %369 = icmp ne i8* %367, %368
  br i1 %369, label %370, label %381

370:                                              ; preds = %366
  %371 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %372 = load %struct.dhcp_opt*, %struct.dhcp_opt** %6, align 8
  %373 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %372, i64 0
  %374 = getelementptr inbounds %struct.dhcp_opt, %struct.dhcp_opt* %373, i32 0, i32 2
  %375 = load i8*, i8** %374, align 8
  %376 = ptrtoint i8* %375 to i64
  %377 = call i32 (i8*, i8*, i64, ...) @sprintf(i8* %371, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i64 %376)
  %378 = getelementptr inbounds [128 x i8], [128 x i8]* %20, i64 0, i64 0
  %379 = getelementptr inbounds [512 x i8], [512 x i8]* %9, i64 0, i64 0
  %380 = call i32 @setenv(i8* %378, i8* %379, i32 1)
  br label %381

381:                                              ; preds = %370, %366
  ret void
}

declare dso_local i32 @bcopy(i64*, i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i64, ...) #1

declare dso_local i8* @inet_ntoa(i8) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @setenv(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
