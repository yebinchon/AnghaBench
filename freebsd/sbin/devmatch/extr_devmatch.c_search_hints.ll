; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_search_hints.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/devmatch/extr_devmatch.c_search_hints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hints = common dso_local global i8* null, align 8
@verbose_flag = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Searching bus %s dev %s for pnpinfo %s\0A\00", align 1
@hints_end = common dso_local global i8* null, align 8
@dump_flag = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Version: if %s.%d kmod %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Module %s in %s\0A\00", align 1
@unbound_flag = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [7 x i8] c"kernel\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"PNP info for bus %s format %s %d entries (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"usb\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"Treating usb as uhub -- bug in source table still?\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"uhub\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"Skipped because table for bus %s, looking for %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"---------- Entry %d ----------\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"%#x:\00", align 1
@.str.12 = private unnamed_addr constant [40 x i8] c"Matching %s (%c) table=%#x tomatch=%#x\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"'%s':\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [24 x i8] c"Unknown field type %c\0A:\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@all_flag = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [7 x i8] c"%s: %s\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"unattached\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"Matches --- %s ---\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"Unknown Type %d len %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"------------------------- \00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"%s on %s pnpinfo %s\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c" -------------------------\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*, i8*)* @search_hints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @search_hints(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i8* null, i8** %20, align 8
  %23 = load i8*, i8** @hints, align 8
  store i8* %23, i8** %19, align 8
  %24 = call i32 @getint(i8** %19)
  store i32 0, i32* %17, align 4
  %25 = load i64, i64* @verbose_flag, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %3
  %28 = load i8*, i8** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %29, i8* %30)
  br label %32

32:                                               ; preds = %27, %3
  br label %33

33:                                               ; preds = %383, %32
  %34 = load i8*, i8** %19, align 8
  %35 = load i8*, i8** @hints_end, align 8
  %36 = icmp ult i8* %34, %35
  br i1 %36, label %37, label %391

37:                                               ; preds = %33
  %38 = call i32 @getint(i8** %19)
  store i32 %38, i32* %10, align 4
  %39 = call i32 @getint(i8** %19)
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** %19, align 8
  store i8* %40, i8** %18, align 8
  %41 = load i32, i32* %9, align 4
  switch i32 %41, label %375 [
    i32 128, label %42
    i32 130, label %59
    i32 129, label %82
  ]

42:                                               ; preds = %37
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %44 = call i32 @getstr(i8** %18, i8* %43)
  %45 = call i32 @getint(i8** %18)
  store i32 %45, i32* %9, align 4
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %47 = call i32 @getstr(i8** %18, i8* %46)
  %48 = load i32, i32* @dump_flag, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load i64, i64* @verbose_flag, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50, %42
  %54 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %55 = load i32, i32* %9, align 4
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %57 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %54, i32 %55, i8* %56)
  br label %58

58:                                               ; preds = %53, %50
  br label %383

59:                                               ; preds = %37
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %61 = call i32 @getstr(i8** %18, i8* %60)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %63 = call i32 @getstr(i8** %18, i8* %62)
  %64 = load i8*, i8** %20, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %66, label %69

66:                                               ; preds = %59
  %67 = load i8*, i8** %20, align 8
  %68 = call i32 @free(i8* %67)
  br label %69

69:                                               ; preds = %66, %59
  %70 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %71 = call i8* @strdup(i8* %70)
  store i8* %71, i8** %20, align 8
  %72 = load i32, i32* @dump_flag, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = load i64, i64* @verbose_flag, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %74, %69
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %79 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %80 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i8* %78, i8* %79)
  br label %81

81:                                               ; preds = %77, %74
  br label %383

82:                                               ; preds = %37
  %83 = load i32, i32* @dump_flag, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %82
  %86 = load i64, i64* @unbound_flag, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %96, label %88

88:                                               ; preds = %85
  %89 = load i8*, i8** %20, align 8
  %90 = icmp ne i8* %89, null
  br i1 %90, label %91, label %96

91:                                               ; preds = %88
  %92 = load i8*, i8** %20, align 8
  %93 = call i32 @strcmp(i8* %92, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %383

96:                                               ; preds = %91, %88, %85, %82
  %97 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %98 = call i32 @getstr(i8** %18, i8* %97)
  %99 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %100 = call i32 @getstr(i8** %18, i8* %99)
  %101 = call i32 @getint(i8** %18)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* @dump_flag, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = load i64, i64* @verbose_flag, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104, %96
  %108 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %109 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %110 = load i32, i32* %11, align 4
  %111 = load i8*, i8** %20, align 8
  %112 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %108, i8* %109, i32 %110, i8* %111)
  br label %113

113:                                              ; preds = %107, %104
  %114 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %115 = call i32 @strcmp(i8* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0))
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %113
  %118 = load i64, i64* @verbose_flag, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  br label %122

122:                                              ; preds = %120, %117
  %123 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %124 = call i32 @strcpy(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %122, %113
  %126 = load i8*, i8** %4, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %125
  %129 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %130 = load i8*, i8** %4, align 8
  %131 = call i32 @strcmp(i8* %129, i8* %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %128
  %134 = load i64, i64* @verbose_flag, align 8
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %133
  %137 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %138 = load i8*, i8** %4, align 8
  %139 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %137, i8* %138)
  br label %140

140:                                              ; preds = %136, %133
  br label %383

141:                                              ; preds = %128, %125
  store i32 0, i32* %12, align 4
  br label %142

142:                                              ; preds = %371, %141
  %143 = load i32, i32* %12, align 4
  %144 = load i32, i32* %11, align 4
  %145 = icmp slt i32 %143, %144
  br i1 %145, label %146, label %374

146:                                              ; preds = %142
  %147 = load i64, i64* @verbose_flag, align 8
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %146
  %150 = load i32, i32* %12, align 4
  %151 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0), i32 %150)
  br label %152

152:                                              ; preds = %149, %146
  %153 = load i32, i32* @dump_flag, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %152
  %156 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0))
  br label %157

157:                                              ; preds = %155, %152
  %158 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  store i8* %158, i8** %21, align 8
  store i32 0, i32* %13, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  br label %159

159:                                              ; preds = %328, %157
  %160 = load i8*, i8** %21, align 8
  %161 = load i8, i8* %160, align 1
  %162 = sext i8 %161 to i32
  switch i32 %162, label %304 [
    i32 73, label %163
    i32 74, label %163
    i32 71, label %163
    i32 76, label %163
    i32 77, label %163
    i32 68, label %232
    i32 90, label %232
    i32 84, label %259
  ]

163:                                              ; preds = %159, %159, %159, %159, %159
  %164 = call i32 @getint(i8** %18)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* @dump_flag, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %163
  %168 = load i32, i32* %9, align 4
  %169 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %168)
  br label %309

170:                                              ; preds = %163
  %171 = load i32, i32* %15, align 4
  %172 = icmp sge i32 %171, 0
  br i1 %172, label %173, label %180

173:                                              ; preds = %170
  %174 = load i32, i32* %15, align 4
  %175 = shl i32 1, %174
  %176 = load i32, i32* %14, align 4
  %177 = and i32 %175, %176
  %178 = icmp eq i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %309

180:                                              ; preds = %173, %170
  %181 = load i8*, i8** %21, align 8
  %182 = getelementptr inbounds i8, i8* %181, i64 2
  %183 = load i8*, i8** %6, align 8
  %184 = call i32 @pnpval_as_int(i8* %182, i8* %183)
  store i32 %184, i32* %16, align 4
  %185 = load i64, i64* @verbose_flag, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = load i8*, i8** %21, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  %190 = load i8*, i8** %21, align 8
  %191 = load i8, i8* %190, align 1
  %192 = sext i8 %191 to i32
  %193 = load i32, i32* %16, align 4
  %194 = load i32, i32* %9, align 4
  %195 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.12, i64 0, i64 0), i8* %189, i32 %192, i32 %193, i32 %194)
  br label %196

196:                                              ; preds = %187, %180
  %197 = load i8*, i8** %21, align 8
  %198 = load i8, i8* %197, align 1
  %199 = sext i8 %198 to i32
  switch i32 %199, label %231 [
    i32 74, label %200
    i32 73, label %205
    i32 71, label %213
    i32 76, label %221
    i32 77, label %229
  ]

200:                                              ; preds = %196
  %201 = load i32, i32* %9, align 4
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %203, label %204

203:                                              ; preds = %200
  br label %231

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %196, %204
  %206 = load i32, i32* %16, align 4
  %207 = load i32, i32* %9, align 4
  %208 = icmp ne i32 %206, %207
  br i1 %208, label %209, label %212

209:                                              ; preds = %205
  %210 = load i32, i32* %13, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %13, align 4
  br label %212

212:                                              ; preds = %209, %205
  br label %231

213:                                              ; preds = %196
  %214 = load i32, i32* %16, align 4
  %215 = load i32, i32* %9, align 4
  %216 = icmp slt i32 %214, %215
  br i1 %216, label %217, label %220

217:                                              ; preds = %213
  %218 = load i32, i32* %13, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %13, align 4
  br label %220

220:                                              ; preds = %217, %213
  br label %231

221:                                              ; preds = %196
  %222 = load i32, i32* %16, align 4
  %223 = load i32, i32* %9, align 4
  %224 = icmp sgt i32 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %221
  %226 = load i32, i32* %13, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %13, align 4
  br label %228

228:                                              ; preds = %225, %221
  br label %231

229:                                              ; preds = %196
  %230 = load i32, i32* %9, align 4
  store i32 %230, i32* %14, align 4
  br label %231

231:                                              ; preds = %196, %229, %228, %220, %212, %203
  br label %309

232:                                              ; preds = %159, %159
  %233 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %234 = call i32 @getstr(i8** %18, i8* %233)
  %235 = load i32, i32* @dump_flag, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %240

237:                                              ; preds = %232
  %238 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %239 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i8* %238)
  br label %309

240:                                              ; preds = %232
  %241 = load i8*, i8** %21, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %243, 68
  br i1 %244, label %245, label %246

245:                                              ; preds = %240
  br label %309

246:                                              ; preds = %240
  %247 = load i8*, i8** %21, align 8
  %248 = getelementptr inbounds i8, i8* %247, i64 2
  %249 = load i8*, i8** %6, align 8
  %250 = call i8* @pnpval_as_str(i8* %248, i8* %249)
  store i8* %250, i8** %22, align 8
  %251 = load i8*, i8** %22, align 8
  %252 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %253 = call i32 @strcmp(i8* %251, i8* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %258

255:                                              ; preds = %246
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %258

258:                                              ; preds = %255, %246
  br label %309

259:                                              ; preds = %159
  %260 = load i32, i32* @dump_flag, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %259
  br label %309

263:                                              ; preds = %259
  %264 = load i8*, i8** %21, align 8
  %265 = load i8*, i8** %21, align 8
  %266 = call i32 @strlen(i8* %265)
  %267 = sub nsw i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i8, i8* %264, i64 %268
  %270 = load i8, i8* %269, align 1
  %271 = sext i8 %270 to i32
  %272 = icmp eq i32 %271, 59
  br i1 %272, label %273, label %280

273:                                              ; preds = %263
  %274 = load i8*, i8** %21, align 8
  %275 = load i8*, i8** %21, align 8
  %276 = call i32 @strlen(i8* %275)
  %277 = sub nsw i32 %276, 1
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i8, i8* %274, i64 %278
  store i8 0, i8* %279, align 1
  br label %280

280:                                              ; preds = %273, %263
  %281 = load i8*, i8** %6, align 8
  %282 = load i8*, i8** %21, align 8
  %283 = getelementptr inbounds i8, i8* %282, i64 2
  %284 = call i8* @strstr(i8* %281, i8* %283)
  store i8* %284, i8** %22, align 8
  %285 = icmp eq i8* %284, null
  br i1 %285, label %286, label %289

286:                                              ; preds = %280
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  br label %303

289:                                              ; preds = %280
  %290 = load i8*, i8** %22, align 8
  %291 = load i8*, i8** %6, align 8
  %292 = icmp ugt i8* %290, %291
  br i1 %292, label %293, label %302

293:                                              ; preds = %289
  %294 = load i8*, i8** %22, align 8
  %295 = getelementptr inbounds i8, i8* %294, i64 -1
  %296 = load i8, i8* %295, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp ne i32 %297, 32
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load i32, i32* %13, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %13, align 4
  br label %302

302:                                              ; preds = %299, %293, %289
  br label %303

303:                                              ; preds = %302, %286
  br label %309

304:                                              ; preds = %159
  %305 = load i32, i32* @stderr, align 4
  %306 = load i8*, i8** %21, align 8
  %307 = load i8, i8* %306, align 1
  %308 = call i32 @fprintf(i32 %305, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.14, i64 0, i64 0), i8 signext %307)
  br label %309

309:                                              ; preds = %304, %303, %262, %258, %245, %237, %231, %179, %167
  %310 = load i32, i32* %15, align 4
  %311 = add nsw i32 %310, 1
  store i32 %311, i32* %15, align 4
  %312 = load i8*, i8** %21, align 8
  %313 = call i8* @strchr(i8* %312, i8 signext 59)
  store i8* %313, i8** %21, align 8
  %314 = load i8*, i8** %21, align 8
  %315 = icmp ne i8* %314, null
  br i1 %315, label %316, label %319

316:                                              ; preds = %309
  %317 = load i8*, i8** %21, align 8
  %318 = getelementptr inbounds i8, i8* %317, i32 1
  store i8* %318, i8** %21, align 8
  br label %319

319:                                              ; preds = %316, %309
  br label %320

320:                                              ; preds = %319
  %321 = load i8*, i8** %21, align 8
  %322 = icmp ne i8* %321, null
  br i1 %322, label %323, label %328

323:                                              ; preds = %320
  %324 = load i8*, i8** %21, align 8
  %325 = load i8, i8* %324, align 1
  %326 = sext i8 %325 to i32
  %327 = icmp ne i32 %326, 0
  br label %328

328:                                              ; preds = %323, %320
  %329 = phi i1 [ false, %320 ], [ %327, %323 ]
  br i1 %329, label %159, label %330

330:                                              ; preds = %328
  %331 = load i32, i32* @dump_flag, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %335

333:                                              ; preds = %330
  %334 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %370

335:                                              ; preds = %330
  %336 = load i32, i32* %13, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %369, label %338

338:                                              ; preds = %335
  %339 = load i64, i64* @unbound_flag, align 8
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %366, label %341

341:                                              ; preds = %338
  %342 = load i32, i32* @all_flag, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %356

344:                                              ; preds = %341
  %345 = load i8*, i8** %5, align 8
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %344
  %350 = load i8*, i8** %5, align 8
  br label %352

351:                                              ; preds = %344
  br label %352

352:                                              ; preds = %351, %349
  %353 = phi i8* [ %350, %349 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %351 ]
  %354 = load i8*, i8** %20, align 8
  %355 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), i8* %353, i8* %354)
  br label %359

356:                                              ; preds = %341
  %357 = load i8*, i8** %20, align 8
  %358 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i64 0, i64 0), i8* %357)
  br label %359

359:                                              ; preds = %356, %352
  %360 = load i64, i64* @verbose_flag, align 8
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %362, label %365

362:                                              ; preds = %359
  %363 = load i8*, i8** %20, align 8
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0), i8* %363)
  br label %365

365:                                              ; preds = %362, %359
  br label %366

366:                                              ; preds = %365, %338
  %367 = load i32, i32* %17, align 4
  %368 = add nsw i32 %367, 1
  store i32 %368, i32* %17, align 4
  br label %369

369:                                              ; preds = %366, %335
  br label %370

370:                                              ; preds = %369, %333
  br label %371

371:                                              ; preds = %370
  %372 = load i32, i32* %12, align 4
  %373 = add nsw i32 %372, 1
  store i32 %373, i32* %12, align 4
  br label %142

374:                                              ; preds = %142
  br label %383

375:                                              ; preds = %37
  %376 = load i32, i32* @dump_flag, align 4
  %377 = icmp ne i32 %376, 0
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = load i32, i32* %9, align 4
  %380 = load i32, i32* %10, align 4
  %381 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i32 %379, i32 %380)
  br label %382

382:                                              ; preds = %378, %375
  br label %383

383:                                              ; preds = %382, %374, %140, %95, %81, %58
  %384 = load i32, i32* %10, align 4
  %385 = sext i32 %384 to i64
  %386 = sub i64 %385, 4
  %387 = load i8*, i8** %19, align 8
  %388 = ptrtoint i8* %387 to i64
  %389 = add i64 %386, %388
  %390 = inttoptr i64 %389 to i8*
  store i8* %390, i8** %19, align 8
  br label %33

391:                                              ; preds = %33
  %392 = load i64, i64* @unbound_flag, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %426

394:                                              ; preds = %391
  %395 = load i32, i32* %17, align 4
  %396 = icmp eq i32 %395, 0
  br i1 %396, label %397, label %426

397:                                              ; preds = %394
  %398 = load i8*, i8** %6, align 8
  %399 = load i8, i8* %398, align 1
  %400 = sext i8 %399 to i32
  %401 = icmp ne i32 %400, 0
  br i1 %401, label %402, label %426

402:                                              ; preds = %397
  %403 = load i64, i64* @verbose_flag, align 8
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %407

405:                                              ; preds = %402
  %406 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.21, i64 0, i64 0))
  br label %407

407:                                              ; preds = %405, %402
  %408 = load i8*, i8** %5, align 8
  %409 = load i8, i8* %408, align 1
  %410 = sext i8 %409 to i32
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %414

412:                                              ; preds = %407
  %413 = load i8*, i8** %5, align 8
  br label %415

414:                                              ; preds = %407
  br label %415

415:                                              ; preds = %414, %412
  %416 = phi i8* [ %413, %412 ], [ getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), %414 ]
  %417 = load i8*, i8** %4, align 8
  %418 = load i8*, i8** %6, align 8
  %419 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0), i8* %416, i8* %417, i8* %418)
  %420 = load i64, i64* @verbose_flag, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %424

422:                                              ; preds = %415
  %423 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0))
  br label %424

424:                                              ; preds = %422, %415
  %425 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i64 0, i64 0))
  br label %426

426:                                              ; preds = %424, %397, %394, %391
  %427 = load i8*, i8** %20, align 8
  %428 = call i32 @free(i8* %427)
  ret void
}

declare dso_local i32 @getint(i8**) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @getstr(i8**, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @pnpval_as_int(i8*, i8*) #1

declare dso_local i8* @pnpval_as_str(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
