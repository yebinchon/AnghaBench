; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_next_hunk.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_parse-diff.c_parse_next_hunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i64, i64, i64, i64, i8*, i8*, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, i64, i64, i32*, %struct.TYPE_19__* }
%struct.TYPE_17__ = type { i64, i64, i64 }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i8* }

@parse_next_hunk.minus = internal constant i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), align 8
@.str = private unnamed_addr constant [5 x i8] c"--- \00", align 1
@parse_next_hunk.text_atat = internal constant i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"@@\00", align 1
@parse_next_hunk.prop_atat = internal constant i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"##\00", align 1
@FALSE = common dso_local global i8* null, align 8
@svn_diff_op_unchanged = common dso_local global i32 0, align 4
@APR_EOF = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@APR_SIZE_MAX = common dso_local global i32 0, align 4
@APR_SET = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@SVN_PROP_MERGEINFO = common dso_local global i32 0, align 4
@parse_next_hunk.add = internal constant i8 43, align 1
@parse_next_hunk.del = internal constant i8 45, align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Added: \00", align 1
@svn_diff_op_deleted = common dso_local global i32 0, align 4
@svn_diff_op_added = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"Deleted: \00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Modified: \00", align 1
@svn_diff_op_modified = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"diff --git \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_20__**, i8**, i8**, i32*, %struct.TYPE_19__*, i32*, i8*, i32*, i32*)* @parse_next_hunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @parse_next_hunk(%struct.TYPE_20__** %0, i8** %1, i8** %2, i32* %3, %struct.TYPE_19__* %4, i32* %5, i8* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_20__**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.TYPE_19__*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca %struct.TYPE_18__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32*, align 8
  %39 = alloca [2 x i8], align 1
  %40 = alloca i32, align 4
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  %43 = alloca i8*, align 8
  %44 = alloca i8, align 1
  store %struct.TYPE_20__** %0, %struct.TYPE_20__*** %11, align 8
  store i8** %1, i8*** %12, align 8
  store i8** %2, i8*** %13, align 8
  store i32* %3, i32** %14, align 8
  store %struct.TYPE_19__* %4, %struct.TYPE_19__** %15, align 8
  store i32* %5, i32** %16, align 8
  store i8* %6, i8** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %45 = load i8*, i8** @FALSE, align 8
  store i8* %45, i8** %30, align 8
  %46 = load i8*, i8** @FALSE, align 8
  store i8* %46, i8** %31, align 8
  %47 = load i32, i32* @svn_diff_op_unchanged, align 4
  %48 = load i32*, i32** %14, align 8
  store i32 %47, i32* %48, align 4
  %49 = load i8**, i8*** %13, align 8
  store i8* null, i8** %49, align 8
  %50 = load i8*, i8** @FALSE, align 8
  %51 = load i8**, i8*** %12, align 8
  store i8* %50, i8** %51, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = call i64 @apr_file_eof(i32* %52)
  %54 = load i64, i64* @APR_EOF, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %9
  %57 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %57, align 8
  %58 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %58, i32** %10, align 8
  br label %696

59:                                               ; preds = %9
  %60 = load i8*, i8** @FALSE, align 8
  store i8* %60, i8** %22, align 8
  %61 = load i8*, i8** @FALSE, align 8
  store i8* %61, i8** %23, align 8
  store i64 0, i64* %34, align 8
  store i64 0, i64* %35, align 8
  %62 = load i8*, i8** @FALSE, align 8
  store i8* %62, i8** %36, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %29, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = call %struct.TYPE_20__* @apr_pcalloc(i32* %63, i32 152)
  %65 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  store %struct.TYPE_20__* %64, %struct.TYPE_20__** %65, align 8
  %66 = load i32*, i32** %16, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @svn_io_file_get_offset(i64* %24, i32* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  store i32 0, i32* %37, align 4
  %70 = load i32*, i32** %19, align 8
  %71 = call i32* @svn_pool_create(i32* %70)
  store i32* %71, i32** %38, align 8
  br label %72

72:                                               ; preds = %570, %59
  %73 = load i32*, i32** %38, align 8
  %74 = call i32 @svn_pool_clear(i32* %73)
  %75 = load i64, i64* %24, align 8
  store i64 %75, i64* %25, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = load i32, i32* @APR_SIZE_MAX, align 4
  %78 = load i32*, i32** %38, align 8
  %79 = load i32*, i32** %38, align 8
  %80 = call i32 @svn_io_file_readline(i32* %76, %struct.TYPE_18__** %20, i32* null, i8** %21, i32 %77, i32* %78, i32* %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %16, align 8
  %83 = load i32*, i32** %38, align 8
  %84 = call i32 @svn_io_file_get_offset(i64* %24, i32* %82, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 0
  %90 = load i8, i8* %89, align 1
  %91 = sext i8 %90 to i32
  %92 = icmp eq i32 %91, 92
  br i1 %92, label %93, label %187

93:                                               ; preds = %72
  %94 = load i8*, i8** %22, align 8
  %95 = icmp ne i8* %94, null
  br i1 %95, label %96, label %186

96:                                               ; preds = %93
  %97 = load i64, i64* %25, align 8
  %98 = sub nsw i64 %97, 2
  store i64 %98, i64* %41, align 8
  %99 = load i32*, i32** %16, align 8
  %100 = load i32, i32* @APR_SET, align 4
  %101 = load i32*, i32** %38, align 8
  %102 = call i32 @svn_io_file_seek(i32* %99, i32 %100, i64* %41, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  store i32 2, i32* %40, align 4
  %104 = load i32*, i32** %16, align 8
  %105 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 0
  %106 = load i32, i32* %40, align 4
  %107 = load i32*, i32** %38, align 8
  %108 = call i32 @svn_io_file_read_full2(i32* %104, i8* %105, i32 %106, i32* %40, i8** %21, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 0
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 13
  br i1 %113, label %114, label %122

114:                                              ; preds = %96
  %115 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 1
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp eq i32 %117, 10
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i64, i64* %25, align 8
  %121 = sub nsw i64 %120, 2
  store i64 %121, i64* %42, align 8
  br label %138

122:                                              ; preds = %114, %96
  %123 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp eq i32 %125, 10
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = getelementptr inbounds [2 x i8], [2 x i8]* %39, i64 0, i64 1
  %129 = load i8, i8* %128, align 1
  %130 = sext i8 %129 to i32
  %131 = icmp eq i32 %130, 13
  br i1 %131, label %132, label %135

132:                                              ; preds = %127, %122
  %133 = load i64, i64* %25, align 8
  %134 = sub nsw i64 %133, 1
  store i64 %134, i64* %42, align 8
  br label %137

135:                                              ; preds = %127
  %136 = load i64, i64* %25, align 8
  store i64 %136, i64* %42, align 8
  br label %137

137:                                              ; preds = %135, %132
  br label %138

138:                                              ; preds = %137, %119
  %139 = load i32, i32* %37, align 4
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i64, i64* %28, align 8
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %141
  %145 = load i64, i64* %42, align 8
  store i64 %145, i64* %28, align 8
  br label %170

146:                                              ; preds = %141, %138
  %147 = load i32, i32* %37, align 4
  %148 = icmp eq i32 %147, 2
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load i64, i64* %29, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %149
  %153 = load i64, i64* %42, align 8
  store i64 %153, i64* %29, align 8
  br label %169

154:                                              ; preds = %149, %146
  %155 = load i32, i32* %37, align 4
  %156 = icmp eq i32 %155, 3
  br i1 %156, label %157, label %168

157:                                              ; preds = %154
  %158 = load i64, i64* %28, align 8
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %157
  %161 = load i64, i64* %42, align 8
  store i64 %161, i64* %28, align 8
  br label %162

162:                                              ; preds = %160, %157
  %163 = load i64, i64* %29, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %165, label %167

165:                                              ; preds = %162
  %166 = load i64, i64* %42, align 8
  store i64 %166, i64* %29, align 8
  br label %167

167:                                              ; preds = %165, %162
  br label %168

168:                                              ; preds = %167, %154
  br label %169

169:                                              ; preds = %168, %152
  br label %170

170:                                              ; preds = %169, %144
  %171 = load i32*, i32** %16, align 8
  %172 = load i32, i32* @APR_SET, align 4
  %173 = load i32*, i32** %38, align 8
  %174 = call i32 @svn_io_file_seek(i32* %171, i32 %172, i64* %24, i32* %173)
  %175 = call i32 @SVN_ERR(i32 %174)
  %176 = load i32, i32* %37, align 4
  %177 = icmp ne i32 %176, 2
  br i1 %177, label %178, label %180

178:                                              ; preds = %170
  %179 = load i8*, i8** @TRUE, align 8
  store i8* %179, i8** %30, align 8
  br label %180

180:                                              ; preds = %178, %170
  %181 = load i32, i32* %37, align 4
  %182 = icmp ne i32 %181, 1
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = load i8*, i8** @TRUE, align 8
  store i8* %184, i8** %31, align 8
  br label %185

185:                                              ; preds = %183, %180
  br label %186

186:                                              ; preds = %185, %93
  br label %562

187:                                              ; preds = %72
  %188 = load i8*, i8** %22, align 8
  %189 = icmp ne i8* %188, null
  br i1 %189, label %190, label %219

190:                                              ; preds = %187
  %191 = load i8**, i8*** %12, align 8
  %192 = load i8*, i8** %191, align 8
  %193 = icmp ne i8* %192, null
  br i1 %193, label %194, label %219

194:                                              ; preds = %190
  %195 = load i8**, i8*** %13, align 8
  %196 = load i8*, i8** %195, align 8
  %197 = icmp ne i8* %196, null
  br i1 %197, label %198, label %219

198:                                              ; preds = %194
  %199 = load i8**, i8*** %13, align 8
  %200 = load i8*, i8** %199, align 8
  %201 = load i32, i32* @SVN_PROP_MERGEINFO, align 4
  %202 = call i64 @strcmp(i8* %200, i32 %201)
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %204, label %219

204:                                              ; preds = %198
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %206 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %209 = load i32*, i32** %18, align 8
  %210 = load i32*, i32** %38, align 8
  %211 = call i32 @parse_mergeinfo(i8** %43, %struct.TYPE_18__* %205, %struct.TYPE_20__* %207, %struct.TYPE_19__* %208, i32* %209, i32* %210)
  %212 = call i32 @SVN_ERR(i32 %211)
  %213 = load i8*, i8** %43, align 8
  %214 = icmp ne i8* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %204
  br label %562

216:                                              ; preds = %204
  %217 = load i8*, i8** @FALSE, align 8
  store i8* %217, i8** %22, align 8
  br label %218

218:                                              ; preds = %216
  br label %219

219:                                              ; preds = %218, %198, %194, %190, %187
  %220 = load i8*, i8** %22, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %405

222:                                              ; preds = %219
  %223 = load i8*, i8** %23, align 8
  %224 = icmp ne i8* %223, null
  br i1 %224, label %227, label %225

225:                                              ; preds = %222
  %226 = load i64, i64* %25, align 8
  store i64 %226, i64* %26, align 8
  br label %227

227:                                              ; preds = %225, %222
  %228 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %229 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %228, i32 0, i32 1
  %230 = load i8*, i8** %229, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 0
  %232 = load i8, i8* %231, align 1
  store i8 %232, i8* %44, align 1
  %233 = load i8, i8* %44, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 32
  br i1 %235, label %261, label %236

236:                                              ; preds = %227
  %237 = load i64, i64* %32, align 8
  %238 = icmp sgt i64 %237, 0
  br i1 %238, label %239, label %306

239:                                              ; preds = %236
  %240 = load i64, i64* %33, align 8
  %241 = icmp sgt i64 %240, 0
  br i1 %241, label %242, label %306

242:                                              ; preds = %239
  %243 = load i8*, i8** %21, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %250, label %245

245:                                              ; preds = %242
  %246 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %247 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %246, i32 0, i32 0
  %248 = load i64, i64* %247, align 8
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %261, label %250

250:                                              ; preds = %245, %242
  %251 = load i8*, i8** %17, align 8
  %252 = icmp ne i8* %251, null
  br i1 %252, label %253, label %306

253:                                              ; preds = %250
  %254 = load i8, i8* %44, align 1
  %255 = sext i8 %254 to i32
  %256 = icmp ne i32 %255, 45
  br i1 %256, label %257, label %306

257:                                              ; preds = %253
  %258 = load i8, i8* %44, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 43
  br i1 %260, label %261, label %306

261:                                              ; preds = %257, %245, %227
  %262 = load i8*, i8** @TRUE, align 8
  store i8* %262, i8** %23, align 8
  %263 = load i64, i64* %32, align 8
  %264 = icmp sgt i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %261
  %266 = load i64, i64* %32, align 8
  %267 = add nsw i64 %266, -1
  store i64 %267, i64* %32, align 8
  br label %279

268:                                              ; preds = %261
  %269 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %270 = load %struct.TYPE_20__*, %struct.TYPE_20__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = add nsw i64 %272, 1
  store i64 %273, i64* %271, align 8
  %274 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %275 = load %struct.TYPE_20__*, %struct.TYPE_20__** %274, align 8
  %276 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %275, i32 0, i32 1
  %277 = load i64, i64* %276, align 8
  %278 = add nsw i64 %277, 1
  store i64 %278, i64* %276, align 8
  br label %279

279:                                              ; preds = %268, %265
  %280 = load i64, i64* %33, align 8
  %281 = icmp sgt i64 %280, 0
  br i1 %281, label %282, label %285

282:                                              ; preds = %279
  %283 = load i64, i64* %33, align 8
  %284 = add nsw i64 %283, -1
  store i64 %284, i64* %33, align 8
  br label %296

285:                                              ; preds = %279
  %286 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %286, align 8
  %288 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %287, i32 0, i32 2
  %289 = load i64, i64* %288, align 8
  %290 = add nsw i64 %289, 1
  store i64 %290, i64* %288, align 8
  %291 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %292 = load %struct.TYPE_20__*, %struct.TYPE_20__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %292, i32 0, i32 3
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, 1
  store i64 %295, i64* %293, align 8
  br label %296

296:                                              ; preds = %285, %282
  %297 = load i8*, i8** %36, align 8
  %298 = icmp ne i8* %297, null
  br i1 %298, label %299, label %302

299:                                              ; preds = %296
  %300 = load i64, i64* %35, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %35, align 8
  br label %305

302:                                              ; preds = %296
  %303 = load i64, i64* %34, align 8
  %304 = add nsw i64 %303, 1
  store i64 %304, i64* %34, align 8
  br label %305

305:                                              ; preds = %302, %299
  store i32 3, i32* %37, align 4
  br label %404

306:                                              ; preds = %257, %253, %250, %239, %236
  %307 = load i8, i8* %44, align 1
  %308 = sext i8 %307 to i32
  %309 = icmp eq i32 %308, 45
  br i1 %309, label %310, label %345

310:                                              ; preds = %306
  %311 = load i64, i64* %32, align 8
  %312 = icmp sgt i64 %311, 0
  br i1 %312, label %321, label %313

313:                                              ; preds = %310
  %314 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %315 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %314, i32 0, i32 1
  %316 = load i8*, i8** %315, align 8
  %317 = getelementptr inbounds i8, i8* %316, i64 1
  %318 = load i8, i8* %317, align 1
  %319 = sext i8 %318 to i32
  %320 = icmp ne i32 %319, 45
  br i1 %320, label %321, label %345

321:                                              ; preds = %313, %310
  %322 = load i8*, i8** @TRUE, align 8
  store i8* %322, i8** %23, align 8
  %323 = load i8*, i8** @TRUE, align 8
  store i8* %323, i8** %36, align 8
  %324 = load i64, i64* %35, align 8
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %321
  store i64 0, i64* %35, align 8
  br label %327

327:                                              ; preds = %326, %321
  %328 = load i64, i64* %32, align 8
  %329 = icmp sgt i64 %328, 0
  br i1 %329, label %330, label %333

330:                                              ; preds = %327
  %331 = load i64, i64* %32, align 8
  %332 = add nsw i64 %331, -1
  store i64 %332, i64* %32, align 8
  br label %344

333:                                              ; preds = %327
  %334 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %335 = load %struct.TYPE_20__*, %struct.TYPE_20__** %334, align 8
  %336 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %335, i32 0, i32 0
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 1
  store i64 %338, i64* %336, align 8
  %339 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %340 = load %struct.TYPE_20__*, %struct.TYPE_20__** %339, align 8
  %341 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %340, i32 0, i32 1
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %341, align 8
  br label %344

344:                                              ; preds = %333, %330
  store i32 1, i32* %37, align 4
  br label %403

345:                                              ; preds = %313, %306
  %346 = load i8, i8* %44, align 1
  %347 = sext i8 %346 to i32
  %348 = icmp eq i32 %347, 43
  br i1 %348, label %349, label %384

349:                                              ; preds = %345
  %350 = load i64, i64* %33, align 8
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %360, label %352

352:                                              ; preds = %349
  %353 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %354 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %353, i32 0, i32 1
  %355 = load i8*, i8** %354, align 8
  %356 = getelementptr inbounds i8, i8* %355, i64 1
  %357 = load i8, i8* %356, align 1
  %358 = sext i8 %357 to i32
  %359 = icmp ne i32 %358, 43
  br i1 %359, label %360, label %384

360:                                              ; preds = %352, %349
  %361 = load i8*, i8** @TRUE, align 8
  store i8* %361, i8** %23, align 8
  %362 = load i8*, i8** @TRUE, align 8
  store i8* %362, i8** %36, align 8
  %363 = load i64, i64* %35, align 8
  %364 = icmp sgt i64 %363, 0
  br i1 %364, label %365, label %366

365:                                              ; preds = %360
  store i64 0, i64* %35, align 8
  br label %366

366:                                              ; preds = %365, %360
  %367 = load i64, i64* %33, align 8
  %368 = icmp sgt i64 %367, 0
  br i1 %368, label %369, label %372

369:                                              ; preds = %366
  %370 = load i64, i64* %33, align 8
  %371 = add nsw i64 %370, -1
  store i64 %371, i64* %33, align 8
  br label %383

372:                                              ; preds = %366
  %373 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %374 = load %struct.TYPE_20__*, %struct.TYPE_20__** %373, align 8
  %375 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %374, i32 0, i32 2
  %376 = load i64, i64* %375, align 8
  %377 = add nsw i64 %376, 1
  store i64 %377, i64* %375, align 8
  %378 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %379 = load %struct.TYPE_20__*, %struct.TYPE_20__** %378, align 8
  %380 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %379, i32 0, i32 3
  %381 = load i64, i64* %380, align 8
  %382 = add nsw i64 %381, 1
  store i64 %382, i64* %380, align 8
  br label %383

383:                                              ; preds = %372, %369
  store i32 2, i32* %37, align 4
  br label %402

384:                                              ; preds = %352, %345
  %385 = load i8*, i8** %21, align 8
  %386 = icmp ne i8* %385, null
  br i1 %386, label %387, label %389

387:                                              ; preds = %384
  %388 = load i64, i64* %24, align 8
  store i64 %388, i64* %27, align 8
  br label %391

389:                                              ; preds = %384
  %390 = load i64, i64* %25, align 8
  store i64 %390, i64* %27, align 8
  br label %391

391:                                              ; preds = %389, %387
  %392 = load i64, i64* %28, align 8
  %393 = icmp eq i64 %392, 0
  br i1 %393, label %394, label %396

394:                                              ; preds = %391
  %395 = load i64, i64* %27, align 8
  store i64 %395, i64* %28, align 8
  br label %396

396:                                              ; preds = %394, %391
  %397 = load i64, i64* %29, align 8
  %398 = icmp eq i64 %397, 0
  br i1 %398, label %399, label %401

399:                                              ; preds = %396
  %400 = load i64, i64* %27, align 8
  store i64 %400, i64* %29, align 8
  br label %401

401:                                              ; preds = %399, %396
  br label %572

402:                                              ; preds = %383
  br label %403

403:                                              ; preds = %402, %344
  br label %404

404:                                              ; preds = %403, %305
  br label %561

405:                                              ; preds = %219
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %407 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %406, i32 0, i32 1
  %408 = load i8*, i8** %407, align 8
  %409 = call i64 @starts_with(i8* %408, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0))
  %410 = icmp ne i64 %409, 0
  br i1 %410, label %411, label %433

411:                                              ; preds = %405
  %412 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %413 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %412, i32 0, i32 1
  %414 = load i8*, i8** %413, align 8
  %415 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %415, align 8
  %417 = load i32*, i32** %38, align 8
  %418 = call i8* @parse_hunk_header(i8* %414, %struct.TYPE_20__* %416, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i32* %417)
  store i8* %418, i8** %22, align 8
  %419 = load i8*, i8** %22, align 8
  %420 = icmp ne i8* %419, null
  br i1 %420, label %421, label %432

421:                                              ; preds = %411
  %422 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %423 = load %struct.TYPE_20__*, %struct.TYPE_20__** %422, align 8
  %424 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %423, i32 0, i32 0
  %425 = load i64, i64* %424, align 8
  store i64 %425, i64* %32, align 8
  %426 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %427 = load %struct.TYPE_20__*, %struct.TYPE_20__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %427, i32 0, i32 2
  %429 = load i64, i64* %428, align 8
  store i64 %429, i64* %33, align 8
  %430 = load i8*, i8** @FALSE, align 8
  %431 = load i8**, i8*** %12, align 8
  store i8* %430, i8** %431, align 8
  br label %432

432:                                              ; preds = %421, %411
  br label %560

433:                                              ; preds = %405
  %434 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %435 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %434, i32 0, i32 1
  %436 = load i8*, i8** %435, align 8
  %437 = call i64 @starts_with(i8* %436, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0))
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %461

439:                                              ; preds = %433
  %440 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %441 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %440, i32 0, i32 1
  %442 = load i8*, i8** %441, align 8
  %443 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %444 = load %struct.TYPE_20__*, %struct.TYPE_20__** %443, align 8
  %445 = load i32*, i32** %38, align 8
  %446 = call i8* @parse_hunk_header(i8* %442, %struct.TYPE_20__* %444, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i32* %445)
  store i8* %446, i8** %22, align 8
  %447 = load i8*, i8** %22, align 8
  %448 = icmp ne i8* %447, null
  br i1 %448, label %449, label %460

449:                                              ; preds = %439
  %450 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %451 = load %struct.TYPE_20__*, %struct.TYPE_20__** %450, align 8
  %452 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  store i64 %453, i64* %32, align 8
  %454 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %454, align 8
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i32 0, i32 2
  %457 = load i64, i64* %456, align 8
  store i64 %457, i64* %33, align 8
  %458 = load i8*, i8** @TRUE, align 8
  %459 = load i8**, i8*** %12, align 8
  store i8* %458, i8** %459, align 8
  br label %460

460:                                              ; preds = %449, %439
  br label %559

461:                                              ; preds = %433
  %462 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %463 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %462, i32 0, i32 1
  %464 = load i8*, i8** %463, align 8
  %465 = call i64 @starts_with(i8* %464, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %466 = icmp ne i64 %465, 0
  br i1 %466, label %467, label %491

467:                                              ; preds = %461
  %468 = load i8**, i8*** %13, align 8
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 1
  %471 = load i8*, i8** %470, align 8
  %472 = load i32*, i32** %18, align 8
  %473 = call i32 @parse_prop_name(i8** %468, i8* %471, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* %472)
  %474 = call i32 @SVN_ERR(i32 %473)
  %475 = load i8**, i8*** %13, align 8
  %476 = load i8*, i8** %475, align 8
  %477 = icmp ne i8* %476, null
  br i1 %477, label %478, label %490

478:                                              ; preds = %467
  %479 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %480 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = icmp ne i64 %481, 0
  br i1 %482, label %483, label %485

483:                                              ; preds = %478
  %484 = load i32, i32* @svn_diff_op_deleted, align 4
  br label %487

485:                                              ; preds = %478
  %486 = load i32, i32* @svn_diff_op_added, align 4
  br label %487

487:                                              ; preds = %485, %483
  %488 = phi i32 [ %484, %483 ], [ %486, %485 ]
  %489 = load i32*, i32** %14, align 8
  store i32 %488, i32* %489, align 4
  br label %490

490:                                              ; preds = %487, %467
  br label %558

491:                                              ; preds = %461
  %492 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %493 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %492, i32 0, i32 1
  %494 = load i8*, i8** %493, align 8
  %495 = call i64 @starts_with(i8* %494, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0))
  %496 = icmp ne i64 %495, 0
  br i1 %496, label %497, label %521

497:                                              ; preds = %491
  %498 = load i8**, i8*** %13, align 8
  %499 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %500 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %499, i32 0, i32 1
  %501 = load i8*, i8** %500, align 8
  %502 = load i32*, i32** %18, align 8
  %503 = call i32 @parse_prop_name(i8** %498, i8* %501, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32* %502)
  %504 = call i32 @SVN_ERR(i32 %503)
  %505 = load i8**, i8*** %13, align 8
  %506 = load i8*, i8** %505, align 8
  %507 = icmp ne i8* %506, null
  br i1 %507, label %508, label %520

508:                                              ; preds = %497
  %509 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %510 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %509, i32 0, i32 0
  %511 = load i64, i64* %510, align 8
  %512 = icmp ne i64 %511, 0
  br i1 %512, label %513, label %515

513:                                              ; preds = %508
  %514 = load i32, i32* @svn_diff_op_added, align 4
  br label %517

515:                                              ; preds = %508
  %516 = load i32, i32* @svn_diff_op_deleted, align 4
  br label %517

517:                                              ; preds = %515, %513
  %518 = phi i32 [ %514, %513 ], [ %516, %515 ]
  %519 = load i32*, i32** %14, align 8
  store i32 %518, i32* %519, align 4
  br label %520

520:                                              ; preds = %517, %497
  br label %557

521:                                              ; preds = %491
  %522 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %523 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %522, i32 0, i32 1
  %524 = load i8*, i8** %523, align 8
  %525 = call i64 @starts_with(i8* %524, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0))
  %526 = icmp ne i64 %525, 0
  br i1 %526, label %527, label %542

527:                                              ; preds = %521
  %528 = load i8**, i8*** %13, align 8
  %529 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %530 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %529, i32 0, i32 1
  %531 = load i8*, i8** %530, align 8
  %532 = load i32*, i32** %18, align 8
  %533 = call i32 @parse_prop_name(i8** %528, i8* %531, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0), i32* %532)
  %534 = call i32 @SVN_ERR(i32 %533)
  %535 = load i8**, i8*** %13, align 8
  %536 = load i8*, i8** %535, align 8
  %537 = icmp ne i8* %536, null
  br i1 %537, label %538, label %541

538:                                              ; preds = %527
  %539 = load i32, i32* @svn_diff_op_modified, align 4
  %540 = load i32*, i32** %14, align 8
  store i32 %539, i32* %540, align 4
  br label %541

541:                                              ; preds = %538, %527
  br label %556

542:                                              ; preds = %521
  %543 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %544 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %543, i32 0, i32 1
  %545 = load i8*, i8** %544, align 8
  %546 = call i64 @starts_with(i8* %545, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0))
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %542
  %549 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %550 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %549, i32 0, i32 1
  %551 = load i8*, i8** %550, align 8
  %552 = call i64 @starts_with(i8* %551, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %553 = icmp ne i64 %552, 0
  br i1 %553, label %554, label %555

554:                                              ; preds = %548, %542
  br label %572

555:                                              ; preds = %548
  br label %556

556:                                              ; preds = %555, %541
  br label %557

557:                                              ; preds = %556, %520
  br label %558

558:                                              ; preds = %557, %490
  br label %559

559:                                              ; preds = %558, %460
  br label %560

560:                                              ; preds = %559, %432
  br label %561

561:                                              ; preds = %560, %404
  br label %562

562:                                              ; preds = %561, %215, %186
  %563 = load i8*, i8** %21, align 8
  %564 = icmp ne i8* %563, null
  br i1 %564, label %565, label %570

565:                                              ; preds = %562
  %566 = load %struct.TYPE_18__*, %struct.TYPE_18__** %20, align 8
  %567 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %566, i32 0, i32 0
  %568 = load i64, i64* %567, align 8
  %569 = icmp sgt i64 %568, 0
  br label %570

570:                                              ; preds = %565, %562
  %571 = phi i1 [ true, %562 ], [ %569, %565 ]
  br i1 %571, label %72, label %572

572:                                              ; preds = %570, %554, %401
  %573 = load i32*, i32** %38, align 8
  %574 = call i32 @svn_pool_destroy(i32* %573)
  %575 = load i8*, i8** %21, align 8
  %576 = icmp ne i8* %575, null
  br i1 %576, label %583, label %577

577:                                              ; preds = %572
  %578 = load i32*, i32** %16, align 8
  %579 = load i32, i32* @APR_SET, align 4
  %580 = load i32*, i32** %19, align 8
  %581 = call i32 @svn_io_file_seek(i32* %578, i32 %579, i64* %25, i32* %580)
  %582 = call i32 @SVN_ERR(i32 %581)
  br label %583

583:                                              ; preds = %577, %572
  %584 = load i8*, i8** %23, align 8
  %585 = icmp ne i8* %584, null
  br i1 %585, label %586, label %692

586:                                              ; preds = %583
  %587 = load i64, i64* %26, align 8
  %588 = load i64, i64* %27, align 8
  %589 = icmp slt i64 %587, %588
  br i1 %589, label %590, label %692

590:                                              ; preds = %586
  %591 = load i64, i64* %32, align 8
  %592 = icmp ne i64 %591, 0
  br i1 %592, label %593, label %606

593:                                              ; preds = %590
  %594 = load i64, i64* %32, align 8
  %595 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %596 = load %struct.TYPE_20__*, %struct.TYPE_20__** %595, align 8
  %597 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %596, i32 0, i32 0
  %598 = load i64, i64* %597, align 8
  %599 = sub nsw i64 %598, %594
  store i64 %599, i64* %597, align 8
  %600 = load i64, i64* %32, align 8
  %601 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %602 = load %struct.TYPE_20__*, %struct.TYPE_20__** %601, align 8
  %603 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %602, i32 0, i32 1
  %604 = load i64, i64* %603, align 8
  %605 = add nsw i64 %604, %600
  store i64 %605, i64* %603, align 8
  br label %606

606:                                              ; preds = %593, %590
  %607 = load i64, i64* %33, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %622

609:                                              ; preds = %606
  %610 = load i64, i64* %33, align 8
  %611 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %612 = load %struct.TYPE_20__*, %struct.TYPE_20__** %611, align 8
  %613 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %612, i32 0, i32 2
  %614 = load i64, i64* %613, align 8
  %615 = sub nsw i64 %614, %610
  store i64 %615, i64* %613, align 8
  %616 = load i64, i64* %33, align 8
  %617 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %618 = load %struct.TYPE_20__*, %struct.TYPE_20__** %617, align 8
  %619 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %618, i32 0, i32 3
  %620 = load i64, i64* %619, align 8
  %621 = add nsw i64 %620, %616
  store i64 %621, i64* %619, align 8
  br label %622

622:                                              ; preds = %609, %606
  %623 = load %struct.TYPE_19__*, %struct.TYPE_19__** %15, align 8
  %624 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %625 = load %struct.TYPE_20__*, %struct.TYPE_20__** %624, align 8
  %626 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %625, i32 0, i32 12
  store %struct.TYPE_19__* %623, %struct.TYPE_19__** %626, align 8
  %627 = load i32*, i32** %16, align 8
  %628 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %629 = load %struct.TYPE_20__*, %struct.TYPE_20__** %628, align 8
  %630 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %629, i32 0, i32 11
  store i32* %627, i32** %630, align 8
  %631 = load i64, i64* %34, align 8
  %632 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %633 = load %struct.TYPE_20__*, %struct.TYPE_20__** %632, align 8
  %634 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %633, i32 0, i32 10
  store i64 %631, i64* %634, align 8
  %635 = load i64, i64* %35, align 8
  %636 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %637 = load %struct.TYPE_20__*, %struct.TYPE_20__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %637, i32 0, i32 9
  store i64 %635, i64* %638, align 8
  %639 = load i64, i64* %26, align 8
  %640 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %641 = load %struct.TYPE_20__*, %struct.TYPE_20__** %640, align 8
  %642 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %641, i32 0, i32 8
  %643 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %642, i32 0, i32 2
  store i64 %639, i64* %643, align 8
  %644 = load i64, i64* %26, align 8
  %645 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %646 = load %struct.TYPE_20__*, %struct.TYPE_20__** %645, align 8
  %647 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %646, i32 0, i32 8
  %648 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %647, i32 0, i32 1
  store i64 %644, i64* %648, align 8
  %649 = load i64, i64* %27, align 8
  %650 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %651 = load %struct.TYPE_20__*, %struct.TYPE_20__** %650, align 8
  %652 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %651, i32 0, i32 8
  %653 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %652, i32 0, i32 0
  store i64 %649, i64* %653, align 8
  %654 = load i64, i64* %26, align 8
  %655 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %656 = load %struct.TYPE_20__*, %struct.TYPE_20__** %655, align 8
  %657 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %656, i32 0, i32 7
  %658 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %657, i32 0, i32 2
  store i64 %654, i64* %658, align 8
  %659 = load i64, i64* %26, align 8
  %660 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %661 = load %struct.TYPE_20__*, %struct.TYPE_20__** %660, align 8
  %662 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %661, i32 0, i32 7
  %663 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %662, i32 0, i32 1
  store i64 %659, i64* %663, align 8
  %664 = load i64, i64* %28, align 8
  %665 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %666 = load %struct.TYPE_20__*, %struct.TYPE_20__** %665, align 8
  %667 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %666, i32 0, i32 7
  %668 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %667, i32 0, i32 0
  store i64 %664, i64* %668, align 8
  %669 = load i64, i64* %26, align 8
  %670 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %671 = load %struct.TYPE_20__*, %struct.TYPE_20__** %670, align 8
  %672 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %671, i32 0, i32 6
  %673 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %672, i32 0, i32 2
  store i64 %669, i64* %673, align 8
  %674 = load i64, i64* %26, align 8
  %675 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %676 = load %struct.TYPE_20__*, %struct.TYPE_20__** %675, align 8
  %677 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %676, i32 0, i32 6
  %678 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %677, i32 0, i32 1
  store i64 %674, i64* %678, align 8
  %679 = load i64, i64* %29, align 8
  %680 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %681 = load %struct.TYPE_20__*, %struct.TYPE_20__** %680, align 8
  %682 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %681, i32 0, i32 6
  %683 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %682, i32 0, i32 0
  store i64 %679, i64* %683, align 8
  %684 = load i8*, i8** %30, align 8
  %685 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %686 = load %struct.TYPE_20__*, %struct.TYPE_20__** %685, align 8
  %687 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %686, i32 0, i32 5
  store i8* %684, i8** %687, align 8
  %688 = load i8*, i8** %31, align 8
  %689 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  %690 = load %struct.TYPE_20__*, %struct.TYPE_20__** %689, align 8
  %691 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %690, i32 0, i32 4
  store i8* %688, i8** %691, align 8
  br label %694

692:                                              ; preds = %586, %583
  %693 = load %struct.TYPE_20__**, %struct.TYPE_20__*** %11, align 8
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %693, align 8
  br label %694

694:                                              ; preds = %692, %622
  %695 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %695, i32** %10, align 8
  br label %696

696:                                              ; preds = %694, %56
  %697 = load i32*, i32** %10, align 8
  ret i32* %697
}

declare dso_local i64 @apr_file_eof(i32*) #1

declare dso_local %struct.TYPE_20__* @apr_pcalloc(i32*, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_file_get_offset(i64*, i32*, i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_io_file_readline(i32*, %struct.TYPE_18__**, i32*, i8**, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_file_seek(i32*, i32, i64*, i32*) #1

declare dso_local i32 @svn_io_file_read_full2(i32*, i8*, i32, i32*, i8**, i32*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local i32 @parse_mergeinfo(i8**, %struct.TYPE_18__*, %struct.TYPE_20__*, %struct.TYPE_19__*, i32*, i32*) #1

declare dso_local i64 @starts_with(i8*, i8*) #1

declare dso_local i8* @parse_hunk_header(i8*, %struct.TYPE_20__*, i8*, i32*) #1

declare dso_local i32 @parse_prop_name(i8**, i8*, i8*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
