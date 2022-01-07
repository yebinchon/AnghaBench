; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_from_text_w.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_acl.c_archive_acl_from_text_w.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_acl = type { i32 }
%struct.anon = type { i32*, i32* }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@__LA_FALLTHROUGH = common dso_local global i32 0, align 4
@ARCHIVE_FATAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i32] [i32 101, i32 102, i32 97, i32 117, i32 108, i32 116, i32 0], align 4
@.str.1 = private unnamed_addr constant [4 x i32] [i32 115, i32 101, i32 114, i32 0], align 4
@.str.2 = private unnamed_addr constant [5 x i32] [i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.3 = private unnamed_addr constant [5 x i32] [i32 116, i32 104, i32 101, i32 114, i32 0], align 4
@.str.4 = private unnamed_addr constant [4 x i32] [i32 97, i32 115, i32 107, i32 0], align 4
@ARCHIVE_WARN = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_USER = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_GROUP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i32] [i32 117, i32 115, i32 101, i32 114, i32 0], align 4
@.str.6 = private unnamed_addr constant [6 x i32] [i32 103, i32 114, i32 111, i32 117, i32 112, i32 0], align 4
@.str.7 = private unnamed_addr constant [7 x i32] [i32 111, i32 119, i32 110, i32 101, i32 114, i32 64, i32 0], align 4
@.str.8 = private unnamed_addr constant [7 x i32] [i32 103, i32 114, i32 111, i32 117, i32 112, i32 64, i32 0], align 4
@.str.9 = private unnamed_addr constant [10 x i32] [i32 101, i32 118, i32 101, i32 114, i32 121, i32 111, i32 110, i32 101, i32 64, i32 0], align 4
@ARCHIVE_ENTRY_ACL_EVERYONE = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i32] [i32 100, i32 101, i32 110, i32 121, i32 0], align 4
@ARCHIVE_ENTRY_ACL_TYPE_DENY = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [6 x i32] [i32 97, i32 108, i32 108, i32 111, i32 119, i32 0], align 4
@ARCHIVE_ENTRY_ACL_TYPE_ALLOW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [6 x i32] [i32 97, i32 117, i32 100, i32 105, i32 116, i32 0], align 4
@ARCHIVE_ENTRY_ACL_TYPE_AUDIT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i32] [i32 97, i32 108, i32 97, i32 114, i32 109, i32 0], align 4
@ARCHIVE_ENTRY_ACL_TYPE_ALARM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @archive_acl_from_text_w(%struct.archive_acl* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_acl*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [6 x %struct.anon], align 16
  %9 = alloca %struct.anon, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
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
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  store %struct.archive_acl* %0, %struct.archive_acl** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %27 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %27, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %28 = load i32, i32* %7, align 4
  switch i32 %28, label %33 [
    i32 129, label %29
    i32 132, label %31
    i32 131, label %31
    i32 130, label %32
  ]

29:                                               ; preds = %3
  store i32 132, i32* %7, align 4
  %30 = load i32, i32* @__LA_FALLTHROUGH, align 4
  br label %31

31:                                               ; preds = %3, %3, %29
  store i32 5, i32* %12, align 4
  br label %35

32:                                               ; preds = %3
  store i32 6, i32* %12, align 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* @ARCHIVE_FATAL, align 4
  store i32 %34, i32* %4, align 4
  br label %597

35:                                               ; preds = %32, %31
  br label %36

36:                                               ; preds = %588, %543, %481, %464, %428, %371, %347, %311, %97, %35
  %37 = load i32*, i32** %6, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32*, i32** %6, align 8
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br label %43

43:                                               ; preds = %39, %36
  %44 = phi i1 [ false, %36 ], [ %42, %39 ]
  br i1 %44, label %45, label %592

45:                                               ; preds = %43
  store i32 0, i32* %13, align 4
  br label %46

46:                                               ; preds = %65, %45
  %47 = call i32 @next_field_w(i32** %6, i32** %25, i32** %26, i32* %24)
  %48 = load i32, i32* %13, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %46
  %52 = load i32*, i32** %25, align 8
  %53 = load i32, i32* %13, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  store i32* %52, i32** %56, align 16
  %57 = load i32*, i32** %26, align 8
  %58 = load i32, i32* %13, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %59
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 1
  store i32* %57, i32** %61, align 8
  br label %62

62:                                               ; preds = %51, %46
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %13, align 4
  br label %65

65:                                               ; preds = %62
  %66 = load i32, i32* %24, align 4
  %67 = icmp eq i32 %66, 58
  br i1 %67, label %46, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* %13, align 4
  store i32 %69, i32* %14, align 4
  br label %70

70:                                               ; preds = %83, %68
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %86

74:                                               ; preds = %70
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 1
  store i32* null, i32** %78, align 8
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %80
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  store i32* null, i32** %82, align 16
  br label %83

83:                                               ; preds = %74
  %84 = load i32, i32* %14, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %14, align 4
  br label %70

86:                                               ; preds = %70
  %87 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 16
  %90 = icmp ne i32* %89, null
  br i1 %90, label %91, label %98

91:                                               ; preds = %86
  %92 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 16
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 35
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %36

98:                                               ; preds = %91, %86
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 -1, i32* %22, align 4
  store i32 0, i32* %21, align 4
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  store i32* null, i32** %99, align 8
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  store i32* null, i32** %100, align 8
  %101 = load i32, i32* %7, align 4
  %102 = icmp ne i32 %101, 130
  br i1 %102, label %103, label %374

103:                                              ; preds = %98
  %104 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %105 = getelementptr inbounds %struct.anon, %struct.anon* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 16
  store i32* %106, i32** %10, align 8
  %107 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 1
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 16
  %113 = ptrtoint i32* %109 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  store i64 %116, i64* %23, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = load i32, i32* %117, align 4
  %119 = icmp eq i32 %118, 100
  br i1 %119, label %120, label %141

120:                                              ; preds = %103
  %121 = load i64, i64* %23, align 8
  %122 = icmp eq i64 %121, 1
  br i1 %122, label %131, label %123

123:                                              ; preds = %120
  %124 = load i64, i64* %23, align 8
  %125 = icmp uge i64 %124, 7
  br i1 %125, label %126, label %141

126:                                              ; preds = %123
  %127 = load i32*, i32** %10, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  %129 = call i64 @wmemcmp(i32* %128, i8* bitcast ([7 x i32]* @.str to i8*), i32 6)
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %141

131:                                              ; preds = %126, %120
  store i32 131, i32* %18, align 4
  %132 = load i64, i64* %23, align 8
  %133 = icmp ugt i64 %132, 7
  br i1 %133, label %134, label %139

134:                                              ; preds = %131
  %135 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 16
  %138 = getelementptr inbounds i32, i32* %137, i64 7
  store i32* %138, i32** %136, align 16
  br label %140

139:                                              ; preds = %131
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %139, %134
  br label %143

141:                                              ; preds = %126, %123, %103
  %142 = load i32, i32* %7, align 4
  store i32 %142, i32* %18, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.anon, %struct.anon* %147, i32 0, i32 0
  %149 = load i32*, i32** %148, align 16
  %150 = load i32, i32* %14, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %152
  %154 = getelementptr inbounds %struct.anon, %struct.anon* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @isint_w(i32* %149, i32* %155, i32* %22)
  %157 = load i32, i32* %22, align 4
  %158 = icmp eq i32 %157, -1
  br i1 %158, label %159, label %178

159:                                              ; preds = %143
  %160 = load i32, i32* %13, align 4
  %161 = load i32, i32* %14, align 4
  %162 = add nsw i32 %161, 3
  %163 = icmp sgt i32 %160, %162
  br i1 %163, label %164, label %178

164:                                              ; preds = %159
  %165 = load i32, i32* %14, align 4
  %166 = add nsw i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %167
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 16
  %171 = load i32, i32* %14, align 4
  %172 = add nsw i32 %171, 3
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = call i32 @isint_w(i32* %170, i32* %176, i32* %22)
  br label %178

178:                                              ; preds = %164, %159, %143
  store i32 0, i32* %20, align 4
  %179 = load i32, i32* %14, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 16
  store i32* %183, i32** %10, align 8
  %184 = load i32, i32* %14, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %185
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 16
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32* %189, i32** %11, align 8
  %190 = load i32, i32* %14, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %191
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 1
  %194 = load i32*, i32** %193, align 8
  %195 = load i32, i32* %14, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %196
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 0
  %199 = load i32*, i32** %198, align 16
  %200 = ptrtoint i32* %194 to i64
  %201 = ptrtoint i32* %199 to i64
  %202 = sub i64 %200, %201
  %203 = sdiv exact i64 %202, 4
  store i64 %203, i64* %23, align 8
  %204 = load i32*, i32** %10, align 8
  %205 = load i32, i32* %204, align 4
  switch i32 %205, label %254 [
    i32 117, label %206
    i32 103, label %218
    i32 111, label %230
    i32 109, label %242
  ]

206:                                              ; preds = %178
  %207 = load i64, i64* %23, align 8
  %208 = icmp eq i64 %207, 1
  br i1 %208, label %216, label %209

209:                                              ; preds = %206
  %210 = load i64, i64* %23, align 8
  %211 = icmp eq i64 %210, 4
  br i1 %211, label %212, label %217

212:                                              ; preds = %209
  %213 = load i32*, i32** %11, align 8
  %214 = call i64 @wmemcmp(i32* %213, i8* bitcast ([4 x i32]* @.str.1 to i8*), i32 3)
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %212, %206
  store i32 128, i32* %20, align 4
  br label %217

217:                                              ; preds = %216, %212, %209
  br label %255

218:                                              ; preds = %178
  %219 = load i64, i64* %23, align 8
  %220 = icmp eq i64 %219, 1
  br i1 %220, label %228, label %221

221:                                              ; preds = %218
  %222 = load i64, i64* %23, align 8
  %223 = icmp eq i64 %222, 5
  br i1 %223, label %224, label %229

224:                                              ; preds = %221
  %225 = load i32*, i32** %11, align 8
  %226 = call i64 @wmemcmp(i32* %225, i8* bitcast ([5 x i32]* @.str.2 to i8*), i32 4)
  %227 = icmp eq i64 %226, 0
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %218
  store i32 135, i32* %20, align 4
  br label %229

229:                                              ; preds = %228, %224, %221
  br label %255

230:                                              ; preds = %178
  %231 = load i64, i64* %23, align 8
  %232 = icmp eq i64 %231, 1
  br i1 %232, label %240, label %233

233:                                              ; preds = %230
  %234 = load i64, i64* %23, align 8
  %235 = icmp eq i64 %234, 5
  br i1 %235, label %236, label %241

236:                                              ; preds = %233
  %237 = load i32*, i32** %11, align 8
  %238 = call i64 @wmemcmp(i32* %237, i8* bitcast ([5 x i32]* @.str.3 to i8*), i32 4)
  %239 = icmp eq i64 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %236, %230
  store i32 133, i32* %20, align 4
  br label %241

241:                                              ; preds = %240, %236, %233
  br label %255

242:                                              ; preds = %178
  %243 = load i64, i64* %23, align 8
  %244 = icmp eq i64 %243, 1
  br i1 %244, label %252, label %245

245:                                              ; preds = %242
  %246 = load i64, i64* %23, align 8
  %247 = icmp eq i64 %246, 4
  br i1 %247, label %248, label %253

248:                                              ; preds = %245
  %249 = load i32*, i32** %11, align 8
  %250 = call i64 @wmemcmp(i32* %249, i8* bitcast ([4 x i32]* @.str.4 to i8*), i32 3)
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %248, %242
  store i32 134, i32* %20, align 4
  br label %253

253:                                              ; preds = %252, %248, %245
  br label %255

254:                                              ; preds = %178
  br label %255

255:                                              ; preds = %254, %253, %241, %229, %217
  %256 = load i32, i32* %20, align 4
  switch i32 %256, label %347 [
    i32 133, label %257
    i32 134, label %257
    i32 128, label %315
    i32 135, label %315
  ]

257:                                              ; preds = %255, %255
  %258 = load i32, i32* %13, align 4
  %259 = load i32, i32* %14, align 4
  %260 = add nsw i32 %259, 2
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %262, label %292

262:                                              ; preds = %257
  %263 = load i32, i32* %14, align 4
  %264 = add nsw i32 %263, 1
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %265
  %267 = getelementptr inbounds %struct.anon, %struct.anon* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 16
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %271
  %273 = getelementptr inbounds %struct.anon, %struct.anon* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = icmp ult i32* %268, %274
  br i1 %275, label %276, label %292

276:                                              ; preds = %262
  %277 = load i32, i32* %14, align 4
  %278 = add nsw i32 %277, 1
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %279
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %280, i32 0, i32 0
  %282 = load i32*, i32** %281, align 16
  %283 = load i32, i32* %14, align 4
  %284 = add nsw i32 %283, 1
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %285
  %287 = getelementptr inbounds %struct.anon, %struct.anon* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = call i64 @ismode_w(i32* %282, i32* %288, i32* %21)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %292

291:                                              ; preds = %276
  store i32 1, i32* %16, align 4
  br label %314

292:                                              ; preds = %276, %262, %257
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* %14, align 4
  %295 = add nsw i32 %294, 3
  %296 = icmp eq i32 %293, %295
  br i1 %296, label %297, label %313

297:                                              ; preds = %292
  %298 = load i32, i32* %14, align 4
  %299 = add nsw i32 %298, 1
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %300
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %301, i32 0, i32 0
  %303 = load i32*, i32** %302, align 16
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %306
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 1
  %309 = load i32*, i32** %308, align 8
  %310 = icmp ult i32* %303, %309
  br i1 %310, label %311, label %313

311:                                              ; preds = %297
  %312 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %312, i32* %17, align 4
  br label %36

313:                                              ; preds = %297, %292
  br label %314

314:                                              ; preds = %313, %291
  br label %349

315:                                              ; preds = %255, %255
  %316 = load i32, i32* %22, align 4
  %317 = icmp ne i32 %316, -1
  br i1 %317, label %332, label %318

318:                                              ; preds = %315
  %319 = load i32, i32* %14, align 4
  %320 = add nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %321
  %323 = getelementptr inbounds %struct.anon, %struct.anon* %322, i32 0, i32 0
  %324 = load i32*, i32** %323, align 16
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %327
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %328, i32 0, i32 1
  %330 = load i32*, i32** %329, align 8
  %331 = icmp ult i32* %324, %330
  br i1 %331, label %332, label %346

332:                                              ; preds = %318, %315
  %333 = load i32, i32* %14, align 4
  %334 = add nsw i32 %333, 1
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %335
  %337 = bitcast %struct.anon* %9 to i8*
  %338 = bitcast %struct.anon* %336 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %337, i8* align 16 %338, i64 16, i1 false)
  %339 = load i32, i32* %20, align 4
  %340 = icmp eq i32 %339, 128
  br i1 %340, label %341, label %343

341:                                              ; preds = %332
  %342 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  store i32 %342, i32* %20, align 4
  br label %345

343:                                              ; preds = %332
  %344 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  store i32 %344, i32* %20, align 4
  br label %345

345:                                              ; preds = %343, %341
  br label %346

346:                                              ; preds = %345, %318
  br label %349

347:                                              ; preds = %255
  %348 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %348, i32* %17, align 4
  br label %36

349:                                              ; preds = %346, %314
  %350 = load i32, i32* %21, align 4
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %373

352:                                              ; preds = %349
  %353 = load i32, i32* %14, align 4
  %354 = add nsw i32 %353, 2
  %355 = load i32, i32* %16, align 4
  %356 = sub nsw i32 %354, %355
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %357
  %359 = getelementptr inbounds %struct.anon, %struct.anon* %358, i32 0, i32 0
  %360 = load i32*, i32** %359, align 16
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %361, 2
  %363 = load i32, i32* %16, align 4
  %364 = sub nsw i32 %362, %363
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %365
  %367 = getelementptr inbounds %struct.anon, %struct.anon* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = call i64 @ismode_w(i32* %360, i32* %368, i32* %21)
  %370 = icmp ne i64 %369, 0
  br i1 %370, label %373, label %371

371:                                              ; preds = %352
  %372 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %372, i32* %17, align 4
  br label %36

373:                                              ; preds = %352, %349
  br label %559

374:                                              ; preds = %98
  %375 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %376 = getelementptr inbounds %struct.anon, %struct.anon* %375, i32 0, i32 0
  %377 = load i32*, i32** %376, align 16
  store i32* %377, i32** %10, align 8
  %378 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %379 = getelementptr inbounds %struct.anon, %struct.anon* %378, i32 0, i32 1
  %380 = load i32*, i32** %379, align 8
  %381 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 0
  %382 = getelementptr inbounds %struct.anon, %struct.anon* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 16
  %384 = ptrtoint i32* %380 to i64
  %385 = ptrtoint i32* %383 to i64
  %386 = sub i64 %384, %385
  %387 = sdiv exact i64 %386, 4
  store i64 %387, i64* %23, align 8
  store i32 0, i32* %20, align 4
  %388 = load i64, i64* %23, align 8
  switch i64 %388, label %424 [
    i64 4, label %389
    i64 5, label %396
    i64 6, label %403
    i64 9, label %417
  ]

389:                                              ; preds = %374
  %390 = load i32*, i32** %10, align 8
  %391 = call i64 @wmemcmp(i32* %390, i8* bitcast ([5 x i32]* @.str.5 to i8*), i32 4)
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %395

393:                                              ; preds = %389
  %394 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  store i32 %394, i32* %20, align 4
  br label %395

395:                                              ; preds = %393, %389
  br label %425

396:                                              ; preds = %374
  %397 = load i32*, i32** %10, align 8
  %398 = call i64 @wmemcmp(i32* %397, i8* bitcast ([6 x i32]* @.str.6 to i8*), i32 5)
  %399 = icmp eq i64 %398, 0
  br i1 %399, label %400, label %402

400:                                              ; preds = %396
  %401 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  store i32 %401, i32* %20, align 4
  br label %402

402:                                              ; preds = %400, %396
  br label %425

403:                                              ; preds = %374
  %404 = load i32*, i32** %10, align 8
  %405 = call i64 @wmemcmp(i32* %404, i8* bitcast ([7 x i32]* @.str.7 to i8*), i32 6)
  %406 = icmp eq i64 %405, 0
  br i1 %406, label %407, label %408

407:                                              ; preds = %403
  store i32 128, i32* %20, align 4
  br label %416

408:                                              ; preds = %403
  %409 = load i32*, i32** %10, align 8
  %410 = load i64, i64* %23, align 8
  %411 = trunc i64 %410 to i32
  %412 = call i64 @wmemcmp(i32* %409, i8* bitcast ([7 x i32]* @.str.8 to i8*), i32 %411)
  %413 = icmp eq i64 %412, 0
  br i1 %413, label %414, label %415

414:                                              ; preds = %408
  store i32 135, i32* %20, align 4
  br label %415

415:                                              ; preds = %414, %408
  br label %416

416:                                              ; preds = %415, %407
  br label %425

417:                                              ; preds = %374
  %418 = load i32*, i32** %10, align 8
  %419 = call i64 @wmemcmp(i32* %418, i8* bitcast ([10 x i32]* @.str.9 to i8*), i32 9)
  %420 = icmp eq i64 %419, 0
  br i1 %420, label %421, label %423

421:                                              ; preds = %417
  %422 = load i32, i32* @ARCHIVE_ENTRY_ACL_EVERYONE, align 4
  store i32 %422, i32* %20, align 4
  br label %423

423:                                              ; preds = %421, %417
  br label %424

424:                                              ; preds = %374, %423
  br label %425

425:                                              ; preds = %424, %416, %402, %395
  %426 = load i32, i32* %20, align 4
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %430

428:                                              ; preds = %425
  %429 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %429, i32* %17, align 4
  br label %36

430:                                              ; preds = %425
  %431 = load i32, i32* %20, align 4
  %432 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER, align 4
  %433 = icmp eq i32 %431, %432
  br i1 %433, label %438, label %434

434:                                              ; preds = %430
  %435 = load i32, i32* %20, align 4
  %436 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP, align 4
  %437 = icmp eq i32 %435, %436
  br i1 %437, label %438, label %447

438:                                              ; preds = %434, %430
  store i32 1, i32* %14, align 4
  %439 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 1
  %440 = bitcast %struct.anon* %9 to i8*
  %441 = bitcast %struct.anon* %439 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %440, i8* align 16 %441, i64 16, i1 false)
  %442 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %443 = load i32*, i32** %442, align 8
  %444 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %445 = load i32*, i32** %444, align 8
  %446 = call i32 @isint_w(i32* %443, i32* %445, i32* %22)
  br label %448

447:                                              ; preds = %434
  store i32 0, i32* %14, align 4
  br label %448

448:                                              ; preds = %447, %438
  br label %449

449:                                              ; preds = %448
  %450 = load i32, i32* %14, align 4
  %451 = add nsw i32 1, %450
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %452
  %454 = getelementptr inbounds %struct.anon, %struct.anon* %453, i32 0, i32 0
  %455 = load i32*, i32** %454, align 16
  %456 = load i32, i32* %14, align 4
  %457 = add nsw i32 1, %456
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %458
  %460 = getelementptr inbounds %struct.anon, %struct.anon* %459, i32 0, i32 1
  %461 = load i32*, i32** %460, align 8
  %462 = call i32 @is_nfs4_perms_w(i32* %455, i32* %461, i32* %21)
  %463 = icmp ne i32 %462, 0
  br i1 %463, label %466, label %464

464:                                              ; preds = %449
  %465 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %465, i32* %17, align 4
  br label %36

466:                                              ; preds = %449
  %467 = load i32, i32* %14, align 4
  %468 = add nsw i32 2, %467
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %469
  %471 = getelementptr inbounds %struct.anon, %struct.anon* %470, i32 0, i32 0
  %472 = load i32*, i32** %471, align 16
  %473 = load i32, i32* %14, align 4
  %474 = add nsw i32 2, %473
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %475
  %477 = getelementptr inbounds %struct.anon, %struct.anon* %476, i32 0, i32 1
  %478 = load i32*, i32** %477, align 8
  %479 = call i32 @is_nfs4_flags_w(i32* %472, i32* %478, i32* %21)
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %483, label %481

481:                                              ; preds = %466
  %482 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %482, i32* %17, align 4
  br label %36

483:                                              ; preds = %466
  %484 = load i32, i32* %14, align 4
  %485 = add nsw i32 3, %484
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %486
  %488 = getelementptr inbounds %struct.anon, %struct.anon* %487, i32 0, i32 0
  %489 = load i32*, i32** %488, align 16
  store i32* %489, i32** %10, align 8
  %490 = load i32, i32* %14, align 4
  %491 = add nsw i32 3, %490
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %492
  %494 = getelementptr inbounds %struct.anon, %struct.anon* %493, i32 0, i32 1
  %495 = load i32*, i32** %494, align 8
  %496 = load i32, i32* %14, align 4
  %497 = add nsw i32 3, %496
  %498 = sext i32 %497 to i64
  %499 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %498
  %500 = getelementptr inbounds %struct.anon, %struct.anon* %499, i32 0, i32 0
  %501 = load i32*, i32** %500, align 16
  %502 = ptrtoint i32* %495 to i64
  %503 = ptrtoint i32* %501 to i64
  %504 = sub i64 %502, %503
  %505 = sdiv exact i64 %504, 4
  store i64 %505, i64* %23, align 8
  store i32 0, i32* %18, align 4
  %506 = load i64, i64* %23, align 8
  %507 = icmp eq i64 %506, 4
  br i1 %507, label %508, label %515

508:                                              ; preds = %483
  %509 = load i32*, i32** %10, align 8
  %510 = call i64 @wmemcmp(i32* %509, i8* bitcast ([5 x i32]* @.str.10 to i8*), i32 4)
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %514

512:                                              ; preds = %508
  %513 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_DENY, align 4
  store i32 %513, i32* %18, align 4
  br label %514

514:                                              ; preds = %512, %508
  br label %540

515:                                              ; preds = %483
  %516 = load i64, i64* %23, align 8
  %517 = icmp eq i64 %516, 5
  br i1 %517, label %518, label %539

518:                                              ; preds = %515
  %519 = load i32*, i32** %10, align 8
  %520 = call i64 @wmemcmp(i32* %519, i8* bitcast ([6 x i32]* @.str.11 to i8*), i32 5)
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %522, label %524

522:                                              ; preds = %518
  %523 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ALLOW, align 4
  store i32 %523, i32* %18, align 4
  br label %538

524:                                              ; preds = %518
  %525 = load i32*, i32** %10, align 8
  %526 = call i64 @wmemcmp(i32* %525, i8* bitcast ([6 x i32]* @.str.12 to i8*), i32 5)
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %528, label %530

528:                                              ; preds = %524
  %529 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_AUDIT, align 4
  store i32 %529, i32* %18, align 4
  br label %537

530:                                              ; preds = %524
  %531 = load i32*, i32** %10, align 8
  %532 = call i64 @wmemcmp(i32* %531, i8* bitcast ([6 x i32]* @.str.13 to i8*), i32 5)
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %534, label %536

534:                                              ; preds = %530
  %535 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ALARM, align 4
  store i32 %535, i32* %18, align 4
  br label %536

536:                                              ; preds = %534, %530
  br label %537

537:                                              ; preds = %536, %528
  br label %538

538:                                              ; preds = %537, %522
  br label %539

539:                                              ; preds = %538, %515
  br label %540

540:                                              ; preds = %539, %514
  %541 = load i32, i32* %18, align 4
  %542 = icmp eq i32 %541, 0
  br i1 %542, label %543, label %545

543:                                              ; preds = %540
  %544 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %544, i32* %17, align 4
  br label %36

545:                                              ; preds = %540
  %546 = load i32, i32* %14, align 4
  %547 = add nsw i32 4, %546
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %548
  %550 = getelementptr inbounds %struct.anon, %struct.anon* %549, i32 0, i32 0
  %551 = load i32*, i32** %550, align 16
  %552 = load i32, i32* %14, align 4
  %553 = add nsw i32 4, %552
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [6 x %struct.anon], [6 x %struct.anon]* %8, i64 0, i64 %554
  %556 = getelementptr inbounds %struct.anon, %struct.anon* %555, i32 0, i32 1
  %557 = load i32*, i32** %556, align 8
  %558 = call i32 @isint_w(i32* %551, i32* %557, i32* %22)
  br label %559

559:                                              ; preds = %545, %373
  %560 = load %struct.archive_acl*, %struct.archive_acl** %5, align 8
  %561 = load i32, i32* %18, align 4
  %562 = load i32, i32* %21, align 4
  %563 = load i32, i32* %20, align 4
  %564 = load i32, i32* %22, align 4
  %565 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %566 = load i32*, i32** %565, align 8
  %567 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 1
  %568 = load i32*, i32** %567, align 8
  %569 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %570 = load i32*, i32** %569, align 8
  %571 = ptrtoint i32* %568 to i64
  %572 = ptrtoint i32* %570 to i64
  %573 = sub i64 %571, %572
  %574 = sdiv exact i64 %573, 4
  %575 = trunc i64 %574 to i32
  %576 = call i32 @archive_acl_add_entry_w_len(%struct.archive_acl* %560, i32 %561, i32 %562, i32 %563, i32 %564, i32* %566, i32 %575)
  store i32 %576, i32* %15, align 4
  %577 = load i32, i32* %15, align 4
  %578 = load i32, i32* @ARCHIVE_WARN, align 4
  %579 = icmp slt i32 %577, %578
  br i1 %579, label %580, label %582

580:                                              ; preds = %559
  %581 = load i32, i32* %15, align 4
  store i32 %581, i32* %4, align 4
  br label %597

582:                                              ; preds = %559
  %583 = load i32, i32* %15, align 4
  %584 = load i32, i32* @ARCHIVE_OK, align 4
  %585 = icmp ne i32 %583, %584
  br i1 %585, label %586, label %588

586:                                              ; preds = %582
  %587 = load i32, i32* @ARCHIVE_WARN, align 4
  store i32 %587, i32* %17, align 4
  br label %588

588:                                              ; preds = %586, %582
  %589 = load i32, i32* %18, align 4
  %590 = load i32, i32* %19, align 4
  %591 = or i32 %590, %589
  store i32 %591, i32* %19, align 4
  br label %36

592:                                              ; preds = %43
  %593 = load %struct.archive_acl*, %struct.archive_acl** %5, align 8
  %594 = load i32, i32* %19, align 4
  %595 = call i32 @archive_acl_reset(%struct.archive_acl* %593, i32 %594)
  %596 = load i32, i32* %17, align 4
  store i32 %596, i32* %4, align 4
  br label %597

597:                                              ; preds = %592, %580, %33
  %598 = load i32, i32* %4, align 4
  ret i32 %598
}

declare dso_local i32 @next_field_w(i32**, i32**, i32**, i32*) #1

declare dso_local i64 @wmemcmp(i32*, i8*, i32) #1

declare dso_local i32 @isint_w(i32*, i32*, i32*) #1

declare dso_local i64 @ismode_w(i32*, i32*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @is_nfs4_perms_w(i32*, i32*, i32*) #1

declare dso_local i32 @is_nfs4_flags_w(i32*, i32*, i32*) #1

declare dso_local i32 @archive_acl_add_entry_w_len(%struct.archive_acl*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @archive_acl_reset(%struct.archive_acl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
