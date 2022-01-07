; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/libnv/extr_nvlist.c_nvlist_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"%*s%s (%s):\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" null\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"TRUE\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"FALSE\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c" %ju (%jd) (0x%jx)\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c" [%s]\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c" %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c" %zu \00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"%02hhx\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c" [ \00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c" ]\0A\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"\22%s\22\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"%ju (%jd) (0x%jx)\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [6 x i8] c" %zu\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%*s,\0A\00", align 1
@.str.22 = private unnamed_addr constant [18 x i8] c"Unknown type: %d.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nvlist_dump(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i8**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %9, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i64 @nvlist_dump_error_check(i32* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %403

34:                                               ; preds = %2
  %35 = load i32*, i32** %3, align 8
  %36 = call i32* @nvlist_first_nvpair(i32* %35)
  store i32* %36, i32** %6, align 8
  br label %37

37:                                               ; preds = %402, %342, %94, %34
  %38 = load i32*, i32** %6, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %403

40:                                               ; preds = %37
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 %42, 4
  %44 = load i32*, i32** %6, align 8
  %45 = call i32 @nvpair_name(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @nvpair_type(i32* %46)
  %48 = call i32 @nvpair_type_string(i32 %47)
  %49 = call i32 (i32, i8*, ...) @dprintf(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %43, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %48)
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @nvpair_type(i32* %50)
  switch i32 %51, label %348 [
    i32 134, label %52
    i32 138, label %55
    i32 133, label %63
    i32 129, label %72
    i32 131, label %77
    i32 136, label %100
    i32 139, label %105
    i32 137, label %131
    i32 128, label %167
    i32 132, label %211
    i32 135, label %254
    i32 130, label %287
  ]

52:                                               ; preds = %40
  %53 = load i32, i32* %4, align 4
  %54 = call i32 (i32, i8*, ...) @dprintf(i32 %53, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  br label %352

55:                                               ; preds = %40
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = call i32 @nvpair_get_bool(i32* %57)
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %62 = call i32 (i32, i8*, ...) @dprintf(i32 %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %61)
  br label %352

63:                                               ; preds = %40
  %64 = load i32, i32* %4, align 4
  %65 = load i32*, i32** %6, align 8
  %66 = call i32 @nvpair_get_number(i32* %65)
  %67 = load i32*, i32** %6, align 8
  %68 = call i32 @nvpair_get_number(i32* %67)
  %69 = load i32*, i32** %6, align 8
  %70 = call i32 @nvpair_get_number(i32* %69)
  %71 = call i32 (i32, i8*, ...) @dprintf(i32 %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %66, i32 %68, i32 %70)
  br label %352

72:                                               ; preds = %40
  %73 = load i32, i32* %4, align 4
  %74 = load i32*, i32** %6, align 8
  %75 = call i32 @nvpair_get_string(i32* %74)
  %76 = call i32 (i32, i8*, ...) @dprintf(i32 %73, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 %75)
  br label %352

77:                                               ; preds = %40
  %78 = load i32, i32* %4, align 4
  %79 = call i32 (i32, i8*, ...) @dprintf(i32 %78, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %80 = load i32*, i32** %6, align 8
  %81 = call i32* @nvpair_get_nvlist(i32* %80)
  store i32* %81, i32** %5, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  %86 = call i64 @nvlist_dump_error_check(i32* %82, i32 %83, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %352

89:                                               ; preds = %77
  %90 = load i32*, i32** %5, align 8
  %91 = call i32* @nvlist_first_nvpair(i32* %90)
  store i32* %91, i32** %7, align 8
  %92 = load i32*, i32** %7, align 8
  %93 = icmp ne i32* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %89
  %95 = load i32*, i32** %5, align 8
  store i32* %95, i32** %3, align 8
  %96 = load i32*, i32** %7, align 8
  store i32* %96, i32** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %9, align 4
  br label %37

99:                                               ; preds = %89
  br label %352

100:                                              ; preds = %40
  %101 = load i32, i32* %4, align 4
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @nvpair_get_descriptor(i32* %102)
  %104 = call i32 (i32, i8*, ...) @dprintf(i32 %101, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %103)
  br label %352

105:                                              ; preds = %40
  %106 = load i32*, i32** %6, align 8
  %107 = call i8* @nvpair_get_binary(i32* %106, i64* %12)
  store i8* %107, i8** %10, align 8
  %108 = load i32, i32* %4, align 4
  %109 = load i64, i64* %12, align 8
  %110 = call i32 (i32, i8*, ...) @dprintf(i32 %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i64 0, i64 0), i64 %109)
  store i32 0, i32* %11, align 4
  br label %111

111:                                              ; preds = %125, %105
  %112 = load i32, i32* %11, align 4
  %113 = zext i32 %112 to i64
  %114 = load i64, i64* %12, align 8
  %115 = icmp ult i64 %113, %114
  br i1 %115, label %116, label %128

116:                                              ; preds = %111
  %117 = load i32, i32* %4, align 4
  %118 = load i8*, i8** %10, align 8
  %119 = load i32, i32* %11, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %118, i64 %120
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = call i32 (i32, i8*, ...) @dprintf(i32 %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i64 0, i64 0), i32 %123)
  br label %125

125:                                              ; preds = %116
  %126 = load i32, i32* %11, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %111

128:                                              ; preds = %111
  %129 = load i32, i32* %4, align 4
  %130 = call i32 (i32, i8*, ...) @dprintf(i32 %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  br label %352

131:                                              ; preds = %40
  %132 = load i32*, i32** %6, align 8
  %133 = call i32* @nvpair_get_bool_array(i32* %132, i64* %15)
  store i32* %133, i32** %13, align 8
  %134 = load i32, i32* %4, align 4
  %135 = call i32 (i32, i8*, ...) @dprintf(i32 %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %136

136:                                              ; preds = %161, %131
  %137 = load i32, i32* %14, align 4
  %138 = zext i32 %137 to i64
  %139 = load i64, i64* %15, align 8
  %140 = icmp ult i64 %138, %139
  br i1 %140, label %141, label %164

141:                                              ; preds = %136
  %142 = load i32, i32* %4, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %14, align 4
  %145 = zext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = icmp ne i32 %147, 0
  %149 = zext i1 %148 to i64
  %150 = select i1 %148, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)
  %151 = call i32 (i32, i8*, ...) @dprintf(i32 %142, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i64 0, i64 0), i8* %150)
  %152 = load i32, i32* %14, align 4
  %153 = zext i32 %152 to i64
  %154 = load i64, i64* %15, align 8
  %155 = sub i64 %154, 1
  %156 = icmp ne i64 %153, %155
  br i1 %156, label %157, label %160

157:                                              ; preds = %141
  %158 = load i32, i32* %4, align 4
  %159 = call i32 (i32, i8*, ...) @dprintf(i32 %158, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %160

160:                                              ; preds = %157, %141
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %14, align 4
  %163 = add i32 %162, 1
  store i32 %163, i32* %14, align 4
  br label %136

164:                                              ; preds = %136
  %165 = load i32, i32* %4, align 4
  %166 = call i32 (i32, i8*, ...) @dprintf(i32 %165, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %352

167:                                              ; preds = %40
  %168 = load i32*, i32** %6, align 8
  %169 = call i8** @nvpair_get_string_array(i32* %168, i64* %18)
  store i8** %169, i8*** %16, align 8
  %170 = load i32, i32* %4, align 4
  %171 = call i32 (i32, i8*, ...) @dprintf(i32 %170, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %172

172:                                              ; preds = %205, %167
  %173 = load i32, i32* %17, align 4
  %174 = zext i32 %173 to i64
  %175 = load i64, i64* %18, align 8
  %176 = icmp ult i64 %174, %175
  br i1 %176, label %177, label %208

177:                                              ; preds = %172
  %178 = load i8**, i8*** %16, align 8
  %179 = load i32, i32* %17, align 4
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds i8*, i8** %178, i64 %180
  %182 = load i8*, i8** %181, align 8
  %183 = icmp eq i8* %182, null
  br i1 %183, label %184, label %187

184:                                              ; preds = %177
  %185 = load i32, i32* %4, align 4
  %186 = call i32 (i32, i8*, ...) @dprintf(i32 %185, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i64 0, i64 0))
  br label %195

187:                                              ; preds = %177
  %188 = load i32, i32* %4, align 4
  %189 = load i8**, i8*** %16, align 8
  %190 = load i32, i32* %17, align 4
  %191 = zext i32 %190 to i64
  %192 = getelementptr inbounds i8*, i8** %189, i64 %191
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 (i32, i8*, ...) @dprintf(i32 %188, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i64 0, i64 0), i8* %193)
  br label %195

195:                                              ; preds = %187, %184
  %196 = load i32, i32* %17, align 4
  %197 = zext i32 %196 to i64
  %198 = load i64, i64* %18, align 8
  %199 = sub i64 %198, 1
  %200 = icmp ne i64 %197, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %195
  %202 = load i32, i32* %4, align 4
  %203 = call i32 (i32, i8*, ...) @dprintf(i32 %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %204

204:                                              ; preds = %201, %195
  br label %205

205:                                              ; preds = %204
  %206 = load i32, i32* %17, align 4
  %207 = add i32 %206, 1
  store i32 %207, i32* %17, align 4
  br label %172

208:                                              ; preds = %172
  %209 = load i32, i32* %4, align 4
  %210 = call i32 (i32, i8*, ...) @dprintf(i32 %209, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %352

211:                                              ; preds = %40
  %212 = load i32*, i32** %6, align 8
  %213 = call i32* @nvpair_get_number_array(i32* %212, i64* %21)
  store i32* %213, i32** %19, align 8
  %214 = load i32, i32* %4, align 4
  %215 = call i32 (i32, i8*, ...) @dprintf(i32 %214, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %20, align 4
  br label %216

216:                                              ; preds = %248, %211
  %217 = load i32, i32* %20, align 4
  %218 = zext i32 %217 to i64
  %219 = load i64, i64* %21, align 8
  %220 = icmp ult i64 %218, %219
  br i1 %220, label %221, label %251

221:                                              ; preds = %216
  %222 = load i32, i32* %4, align 4
  %223 = load i32*, i32** %19, align 8
  %224 = load i32, i32* %20, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds i32, i32* %223, i64 %225
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %19, align 8
  %229 = load i32, i32* %20, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = load i32*, i32** %19, align 8
  %234 = load i32, i32* %20, align 4
  %235 = zext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = call i32 (i32, i8*, ...) @dprintf(i32 %222, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), i32 %227, i32 %232, i32 %237)
  %239 = load i32, i32* %20, align 4
  %240 = zext i32 %239 to i64
  %241 = load i64, i64* %21, align 8
  %242 = sub i64 %241, 1
  %243 = icmp ne i64 %240, %242
  br i1 %243, label %244, label %247

244:                                              ; preds = %221
  %245 = load i32, i32* %4, align 4
  %246 = call i32 (i32, i8*, ...) @dprintf(i32 %245, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %247

247:                                              ; preds = %244, %221
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %20, align 4
  %250 = add i32 %249, 1
  store i32 %250, i32* %20, align 4
  br label %216

251:                                              ; preds = %216
  %252 = load i32, i32* %4, align 4
  %253 = call i32 (i32, i8*, ...) @dprintf(i32 %252, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %352

254:                                              ; preds = %40
  %255 = load i32*, i32** %6, align 8
  %256 = call i32* @nvpair_get_descriptor_array(i32* %255, i64* %24)
  store i32* %256, i32** %22, align 8
  %257 = load i32, i32* %4, align 4
  %258 = call i32 (i32, i8*, ...) @dprintf(i32 %257, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %23, align 4
  br label %259

259:                                              ; preds = %281, %254
  %260 = load i32, i32* %23, align 4
  %261 = zext i32 %260 to i64
  %262 = load i64, i64* %24, align 8
  %263 = icmp ult i64 %261, %262
  br i1 %263, label %264, label %284

264:                                              ; preds = %259
  %265 = load i32, i32* %4, align 4
  %266 = load i32*, i32** %22, align 8
  %267 = load i32, i32* %23, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 (i32, i8*, ...) @dprintf(i32 %265, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i64 0, i64 0), i32 %270)
  %272 = load i32, i32* %23, align 4
  %273 = zext i32 %272 to i64
  %274 = load i64, i64* %24, align 8
  %275 = sub i64 %274, 1
  %276 = icmp ne i64 %273, %275
  br i1 %276, label %277, label %280

277:                                              ; preds = %264
  %278 = load i32, i32* %4, align 4
  %279 = call i32 (i32, i8*, ...) @dprintf(i32 %278, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0))
  br label %280

280:                                              ; preds = %277, %264
  br label %281

281:                                              ; preds = %280
  %282 = load i32, i32* %23, align 4
  %283 = add i32 %282, 1
  store i32 %283, i32* %23, align 4
  br label %259

284:                                              ; preds = %259
  %285 = load i32, i32* %4, align 4
  %286 = call i32 (i32, i8*, ...) @dprintf(i32 %285, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i64 0, i64 0))
  br label %352

287:                                              ; preds = %40
  %288 = load i32*, i32** %6, align 8
  %289 = call i32** @nvpair_get_nvlist_array(i32* %288, i64* %27)
  store i32** %289, i32*** %25, align 8
  %290 = load i32, i32* %4, align 4
  %291 = load i64, i64* %27, align 8
  %292 = call i32 (i32, i8*, ...) @dprintf(i32 %290, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.20, i64 0, i64 0), i64 %291)
  store i32* null, i32** %5, align 8
  store i32* null, i32** %7, align 8
  store i32 0, i32* %26, align 4
  br label %293

293:                                              ; preds = %336, %287
  %294 = load i32, i32* %26, align 4
  %295 = zext i32 %294 to i64
  %296 = load i64, i64* %27, align 8
  %297 = icmp ult i64 %295, %296
  br i1 %297, label %298, label %339

298:                                              ; preds = %293
  %299 = load i32**, i32*** %25, align 8
  %300 = load i32, i32* %26, align 4
  %301 = zext i32 %300 to i64
  %302 = getelementptr inbounds i32*, i32** %299, i64 %301
  %303 = load i32*, i32** %302, align 8
  %304 = load i32, i32* %4, align 4
  %305 = load i32, i32* %9, align 4
  %306 = add nsw i32 %305, 1
  %307 = call i64 @nvlist_dump_error_check(i32* %303, i32 %304, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %298
  br label %339

310:                                              ; preds = %298
  %311 = load i32*, i32** %5, align 8
  %312 = icmp eq i32* %311, null
  br i1 %312, label %313, label %335

313:                                              ; preds = %310
  %314 = load i32**, i32*** %25, align 8
  %315 = load i32, i32* %26, align 4
  %316 = zext i32 %315 to i64
  %317 = getelementptr inbounds i32*, i32** %314, i64 %316
  %318 = load i32*, i32** %317, align 8
  %319 = call i32* @nvlist_first_nvpair(i32* %318)
  store i32* %319, i32** %7, align 8
  %320 = load i32*, i32** %7, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %328

322:                                              ; preds = %313
  %323 = load i32**, i32*** %25, align 8
  %324 = load i32, i32* %26, align 4
  %325 = zext i32 %324 to i64
  %326 = getelementptr inbounds i32*, i32** %323, i64 %325
  %327 = load i32*, i32** %326, align 8
  store i32* %327, i32** %5, align 8
  br label %334

328:                                              ; preds = %313
  %329 = load i32, i32* %4, align 4
  %330 = load i32, i32* %9, align 4
  %331 = add nsw i32 %330, 1
  %332 = mul nsw i32 %331, 4
  %333 = call i32 (i32, i8*, ...) @dprintf(i32 %329, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %332, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %334

334:                                              ; preds = %328, %322
  br label %335

335:                                              ; preds = %334, %310
  br label %336

336:                                              ; preds = %335
  %337 = load i32, i32* %26, align 4
  %338 = add i32 %337, 1
  store i32 %338, i32* %26, align 4
  br label %293

339:                                              ; preds = %309, %293
  %340 = load i32*, i32** %7, align 8
  %341 = icmp ne i32* %340, null
  br i1 %341, label %342, label %347

342:                                              ; preds = %339
  %343 = load i32*, i32** %5, align 8
  store i32* %343, i32** %3, align 8
  %344 = load i32*, i32** %7, align 8
  store i32* %344, i32** %6, align 8
  %345 = load i32, i32* %9, align 4
  %346 = add nsw i32 %345, 1
  store i32 %346, i32* %9, align 4
  br label %37

347:                                              ; preds = %339
  br label %352

348:                                              ; preds = %40
  %349 = load i32*, i32** %6, align 8
  %350 = call i32 @nvpair_type(i32* %349)
  %351 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i64 0, i64 0), i32 %350)
  br label %352

352:                                              ; preds = %348, %347, %284, %251, %208, %164, %128, %100, %99, %88, %72, %63, %55, %52
  br label %353

353:                                              ; preds = %401, %352
  %354 = load i32*, i32** %3, align 8
  %355 = load i32*, i32** %6, align 8
  %356 = call i32* @nvlist_next_nvpair(i32* %354, i32* %355)
  store i32* %356, i32** %6, align 8
  %357 = icmp eq i32* %356, null
  br i1 %357, label %358, label %402

358:                                              ; preds = %353
  br label %359

359:                                              ; preds = %390, %358
  store i8* null, i8** %8, align 8
  %360 = load i32*, i32** %3, align 8
  %361 = call i64 @nvlist_in_array(i32* %360)
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %363, label %368

363:                                              ; preds = %359
  %364 = load i32, i32* %4, align 4
  %365 = load i32, i32* %9, align 4
  %366 = mul nsw i32 %365, 4
  %367 = call i32 (i32, i8*, ...) @dprintf(i32 %364, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i32 %366, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %368

368:                                              ; preds = %363, %359
  %369 = load i32*, i32** %3, align 8
  %370 = call i32* @nvlist_get_pararr(i32* %369, i8** %8)
  store i32* %370, i32** %3, align 8
  %371 = load i32*, i32** %3, align 8
  %372 = icmp eq i32* %371, null
  br i1 %372, label %373, label %374

373:                                              ; preds = %368
  br label %403

374:                                              ; preds = %368
  %375 = load i32*, i32** %3, align 8
  %376 = call i64 @nvlist_in_array(i32* %375)
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %384

378:                                              ; preds = %374
  %379 = load i8*, i8** %8, align 8
  %380 = icmp eq i8* %379, null
  br i1 %380, label %381, label %384

381:                                              ; preds = %378
  %382 = load i32*, i32** %3, align 8
  %383 = call i32* @nvlist_first_nvpair(i32* %382)
  store i32* %383, i32** %6, align 8
  br label %389

384:                                              ; preds = %378, %374
  %385 = load i8*, i8** %8, align 8
  %386 = bitcast i8* %385 to i32*
  store i32* %386, i32** %6, align 8
  %387 = load i32, i32* %9, align 4
  %388 = add nsw i32 %387, -1
  store i32 %388, i32* %9, align 4
  br label %389

389:                                              ; preds = %384, %381
  br label %390

390:                                              ; preds = %389
  %391 = load i32*, i32** %6, align 8
  %392 = icmp eq i32* %391, null
  br i1 %392, label %359, label %393

393:                                              ; preds = %390
  %394 = load i32*, i32** %3, align 8
  %395 = call i64 @nvlist_in_array(i32* %394)
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %401

397:                                              ; preds = %393
  %398 = load i8*, i8** %8, align 8
  %399 = icmp eq i8* %398, null
  br i1 %399, label %400, label %401

400:                                              ; preds = %397
  br label %402

401:                                              ; preds = %397, %393
  br label %353

402:                                              ; preds = %400, %353
  br label %37

403:                                              ; preds = %33, %373, %37
  ret void
}

declare dso_local i64 @nvlist_dump_error_check(i32*, i32, i32) #1

declare dso_local i32* @nvlist_first_nvpair(i32*) #1

declare dso_local i32 @dprintf(i32, i8*, ...) #1

declare dso_local i32 @nvpair_name(i32*) #1

declare dso_local i32 @nvpair_type_string(i32) #1

declare dso_local i32 @nvpair_type(i32*) #1

declare dso_local i32 @nvpair_get_bool(i32*) #1

declare dso_local i32 @nvpair_get_number(i32*) #1

declare dso_local i32 @nvpair_get_string(i32*) #1

declare dso_local i32* @nvpair_get_nvlist(i32*) #1

declare dso_local i32 @nvpair_get_descriptor(i32*) #1

declare dso_local i8* @nvpair_get_binary(i32*, i64*) #1

declare dso_local i32* @nvpair_get_bool_array(i32*, i64*) #1

declare dso_local i8** @nvpair_get_string_array(i32*, i64*) #1

declare dso_local i32* @nvpair_get_number_array(i32*, i64*) #1

declare dso_local i32* @nvpair_get_descriptor_array(i32*, i64*) #1

declare dso_local i32** @nvpair_get_nvlist_array(i32*, i64*) #1

declare dso_local i32 @PJDLOG_ABORT(i8*, i32) #1

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i64 @nvlist_in_array(i32*) #1

declare dso_local i32* @nvlist_get_pararr(i32*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
