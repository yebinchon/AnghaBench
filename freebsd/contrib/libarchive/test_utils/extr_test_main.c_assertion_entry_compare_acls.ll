; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_entry_compare_acls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/test_utils/extr_test_main.c_assertion_entry_compare_acls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_entry = type { i32 }
%struct.archive_test_acl_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [35 x i8] c"No ACL's to compare, type mask: %d\00", align 1
@ARCHIVE_ENTRY_ACL_TYPE_ACCESS = common dso_local global i32 0, align 4
@ARCHIVE_ENTRY_ACL_USER_OBJ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"No match for user_obj perm\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"USER_OBJ permset (%02o) != user mode (%02o)\00", align 1
@ARCHIVE_ENTRY_ACL_GROUP_OBJ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"No match for group_obj perm\00", align 1
@.str.4 = private unnamed_addr constant [46 x i8] c"GROUP_OBJ permset (%02o) != group mode (%02o)\00", align 1
@ARCHIVE_ENTRY_ACL_OTHER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"No match for other perm\00", align 1
@.str.6 = private unnamed_addr constant [42 x i8] c"OTHER permset (%02o) != other mode (%02o)\00", align 1
@.str.7 = private unnamed_addr constant [85 x i8] c"Could not find match for ACL (type=%#010x,permset=%#010x,tag=%d,qual=%d,name=``%s'')\00", align 1
@ARCHIVE_EOF = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [27 x i8] c"Should not exit before EOF\00", align 1
@.str.9 = private unnamed_addr constant [43 x i8] c"Mode (%02o) and entry mode (%02o) mismatch\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @assertion_entry_compare_acls(i8* %0, i32 %1, %struct.archive_entry* %2, %struct.archive_test_acl_t* %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.archive_entry*, align 8
  %12 = alloca %struct.archive_test_acl_t*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  store i8* %0, i8** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.archive_entry* %2, %struct.archive_entry** %11, align 8
  store %struct.archive_test_acl_t* %3, %struct.archive_test_acl_t** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %27 = load i8*, i8** %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = call i32 @assertion_count(i8* %27, i32 %28)
  store i32 0, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* %13, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 4, %31
  %33 = trunc i64 %32 to i32
  %34 = call i32* @malloc(i32 %33)
  store i32* %34, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %35

35:                                               ; preds = %58, %7
  %36 = load i32, i32* %17, align 4
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %35
  %40 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %41 = load i32, i32* %17, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %40, i64 %42
  %44 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %14, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %39
  %50 = load i32, i32* %17, align 4
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %19, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load i32, i32* %19, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %19, align 4
  br label %57

57:                                               ; preds = %49, %39
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %35

61:                                               ; preds = %35
  %62 = load i32, i32* %19, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %14, align 4
  %68 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %65, i32 %66, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %67)
  store i32 1, i32* %8, align 4
  br label %312

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %230, %69
  %71 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @archive_entry_acl_next(%struct.archive_entry* %71, i32 %72, i32* %21, i32* %22, i32* %23, i32* %24, i8** %26)
  store i32 %73, i32* %18, align 4
  %74 = icmp eq i32 0, %73
  br i1 %74, label %75, label %231

75:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  store i32 0, i32* %25, align 4
  br label %76

76:                                               ; preds = %116, %75
  %77 = load i32, i32* %17, align 4
  %78 = load i32, i32* %19, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %84

80:                                               ; preds = %76
  %81 = load i32, i32* %25, align 4
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i1 [ false, %76 ], [ %83, %80 ]
  br i1 %85, label %86, label %119

86:                                               ; preds = %84
  %87 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %88 = load i32*, i32** %16, align 8
  %89 = load i32, i32* %17, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %87, i64 %93
  %95 = load i32, i32* %21, align 4
  %96 = load i32, i32* %22, align 4
  %97 = load i32, i32* %23, align 4
  %98 = load i32, i32* %24, align 4
  %99 = load i8*, i8** %26, align 8
  %100 = call i64 @archive_test_acl_match(%struct.archive_test_acl_t* %94, i32 %95, i32 %96, i32 %97, i32 %98, i8* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %115

102:                                              ; preds = %86
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* %19, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %16, align 8
  %110 = load i32, i32* %17, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %19, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %19, align 4
  store i32 1, i32* %25, align 4
  br label %115

115:                                              ; preds = %102, %86
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %17, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %17, align 4
  br label %76

119:                                              ; preds = %84
  %120 = load i32, i32* %21, align 4
  %121 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %151

123:                                              ; preds = %119
  %124 = load i32, i32* %23, align 4
  %125 = load i32, i32* @ARCHIVE_ENTRY_ACL_USER_OBJ, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %123
  %128 = load i32, i32* %25, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %135, label %130

130:                                              ; preds = %127
  %131 = load i8*, i8** %9, align 8
  %132 = load i32, i32* %10, align 4
  %133 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %131, i32 %132, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %134 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %135

135:                                              ; preds = %130, %127
  %136 = load i32, i32* %22, align 4
  %137 = shl i32 %136, 6
  %138 = load i32, i32* %15, align 4
  %139 = and i32 %138, 448
  %140 = icmp ne i32 %137, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %135
  %142 = load i8*, i8** %9, align 8
  %143 = load i32, i32* %10, align 4
  %144 = load i32, i32* %22, align 4
  %145 = load i32, i32* %15, align 4
  %146 = ashr i32 %145, 6
  %147 = and i32 7, %146
  %148 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %142, i32 %143, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %144, i32 %147)
  %149 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %150

150:                                              ; preds = %141, %135
  br label %230

151:                                              ; preds = %123, %119
  %152 = load i32, i32* %21, align 4
  %153 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %183

155:                                              ; preds = %151
  %156 = load i32, i32* %23, align 4
  %157 = load i32, i32* @ARCHIVE_ENTRY_ACL_GROUP_OBJ, align 4
  %158 = icmp eq i32 %156, %157
  br i1 %158, label %159, label %183

159:                                              ; preds = %155
  %160 = load i32, i32* %25, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %167, label %162

162:                                              ; preds = %159
  %163 = load i8*, i8** %9, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %163, i32 %164, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %166 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %167

167:                                              ; preds = %162, %159
  %168 = load i32, i32* %22, align 4
  %169 = shl i32 %168, 3
  %170 = load i32, i32* %15, align 4
  %171 = and i32 %170, 56
  %172 = icmp ne i32 %169, %171
  br i1 %172, label %173, label %182

173:                                              ; preds = %167
  %174 = load i8*, i8** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* %22, align 4
  %177 = load i32, i32* %15, align 4
  %178 = ashr i32 %177, 3
  %179 = and i32 7, %178
  %180 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %174, i32 %175, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i32 %176, i32 %179)
  %181 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %182

182:                                              ; preds = %173, %167
  br label %229

183:                                              ; preds = %155, %151
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %186 = icmp eq i32 %184, %185
  br i1 %186, label %187, label %214

187:                                              ; preds = %183
  %188 = load i32, i32* %23, align 4
  %189 = load i32, i32* @ARCHIVE_ENTRY_ACL_OTHER, align 4
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %214

191:                                              ; preds = %187
  %192 = load i32, i32* %25, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %199, label %194

194:                                              ; preds = %191
  %195 = load i8*, i8** %9, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %195, i32 %196, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  %198 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %199

199:                                              ; preds = %194, %191
  %200 = load i32, i32* %22, align 4
  %201 = shl i32 %200, 0
  %202 = load i32, i32* %15, align 4
  %203 = and i32 %202, 7
  %204 = icmp ne i32 %201, %203
  br i1 %204, label %205, label %213

205:                                              ; preds = %199
  %206 = load i8*, i8** %9, align 8
  %207 = load i32, i32* %10, align 4
  %208 = load i32, i32* %22, align 4
  %209 = load i32, i32* %15, align 4
  %210 = and i32 %209, 7
  %211 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %206, i32 %207, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.6, i64 0, i64 0), i32 %208, i32 %210)
  %212 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %213

213:                                              ; preds = %205, %199
  br label %228

214:                                              ; preds = %187, %183
  %215 = load i32, i32* %25, align 4
  %216 = icmp ne i32 %215, 1
  br i1 %216, label %217, label %227

217:                                              ; preds = %214
  %218 = load i8*, i8** %9, align 8
  %219 = load i32, i32* %10, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32, i32* %22, align 4
  %222 = load i32, i32* %23, align 4
  %223 = load i32, i32* %24, align 4
  %224 = load i8*, i8** %26, align 8
  %225 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %218, i32 %219, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %220, i32 %221, i32 %222, i32 %223, i8* %224)
  %226 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %227

227:                                              ; preds = %217, %214
  br label %228

228:                                              ; preds = %227, %213
  br label %229

229:                                              ; preds = %228, %182
  br label %230

230:                                              ; preds = %229, %150
  br label %70

231:                                              ; preds = %70
  %232 = load i32, i32* %18, align 4
  %233 = load i32, i32* @ARCHIVE_EOF, align 4
  %234 = icmp ne i32 %232, %233
  br i1 %234, label %235, label %240

235:                                              ; preds = %231
  %236 = load i8*, i8** %9, align 8
  %237 = load i32, i32* %10, align 4
  %238 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %236, i32 %237, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i64 0, i64 0))
  %239 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %240

240:                                              ; preds = %235, %231
  %241 = load i32, i32* %14, align 4
  %242 = load i32, i32* @ARCHIVE_ENTRY_ACL_TYPE_ACCESS, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %260

245:                                              ; preds = %240
  %246 = load i32, i32* %15, align 4
  %247 = and i32 %246, 511
  %248 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %249 = call i32 @archive_entry_mode(%struct.archive_entry* %248)
  %250 = and i32 %249, 511
  %251 = icmp ne i32 %247, %250
  br i1 %251, label %252, label %260

252:                                              ; preds = %245
  %253 = load i8*, i8** %9, align 8
  %254 = load i32, i32* %10, align 4
  %255 = load i32, i32* %15, align 4
  %256 = load %struct.archive_entry*, %struct.archive_entry** %11, align 8
  %257 = call i32 @archive_entry_mode(%struct.archive_entry* %256)
  %258 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %253, i32 %254, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.9, i64 0, i64 0), i32 %255, i32 %257)
  %259 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %260

260:                                              ; preds = %252, %245, %240
  %261 = load i32, i32* %19, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %308

263:                                              ; preds = %260
  %264 = load i8*, i8** %9, align 8
  %265 = load i32, i32* %10, align 4
  %266 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %267 = load i32*, i32** %16, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 0
  %269 = load i32, i32* %268, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %266, i64 %270
  %272 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %275 = load i32*, i32** %16, align 8
  %276 = getelementptr inbounds i32, i32* %275, i64 0
  %277 = load i32, i32* %276, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %274, i64 %278
  %280 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %283 = load i32*, i32** %16, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 0
  %285 = load i32, i32* %284, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %282, i64 %286
  %288 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %287, i32 0, i32 2
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %291 = load i32*, i32** %16, align 8
  %292 = getelementptr inbounds i32, i32* %291, i64 0
  %293 = load i32, i32* %292, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %290, i64 %294
  %296 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %295, i32 0, i32 3
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.archive_test_acl_t*, %struct.archive_test_acl_t** %12, align 8
  %299 = load i32*, i32** %16, align 8
  %300 = getelementptr inbounds i32, i32* %299, i64 0
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %298, i64 %302
  %304 = getelementptr inbounds %struct.archive_test_acl_t, %struct.archive_test_acl_t* %303, i32 0, i32 4
  %305 = load i8*, i8** %304, align 8
  %306 = call i32 (i8*, i32, i8*, ...) @failure_start(i8* %264, i32 %265, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.7, i64 0, i64 0), i32 %273, i32 %281, i32 %289, i32 %297, i8* %305)
  %307 = call i32 @failure_finish(i32* null)
  store i32 1, i32* %20, align 4
  br label %308

308:                                              ; preds = %263, %260
  %309 = load i32*, i32** %16, align 8
  %310 = call i32 @free(i32* %309)
  %311 = load i32, i32* %20, align 4
  store i32 %311, i32* %8, align 4
  br label %312

312:                                              ; preds = %308, %64
  %313 = load i32, i32* %8, align 4
  ret i32 %313
}

declare dso_local i32 @assertion_count(i8*, i32) #1

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @failure_start(i8*, i32, i8*, ...) #1

declare dso_local i32 @archive_entry_acl_next(%struct.archive_entry*, i32, i32*, i32*, i32*, i32*, i8**) #1

declare dso_local i64 @archive_test_acl_match(%struct.archive_test_acl_t*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @failure_finish(i32*) #1

declare dso_local i32 @archive_entry_mode(%struct.archive_entry*) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
