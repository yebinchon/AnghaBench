; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_from_text_l.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_from_text_l.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }
%struct.archive_string_conv = type { i32 }
%struct.anon = type { i8*, i8* }

@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@ARCHIVE_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"efault\00", align 1
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ser\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"roup\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"ther\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"ask\00", align 1
@ARCHIVE_ENTRY_ACL_USER = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"user\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"group\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"owner@\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"group@\00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"everyone@\00", align 1
@ARCHIVE_ENTRY_ACL_EVERYONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"deny\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_DENY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i8] c"allow\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ALLOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"audit\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_AUDIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"alarm\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ALARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_from_text_l(%struct.archive_acl* %0, i8* %1, i32 %2, %struct.archive_string_conv* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.archive_acl*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.archive_string_conv*, align 8
  %10 = alloca [6 x %struct.anon], align 16
  %11 = alloca %struct.anon, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i8, align 1
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.archive_string_conv* %3, %struct.archive_string_conv** %9, align 8
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %34 [
    i32 129, label %30
    i32 132, label %32
    i32 131, label %32
    i32 130, label %33
  ]

30:                                               ; preds = %4
  store i32 132, i32* %8, align 4
  %31 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %32

32:                                               ; preds = %4, %4, %30
  store i32 5, i32* %14, align 4
  br label %36

33:                                               ; preds = %4
  store i32 6, i32* %14, align 4
  br label %36

34:                                               ; preds = %4
  %35 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %35, i32* %5, align 4
  br label %603

36:                                               ; preds = %33, %32
  %37 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %37, i32* %19, align 4
  store i32 0, i32* %21, align 4
  br label %38

38:                                               ; preds = %594, %549, %488, %471, %435, %381, %357, %321, %210, %102, %36
  %39 = load i8*, i8** %7, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %38
  %42 = load i8*, i8** %7, align 8
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br label %46

46:                                               ; preds = %41, %38
  %47 = phi i1 [ false, %38 ], [ %45, %41 ]
  br i1 %47, label %48, label %598

48:                                               ; preds = %46
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %68, %48
  %50 = call i32 @next_field(i8** %7, i8** %27, i8** %28, i8* %26)
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %14, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %49
  %55 = load i8*, i8** %27, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  store i8* %55, i8** %59, align 16
  %60 = load i8*, i8** %28, align 8
  %61 = load i32, i32* %15, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %62
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 1
  store i8* %60, i8** %64, align 8
  br label %65

65:                                               ; preds = %54, %49
  %66 = load i32, i32* %15, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %15, align 4
  br label %68

68:                                               ; preds = %65
  %69 = load i8, i8* %26, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 58
  br i1 %71, label %49, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %87, %72
  %75 = load i32, i32* %16, align 4
  %76 = load i32, i32* %14, align 4
  %77 = icmp slt i32 %75, %76
  br i1 %77, label %78, label %90

78:                                               ; preds = %74
  %79 = load i32, i32* %16, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 1
  store i8* null, i8** %82, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %84
  %86 = getelementptr inbounds %struct.anon, %struct.anon* %85, i32 0, i32 0
  store i8* null, i8** %86, align 16
  br label %87

87:                                               ; preds = %78
  %88 = load i32, i32* %16, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %16, align 4
  br label %74

90:                                               ; preds = %74
  %91 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i8*, i8** %92, align 16
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %103

95:                                               ; preds = %90
  %96 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 16
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp eq i32 %100, 35
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %38

103:                                              ; preds = %95, %90
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  store i32 -1, i32* %24, align 4
  store i32 0, i32* %23, align 4
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  store i8* null, i8** %104, align 8
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  store i8* null, i8** %105, align 8
  %106 = load i32, i32* %8, align 4
  %107 = icmp ne i32 %106, 130
  br i1 %107, label %108, label %384

108:                                              ; preds = %103
  %109 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %110 = getelementptr inbounds %struct.anon, %struct.anon* %109, i32 0, i32 0
  %111 = load i8*, i8** %110, align 16
  store i8* %111, i8** %12, align 8
  %112 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 1
  %114 = load i8*, i8** %113, align 8
  %115 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 16
  %118 = ptrtoint i8* %114 to i64
  %119 = ptrtoint i8* %117 to i64
  %120 = sub i64 %118, %119
  store i64 %120, i64* %25, align 8
  %121 = load i8*, i8** %12, align 8
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = icmp eq i32 %123, 100
  br i1 %124, label %125, label %146

125:                                              ; preds = %108
  %126 = load i64, i64* %25, align 8
  %127 = icmp eq i64 %126, 1
  br i1 %127, label %136, label %128

128:                                              ; preds = %125
  %129 = load i64, i64* %25, align 8
  %130 = icmp uge i64 %129, 7
  br i1 %130, label %131, label %146

131:                                              ; preds = %128
  %132 = load i8*, i8** %12, align 8
  %133 = getelementptr inbounds i8, i8* %132, i64 1
  %134 = call i64 @memcmp(i8* %133, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 6)
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %131, %125
  store i32 131, i32* %20, align 4
  %137 = load i64, i64* %25, align 8
  %138 = icmp ugt i64 %137, 7
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %141 = getelementptr inbounds %struct.anon, %struct.anon* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 16
  %143 = getelementptr inbounds i8, i8* %142, i64 7
  store i8* %143, i8** %141, align 16
  br label %145

144:                                              ; preds = %136
  store i32 1, i32* %16, align 4
  br label %145

145:                                              ; preds = %144, %139
  br label %148

146:                                              ; preds = %131, %128, %108
  %147 = load i32, i32* %8, align 4
  store i32 %147, i32* %20, align 4
  br label %148

148:                                              ; preds = %146, %145
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %151
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 16
  %155 = load i32, i32* %16, align 4
  %156 = add nsw i32 %155, 1
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %157
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @isint(i8* %154, i8* %160, i32* %24)
  %162 = load i32, i32* %24, align 4
  %163 = icmp eq i32 %162, -1
  br i1 %163, label %164, label %183

164:                                              ; preds = %148
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %16, align 4
  %167 = add nsw i32 %166, 3
  %168 = icmp sgt i32 %165, %167
  br i1 %168, label %169, label %183

169:                                              ; preds = %164
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 3
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %172
  %174 = getelementptr inbounds %struct.anon, %struct.anon* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 16
  %176 = load i32, i32* %16, align 4
  %177 = add nsw i32 %176, 3
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %178
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @isint(i8* %175, i8* %181, i32* %24)
  br label %183

183:                                              ; preds = %169, %164, %148
  store i32 0, i32* %22, align 4
  %184 = load i32, i32* %16, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  %188 = load i8*, i8** %187, align 16
  store i8* %188, i8** %12, align 8
  %189 = load i32, i32* %16, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %190
  %192 = getelementptr inbounds %struct.anon, %struct.anon* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 16
  %194 = getelementptr inbounds i8, i8* %193, i64 1
  store i8* %194, i8** %13, align 8
  %195 = load i32, i32* %16, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  %200 = load i32, i32* %16, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %201
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 16
  %205 = ptrtoint i8* %199 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  store i64 %207, i64* %25, align 8
  %208 = load i64, i64* %25, align 8
  %209 = icmp eq i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %183
  %211 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %211, i32* %19, align 4
  br label %38

212:                                              ; preds = %183
  %213 = load i8*, i8** %12, align 8
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  switch i32 %215, label %264 [
    i32 117, label %216
    i32 103, label %228
    i32 111, label %240
    i32 109, label %252
  ]

216:                                              ; preds = %212
  %217 = load i64, i64* %25, align 8
  %218 = icmp eq i64 %217, 1
  br i1 %218, label %226, label %219

219:                                              ; preds = %216
  %220 = load i64, i64* %25, align 8
  %221 = icmp eq i64 %220, 4
  br i1 %221, label %222, label %227

222:                                              ; preds = %219
  %223 = load i8*, i8** %13, align 8
  %224 = call i64 @memcmp(i8* %223, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %225 = icmp eq i64 %224, 0
  br i1 %225, label %226, label %227

226:                                              ; preds = %222, %216
  store i32 128, i32* %22, align 4
  br label %227

227:                                              ; preds = %226, %222, %219
  br label %265

228:                                              ; preds = %212
  %229 = load i64, i64* %25, align 8
  %230 = icmp eq i64 %229, 1
  br i1 %230, label %238, label %231

231:                                              ; preds = %228
  %232 = load i64, i64* %25, align 8
  %233 = icmp eq i64 %232, 5
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load i8*, i8** %13, align 8
  %236 = call i64 @memcmp(i8* %235, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %237 = icmp eq i64 %236, 0
  br i1 %237, label %238, label %239

238:                                              ; preds = %234, %228
  store i32 135, i32* %22, align 4
  br label %239

239:                                              ; preds = %238, %234, %231
  br label %265

240:                                              ; preds = %212
  %241 = load i64, i64* %25, align 8
  %242 = icmp eq i64 %241, 1
  br i1 %242, label %250, label %243

243:                                              ; preds = %240
  %244 = load i64, i64* %25, align 8
  %245 = icmp eq i64 %244, 5
  br i1 %245, label %246, label %251

246:                                              ; preds = %243
  %247 = load i8*, i8** %13, align 8
  %248 = call i64 @memcmp(i8* %247, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 4)
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %250, label %251

250:                                              ; preds = %246, %240
  store i32 133, i32* %22, align 4
  br label %251

251:                                              ; preds = %250, %246, %243
  br label %265

252:                                              ; preds = %212
  %253 = load i64, i64* %25, align 8
  %254 = icmp eq i64 %253, 1
  br i1 %254, label %262, label %255

255:                                              ; preds = %252
  %256 = load i64, i64* %25, align 8
  %257 = icmp eq i64 %256, 4
  br i1 %257, label %258, label %263

258:                                              ; preds = %255
  %259 = load i8*, i8** %13, align 8
  %260 = call i64 @memcmp(i8* %259, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 3)
  %261 = icmp eq i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %258, %252
  store i32 134, i32* %22, align 4
  br label %263

263:                                              ; preds = %262, %258, %255
  br label %265

264:                                              ; preds = %212
  br label %265

265:                                              ; preds = %264, %263, %251, %239, %227
  %266 = load i32, i32* %22, align 4
  switch i32 %266, label %357 [
    i32 133, label %267
    i32 134, label %267
    i32 128, label %325
    i32 135, label %325
  ]

267:                                              ; preds = %265, %265
  %268 = load i32, i32* %15, align 4
  %269 = load i32, i32* %16, align 4
  %270 = add nsw i32 %269, 2
  %271 = icmp eq i32 %268, %270
  br i1 %271, label %272, label %302

272:                                              ; preds = %267
  %273 = load i32, i32* %16, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %275
  %277 = getelementptr inbounds %struct.anon, %struct.anon* %276, i32 0, i32 0
  %278 = load i8*, i8** %277, align 16
  %279 = load i32, i32* %16, align 4
  %280 = add nsw i32 %279, 1
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %281
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %282, i32 0, i32 1
  %284 = load i8*, i8** %283, align 8
  %285 = icmp ult i8* %278, %284
  br i1 %285, label %286, label %302

286:                                              ; preds = %272
  %287 = load i32, i32* %16, align 4
  %288 = add nsw i32 %287, 1
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %289
  %291 = getelementptr inbounds %struct.anon, %struct.anon* %290, i32 0, i32 0
  %292 = load i8*, i8** %291, align 16
  %293 = load i32, i32* %16, align 4
  %294 = add nsw i32 %293, 1
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %295
  %297 = getelementptr inbounds %struct.anon, %struct.anon* %296, i32 0, i32 1
  %298 = load i8*, i8** %297, align 8
  %299 = call i64 @ismode(i8* %292, i8* %298, i32* %23)
  %300 = icmp ne i64 %299, 0
  br i1 %300, label %301, label %302

301:                                              ; preds = %286
  store i32 1, i32* %18, align 4
  br label %324

302:                                              ; preds = %286, %272, %267
  %303 = load i32, i32* %15, align 4
  %304 = load i32, i32* %16, align 4
  %305 = add nsw i32 %304, 3
  %306 = icmp eq i32 %303, %305
  br i1 %306, label %307, label %323

307:                                              ; preds = %302
  %308 = load i32, i32* %16, align 4
  %309 = add nsw i32 %308, 1
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %310
  %312 = getelementptr inbounds %struct.anon, %struct.anon* %311, i32 0, i32 0
  %313 = load i8*, i8** %312, align 16
  %314 = load i32, i32* %16, align 4
  %315 = add nsw i32 %314, 1
  %316 = sext i32 %315 to i64
  %317 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %316
  %318 = getelementptr inbounds %struct.anon, %struct.anon* %317, i32 0, i32 1
  %319 = load i8*, i8** %318, align 8
  %320 = icmp ult i8* %313, %319
  br i1 %320, label %321, label %323

321:                                              ; preds = %307
  %322 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %322, i32* %19, align 4
  br label %38

323:                                              ; preds = %307, %302
  br label %324

324:                                              ; preds = %323, %301
  br label %359

325:                                              ; preds = %265, %265
  %326 = load i32, i32* %24, align 4
  %327 = icmp ne i32 %326, -1
  br i1 %327, label %342, label %328

328:                                              ; preds = %325
  %329 = load i32, i32* %16, align 4
  %330 = add nsw i32 %329, 1
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %331
  %333 = getelementptr inbounds %struct.anon, %struct.anon* %332, i32 0, i32 0
  %334 = load i8*, i8** %333, align 16
  %335 = load i32, i32* %16, align 4
  %336 = add nsw i32 %335, 1
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %337
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %338, i32 0, i32 1
  %340 = load i8*, i8** %339, align 8
  %341 = icmp ult i8* %334, %340
  br i1 %341, label %342, label %356

342:                                              ; preds = %328, %325
  %343 = load i32, i32* %16, align 4
  %344 = add nsw i32 %343, 1
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %345
  %347 = bitcast %struct.anon* %11 to i8*
  %348 = bitcast %struct.anon* %346 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %347, i8* align 16 %348, i64 16, i1 false)
  %349 = load i32, i32* %22, align 4
  %350 = icmp eq i32 %349, 128
  br i1 %350, label %351, label %353

351:                                              ; preds = %342
  %352 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  store i32 %352, i32* %22, align 4
  br label %355

353:                                              ; preds = %342
  %354 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  store i32 %354, i32* %22, align 4
  br label %355

355:                                              ; preds = %353, %351
  br label %356

356:                                              ; preds = %355, %328
  br label %359

357:                                              ; preds = %265
  %358 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %358, i32* %19, align 4
  br label %38

359:                                              ; preds = %356, %324
  %360 = load i32, i32* %23, align 4
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %383

362:                                              ; preds = %359
  %363 = load i32, i32* %16, align 4
  %364 = add nsw i32 %363, 2
  %365 = load i32, i32* %18, align 4
  %366 = sub nsw i32 %364, %365
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %367
  %369 = getelementptr inbounds %struct.anon, %struct.anon* %368, i32 0, i32 0
  %370 = load i8*, i8** %369, align 16
  %371 = load i32, i32* %16, align 4
  %372 = add nsw i32 %371, 2
  %373 = load i32, i32* %18, align 4
  %374 = sub nsw i32 %372, %373
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %375
  %377 = getelementptr inbounds %struct.anon, %struct.anon* %376, i32 0, i32 1
  %378 = load i8*, i8** %377, align 8
  %379 = call i64 @ismode(i8* %370, i8* %378, i32* %23)
  %380 = icmp ne i64 %379, 0
  br i1 %380, label %383, label %381

381:                                              ; preds = %362
  %382 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %382, i32* %19, align 4
  br label %38

383:                                              ; preds = %362, %359
  br label %565

384:                                              ; preds = %103
  %385 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %386 = getelementptr inbounds %struct.anon, %struct.anon* %385, i32 0, i32 0
  %387 = load i8*, i8** %386, align 16
  store i8* %387, i8** %12, align 8
  %388 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %389 = getelementptr inbounds %struct.anon, %struct.anon* %388, i32 0, i32 1
  %390 = load i8*, i8** %389, align 8
  %391 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 0
  %392 = getelementptr inbounds %struct.anon, %struct.anon* %391, i32 0, i32 0
  %393 = load i8*, i8** %392, align 16
  %394 = ptrtoint i8* %390 to i64
  %395 = ptrtoint i8* %393 to i64
  %396 = sub i64 %394, %395
  store i64 %396, i64* %25, align 8
  store i32 0, i32* %22, align 4
  %397 = load i64, i64* %25, align 8
  switch i64 %397, label %431 [
    i64 4, label %398
    i64 5, label %405
    i64 6, label %412
    i64 9, label %424
  ]

398:                                              ; preds = %384
  %399 = load i8*, i8** %12, align 8
  %400 = call i64 @memcmp(i8* %399, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 4)
  %401 = icmp eq i64 %400, 0
  br i1 %401, label %402, label %404

402:                                              ; preds = %398
  %403 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  store i32 %403, i32* %22, align 4
  br label %404

404:                                              ; preds = %402, %398
  br label %432

405:                                              ; preds = %384
  %406 = load i8*, i8** %12, align 8
  %407 = call i64 @memcmp(i8* %406, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 5)
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %409, label %411

409:                                              ; preds = %405
  %410 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  store i32 %410, i32* %22, align 4
  br label %411

411:                                              ; preds = %409, %405
  br label %432

412:                                              ; preds = %384
  %413 = load i8*, i8** %12, align 8
  %414 = call i64 @memcmp(i8* %413, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i32 6)
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %416, label %417

416:                                              ; preds = %412
  store i32 128, i32* %22, align 4
  br label %423

417:                                              ; preds = %412
  %418 = load i8*, i8** %12, align 8
  %419 = call i64 @memcmp(i8* %418, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0), i32 6)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %422

421:                                              ; preds = %417
  store i32 135, i32* %22, align 4
  br label %422

422:                                              ; preds = %421, %417
  br label %423

423:                                              ; preds = %422, %416
  br label %432

424:                                              ; preds = %384
  %425 = load i8*, i8** %12, align 8
  %426 = call i64 @memcmp(i8* %425, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i32 9)
  %427 = icmp eq i64 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %424
  %429 = load i32, i32* @ARCHIVE_ENTRY_ACL_EVERYONE, align 4
  store i32 %429, i32* %22, align 4
  br label %430

430:                                              ; preds = %428, %424
  br label %432

431:                                              ; preds = %384
  br label %432

432:                                              ; preds = %431, %430, %423, %411, %404
  %433 = load i32, i32* %22, align 4
  %434 = icmp eq i32 %433, 0
  br i1 %434, label %435, label %437

435:                                              ; preds = %432
  %436 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %436, i32* %19, align 4
  br label %38

437:                                              ; preds = %432
  %438 = load i32, i32* %22, align 4
  %439 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  %440 = icmp eq i32 %438, %439
  br i1 %440, label %445, label %441

441:                                              ; preds = %437
  %442 = load i32, i32* %22, align 4
  %443 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  %444 = icmp eq i32 %442, %443
  br i1 %444, label %445, label %454

445:                                              ; preds = %441, %437
  store i32 1, i32* %16, align 4
  %446 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 1
  %447 = bitcast %struct.anon* %11 to i8*
  %448 = bitcast %struct.anon* %446 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %447, i8* align 16 %448, i64 16, i1 false)
  %449 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %450 = load i8*, i8** %449, align 8
  %451 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %452 = load i8*, i8** %451, align 8
  %453 = call i32 @isint(i8* %450, i8* %452, i32* %24)
  br label %455

454:                                              ; preds = %441
  store i32 0, i32* %16, align 4
  br label %455

455:                                              ; preds = %454, %445
  br label %456

456:                                              ; preds = %455
  %457 = load i32, i32* %16, align 4
  %458 = add nsw i32 1, %457
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %459
  %461 = getelementptr inbounds %struct.anon, %struct.anon* %460, i32 0, i32 0
  %462 = load i8*, i8** %461, align 16
  %463 = load i32, i32* %16, align 4
  %464 = add nsw i32 1, %463
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %465
  %467 = getelementptr inbounds %struct.anon, %struct.anon* %466, i32 0, i32 1
  %468 = load i8*, i8** %467, align 8
  %469 = call i32 @is_nfs4_perms(i8* %462, i8* %468, i32* %23)
  %470 = icmp ne i32 %469, 0
  br i1 %470, label %473, label %471

471:                                              ; preds = %456
  %472 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %472, i32* %19, align 4
  br label %38

473:                                              ; preds = %456
  %474 = load i32, i32* %16, align 4
  %475 = add nsw i32 2, %474
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %476
  %478 = getelementptr inbounds %struct.anon, %struct.anon* %477, i32 0, i32 0
  %479 = load i8*, i8** %478, align 16
  %480 = load i32, i32* %16, align 4
  %481 = add nsw i32 2, %480
  %482 = sext i32 %481 to i64
  %483 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %482
  %484 = getelementptr inbounds %struct.anon, %struct.anon* %483, i32 0, i32 1
  %485 = load i8*, i8** %484, align 8
  %486 = call i32 @is_nfs4_flags(i8* %479, i8* %485, i32* %23)
  %487 = icmp ne i32 %486, 0
  br i1 %487, label %490, label %488

488:                                              ; preds = %473
  %489 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %489, i32* %19, align 4
  br label %38

490:                                              ; preds = %473
  %491 = load i32, i32* %16, align 4
  %492 = add nsw i32 3, %491
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %493
  %495 = getelementptr inbounds %struct.anon, %struct.anon* %494, i32 0, i32 0
  %496 = load i8*, i8** %495, align 16
  store i8* %496, i8** %12, align 8
  %497 = load i32, i32* %16, align 4
  %498 = add nsw i32 3, %497
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %499
  %501 = getelementptr inbounds %struct.anon, %struct.anon* %500, i32 0, i32 1
  %502 = load i8*, i8** %501, align 8
  %503 = load i32, i32* %16, align 4
  %504 = add nsw i32 3, %503
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %505
  %507 = getelementptr inbounds %struct.anon, %struct.anon* %506, i32 0, i32 0
  %508 = load i8*, i8** %507, align 16
  %509 = ptrtoint i8* %502 to i64
  %510 = ptrtoint i8* %508 to i64
  %511 = sub i64 %509, %510
  store i64 %511, i64* %25, align 8
  store i32 0, i32* %20, align 4
  %512 = load i64, i64* %25, align 8
  %513 = icmp eq i64 %512, 4
  br i1 %513, label %514, label %521

514:                                              ; preds = %490
  %515 = load i8*, i8** %12, align 8
  %516 = call i64 @memcmp(i8* %515, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 4)
  %517 = icmp eq i64 %516, 0
  br i1 %517, label %518, label %520

518:                                              ; preds = %514
  %519 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DENY, align 4
  store i32 %519, i32* %20, align 4
  br label %520

520:                                              ; preds = %518, %514
  br label %546

521:                                              ; preds = %490
  %522 = load i64, i64* %25, align 8
  %523 = icmp eq i64 %522, 5
  br i1 %523, label %524, label %545

524:                                              ; preds = %521
  %525 = load i8*, i8** %12, align 8
  %526 = call i64 @memcmp(i8* %525, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i64 0, i64 0), i32 5)
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ALLOW, align 4
  store i32 %529, i32* %20, align 4
  br label %544

530:                                              ; preds = %524
  %531 = load i8*, i8** %12, align 8
  %532 = call i64 @memcmp(i8* %531, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0), i32 5)
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_AUDIT, align 4
  store i32 %535, i32* %20, align 4
  br label %543

536:                                              ; preds = %530
  %537 = load i8*, i8** %12, align 8
  %538 = call i64 @memcmp(i8* %537, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 5)
  %539 = icmp eq i64 %538, 0
  br i1 %539, label %540, label %542

540:                                              ; preds = %536
  %541 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ALARM, align 4
  store i32 %541, i32* %20, align 4
  br label %542

542:                                              ; preds = %540, %536
  br label %543

543:                                              ; preds = %542, %534
  br label %544

544:                                              ; preds = %543, %528
  br label %545

545:                                              ; preds = %544, %521
  br label %546

546:                                              ; preds = %545, %520
  %547 = load i32, i32* %20, align 4
  %548 = icmp eq i32 %547, 0
  br i1 %548, label %549, label %551

549:                                              ; preds = %546
  %550 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %550, i32* %19, align 4
  br label %38

551:                                              ; preds = %546
  %552 = load i32, i32* %16, align 4
  %553 = add nsw i32 4, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %554
  %556 = getelementptr inbounds %struct.anon, %struct.anon* %555, i32 0, i32 0
  %557 = load i8*, i8** %556, align 16
  %558 = load i32, i32* %16, align 4
  %559 = add nsw i32 4, %558
  %560 = sext i32 %559 to i64
  %561 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %10, i64 0, i64 %560
  %562 = getelementptr inbounds %struct.anon, %struct.anon* %561, i32 0, i32 1
  %563 = load i8*, i8** %562, align 8
  %564 = call i32 @isint(i8* %557, i8* %563, i32* %24)
  br label %565

565:                                              ; preds = %551, %383
  %566 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %567 = load i32, i32* %20, align 4
  %568 = load i32, i32* %23, align 4
  %569 = load i32, i32* %22, align 4
  %570 = load i32, i32* %24, align 4
  %571 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %572 = load i8*, i8** %571, align 8
  %573 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1
  %574 = load i8*, i8** %573, align 8
  %575 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %576 = load i8*, i8** %575, align 8
  %577 = ptrtoint i8* %574 to i64
  %578 = ptrtoint i8* %576 to i64
  %579 = sub i64 %577, %578
  %580 = trunc i64 %579 to i32
  %581 = load %struct.archive_string_conv*, %struct.archive_string_conv** %9, align 8
  %582 = call i32 @archive_acl_add_entry_len_l(%struct.archive_acl* %566, i32 %567, i32 %568, i32 %569, i32 %570, i8* %572, i32 %580, %struct.archive_string_conv* %581)
  store i32 %582, i32* %17, align 4
  %583 = load i32, i32* %17, align 4
  %584 = load i32, i32* @ARCHIVE_WARN, align 4
  %585 = icmp slt i32 %583, %584
  br i1 %585, label %586, label %588

586:                                              ; preds = %565
  %587 = load i32, i32* %17, align 4
  store i32 %587, i32* %5, align 4
  br label %603

588:                                              ; preds = %565
  %589 = load i32, i32* %17, align 4
  %590 = load i32, i32* @ARCHIVE_OK, align 4
  %591 = icmp ne i32 %589, %590
  br i1 %591, label %592, label %594

592:                                              ; preds = %588
  %593 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %593, i32* %19, align 4
  br label %594

594:                                              ; preds = %592, %588
  %595 = load i32, i32* %20, align 4
  %596 = load i32, i32* %21, align 4
  %597 = or i32 %596, %595
  store i32 %597, i32* %21, align 4
  br label %38

598:                                              ; preds = %46
  %599 = load %struct.archive_acl*, %struct.archive_acl** %6, align 8
  %600 = load i32, i32* %21, align 4
  %601 = call i32 @archive_acl_reset(%struct.archive_acl* %599, i32 %600)
  %602 = load i32, i32* %19, align 4
  store i32 %602, i32* %5, align 4
  br label %603

603:                                              ; preds = %598, %586, %34
  %604 = load i32, i32* %5, align 4
  ret i32 %604
}

declare dso_local i32 @next_field(i8**, i8**, i8**, i8*) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @isint(i8*, i8*, i32*) #1

declare dso_local i64 @ismode(i8*, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_nfs4_perms(i8*, i8*, i32*) #1

declare dso_local i32 @is_nfs4_flags(i8*, i8*, i32*) #1

declare dso_local i32 @archive_acl_add_entry_len_l(%struct.archive_acl*, i32, i32, i32, i32, i8*, i32, %struct.archive_string_conv*) #1

declare dso_local i32 @archive_acl_reset(%struct.archive_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
