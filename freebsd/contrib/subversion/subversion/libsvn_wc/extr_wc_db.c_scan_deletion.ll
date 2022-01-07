; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_scan_deletion.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_scan_deletion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@STMT_SELECT_DELETION_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_UNEXPECTED_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Expected node '%s' to be deleted.\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, i8**, i8**, i8**, %struct.TYPE_5__*, i8*, i32*, i32*)* @scan_deletion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @scan_deletion(i8** %0, i8** %1, i8** %2, i8** %3, %struct.TYPE_5__* %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  store i8** %0, i8*** %10, align 8
  store i8** %1, i8*** %11, align 8
  store i8** %2, i8*** %12, align 8
  store i8** %3, i8*** %13, align 8
  store %struct.TYPE_5__* %4, %struct.TYPE_5__** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %28 = load i8*, i8** %15, align 8
  store i8* %28, i8** %18, align 8
  %29 = load i8**, i8*** %10, align 8
  %30 = icmp ne i8** %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %8
  %32 = load i8**, i8*** %10, align 8
  store i8* null, i8** %32, align 8
  br label %33

33:                                               ; preds = %31, %8
  %34 = load i8**, i8*** %11, align 8
  %35 = icmp ne i8** %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = load i8**, i8*** %11, align 8
  store i8* null, i8** %37, align 8
  br label %38

38:                                               ; preds = %36, %33
  %39 = load i8**, i8*** %12, align 8
  %40 = icmp ne i8** %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8**, i8*** %12, align 8
  store i8* null, i8** %42, align 8
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8**, i8*** %13, align 8
  %45 = icmp ne i8** %44, null
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i8**, i8*** %13, align 8
  store i8* null, i8** %47, align 8
  br label %48

48:                                               ; preds = %46, %43
  %49 = load i8**, i8*** %13, align 8
  %50 = icmp ne i8** %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i8**, i8*** %11, align 8
  %53 = icmp ne i8** %52, null
  br label %54

54:                                               ; preds = %51, %48
  %55 = phi i1 [ true, %48 ], [ %53, %51 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %22, align 4
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @STMT_SELECT_DELETION_INFO, align 4
  %61 = call i32 @svn_sqlite__get_statement(i32** %19, i32 %59, i32 %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %19, align 8
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %18, align 8
  %68 = call i32 @svn_sqlite__bindf(i32* %63, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %66, i8* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %19, align 8
  %71 = call i32 @svn_sqlite__step(i32* %21, i32* %70)
  %72 = call i32 @SVN_ERR(i32 %71)
  %73 = load i32, i32* %21, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %85, label %75

75:                                               ; preds = %54
  %76 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %77 = load i32*, i32** %19, align 8
  %78 = call i32 @svn_sqlite__reset(i32* %77)
  %79 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %81 = load i8*, i8** %15, align 8
  %82 = load i32*, i32** %17, align 8
  %83 = call i32 @path_for_error_message(%struct.TYPE_5__* %80, i8* %81, i32* %82)
  %84 = call i32* @svn_error_createf(i32 %76, i32 %78, i32 %79, i32 %83)
  store i32* %84, i32** %9, align 8
  br label %291

85:                                               ; preds = %54
  %86 = load i32*, i32** %19, align 8
  %87 = load i32, i32* @presence_map, align 4
  %88 = call i64 @svn_sqlite__column_token(i32* %86, i32 1, i32 %87)
  store i64 %88, i64* %20, align 8
  %89 = load i32*, i32** %19, align 8
  %90 = call i32 @svn_sqlite__column_is_null(i32* %89, i32 0)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %23, align 4
  %94 = load i64, i64* %20, align 8
  %95 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %96 = icmp ne i64 %94, %95
  br i1 %96, label %97, label %111

97:                                               ; preds = %85
  %98 = load i64, i64* %20, align 8
  %99 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %111

101:                                              ; preds = %97
  %102 = load i32, i32* @SVN_ERR_WC_PATH_UNEXPECTED_STATUS, align 4
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @svn_sqlite__reset(i32* %103)
  %105 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %107 = load i8*, i8** %15, align 8
  %108 = load i32*, i32** %17, align 8
  %109 = call i32 @path_for_error_message(%struct.TYPE_5__* %106, i8* %107, i32* %108)
  %110 = call i32* @svn_error_createf(i32 %102, i32 %104, i32 %105, i32 %109)
  store i32* %110, i32** %9, align 8
  br label %291

111:                                              ; preds = %97, %85
  %112 = load i32*, i32** %19, align 8
  %113 = call i32 @svn_sqlite__column_int(i32* %112, i32 2)
  store i32 %113, i32* %24, align 4
  %114 = load i64, i64* %20, align 8
  %115 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %140

117:                                              ; preds = %111
  %118 = load i8**, i8*** %12, align 8
  %119 = icmp ne i8** %118, null
  br i1 %119, label %120, label %140

120:                                              ; preds = %117
  %121 = load i8**, i8*** %12, align 8
  %122 = load i8*, i8** %121, align 8
  %123 = icmp ne i8* %122, null
  br i1 %123, label %140, label %124

124:                                              ; preds = %120
  %125 = load i32*, i32** %16, align 8
  %126 = load i8*, i8** %18, align 8
  %127 = call i8* @apr_pstrdup(i32* %125, i8* %126)
  %128 = load i8**, i8*** %12, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* %22, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %139, label %131

131:                                              ; preds = %124
  %132 = load i8**, i8*** %10, align 8
  %133 = icmp ne i8** %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = load i32*, i32** %19, align 8
  %136 = call i32 @svn_sqlite__reset(i32* %135)
  %137 = call i32 @SVN_ERR(i32 %136)
  %138 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %138, i32** %9, align 8
  br label %291

139:                                              ; preds = %131, %124
  br label %140

140:                                              ; preds = %139, %120, %117, %111
  br label %141

141:                                              ; preds = %277, %140
  %142 = load i64, i64* @TRUE, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %286

144:                                              ; preds = %141
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 @relpath_depth(i8* %145)
  store i32 %146, i32* %27, align 4
  br label %147

147:                                              ; preds = %219, %144
  %148 = load i64, i64* @TRUE, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %220

150:                                              ; preds = %147
  %151 = load i32, i32* %22, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %181

153:                                              ; preds = %150
  %154 = load i8**, i8*** %11, align 8
  %155 = load i8**, i8*** %13, align 8
  %156 = load i32*, i32** %19, align 8
  %157 = load i8*, i8** %18, align 8
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %159 = load i8*, i8** %15, align 8
  %160 = load i32*, i32** %16, align 8
  %161 = load i32*, i32** %17, align 8
  %162 = call i32* @get_moved_to(i8** %154, i8** %155, i32* %22, i32* %156, i8* %157, %struct.TYPE_5__* %158, i8* %159, i32* %160, i32* %161)
  store i32* %162, i32** %25, align 8
  %163 = load i32*, i32** %25, align 8
  %164 = icmp ne i32* %163, null
  br i1 %164, label %174, label %165

165:                                              ; preds = %153
  %166 = load i32, i32* %22, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %180, label %168

168:                                              ; preds = %165
  %169 = load i8**, i8*** %10, align 8
  %170 = icmp ne i8** %169, null
  br i1 %170, label %180, label %171

171:                                              ; preds = %168
  %172 = load i8**, i8*** %12, align 8
  %173 = icmp ne i8** %172, null
  br i1 %173, label %180, label %174

174:                                              ; preds = %171, %153
  %175 = load i32*, i32** %19, align 8
  %176 = call i32 @svn_sqlite__reset(i32* %175)
  %177 = call i32 @SVN_ERR(i32 %176)
  %178 = load i32*, i32** %25, align 8
  %179 = call i32* @svn_error_trace(i32* %178)
  store i32* %179, i32** %9, align 8
  br label %291

180:                                              ; preds = %171, %168, %165
  br label %181

181:                                              ; preds = %180, %150
  %182 = load i32, i32* %27, align 4
  %183 = load i32, i32* %24, align 4
  %184 = icmp sle i32 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181
  br label %220

186:                                              ; preds = %181
  %187 = load i8*, i8** %18, align 8
  %188 = load i32*, i32** %17, align 8
  %189 = call i8* @svn_relpath_dirname(i8* %187, i32* %188)
  store i8* %189, i8** %18, align 8
  %190 = load i32, i32* %27, align 4
  %191 = add nsw i32 %190, -1
  store i32 %191, i32* %27, align 4
  %192 = load i32, i32* %22, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %198, label %194

194:                                              ; preds = %186
  %195 = load i32, i32* %27, align 4
  %196 = load i32, i32* %24, align 4
  %197 = icmp eq i32 %195, %196
  br i1 %197, label %198, label %219

198:                                              ; preds = %194, %186
  %199 = load i32*, i32** %19, align 8
  %200 = call i32 @svn_sqlite__reset(i32* %199)
  %201 = call i32 @SVN_ERR(i32 %200)
  %202 = load i32*, i32** %19, align 8
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  %206 = load i8*, i8** %18, align 8
  %207 = call i32 @svn_sqlite__bindf(i32* %202, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %205, i8* %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load i32*, i32** %19, align 8
  %210 = call i32 @svn_sqlite__step(i32* %21, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  %212 = load i32, i32* %21, align 4
  %213 = call i32 @SVN_ERR_ASSERT(i32 %212)
  %214 = load i32*, i32** %19, align 8
  %215 = call i32 @svn_sqlite__column_is_null(i32* %214, i32 0)
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %23, align 4
  br label %219

219:                                              ; preds = %198, %194
  br label %147

220:                                              ; preds = %185, %147
  %221 = load i32*, i32** %19, align 8
  %222 = call i32 @svn_sqlite__reset(i32* %221)
  %223 = call i32 @SVN_ERR(i32 %222)
  %224 = load i8*, i8** %18, align 8
  %225 = getelementptr inbounds i8, i8* %224, i64 0
  %226 = load i8, i8* %225, align 1
  %227 = sext i8 %226 to i32
  %228 = icmp ne i32 %227, 0
  %229 = zext i1 %228 to i32
  %230 = call i32 @SVN_ERR_ASSERT(i32 %229)
  %231 = load i8*, i8** %18, align 8
  %232 = load i32*, i32** %17, align 8
  %233 = call i8* @svn_relpath_dirname(i8* %231, i32* %232)
  store i8* %233, i8** %26, align 8
  %234 = load i32*, i32** %19, align 8
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i8*, i8** %26, align 8
  %239 = call i32 @svn_sqlite__bindf(i32* %234, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %237, i8* %238)
  %240 = call i32 @SVN_ERR(i32 %239)
  %241 = load i32*, i32** %19, align 8
  %242 = call i32 @svn_sqlite__step(i32* %21, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  %244 = load i32, i32* %21, align 4
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %258, label %246

246:                                              ; preds = %220
  %247 = load i32, i32* %23, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %257

249:                                              ; preds = %246
  %250 = load i8**, i8*** %10, align 8
  %251 = icmp ne i8** %250, null
  br i1 %251, label %252, label %257

252:                                              ; preds = %249
  %253 = load i32*, i32** %16, align 8
  %254 = load i8*, i8** %18, align 8
  %255 = call i8* @apr_pstrdup(i32* %253, i8* %254)
  %256 = load i8**, i8*** %10, align 8
  store i8* %255, i8** %256, align 8
  br label %257

257:                                              ; preds = %252, %249, %246
  br label %286

258:                                              ; preds = %220
  %259 = load i8**, i8*** %12, align 8
  %260 = icmp ne i8** %259, null
  br i1 %260, label %261, label %277

261:                                              ; preds = %258
  %262 = load i8**, i8*** %12, align 8
  %263 = load i8*, i8** %262, align 8
  %264 = icmp ne i8* %263, null
  br i1 %264, label %277, label %265

265:                                              ; preds = %261
  %266 = load i32*, i32** %16, align 8
  %267 = load i8*, i8** %18, align 8
  %268 = call i8* @apr_pstrdup(i32* %266, i8* %267)
  %269 = load i8**, i8*** %12, align 8
  store i8* %268, i8** %269, align 8
  %270 = load i32, i32* %22, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %276, label %272

272:                                              ; preds = %265
  %273 = load i8**, i8*** %10, align 8
  %274 = icmp ne i8** %273, null
  br i1 %274, label %276, label %275

275:                                              ; preds = %272
  br label %286

276:                                              ; preds = %272, %265
  br label %277

277:                                              ; preds = %276, %261, %258
  %278 = load i8*, i8** %26, align 8
  store i8* %278, i8** %18, align 8
  %279 = load i32*, i32** %19, align 8
  %280 = call i32 @svn_sqlite__column_int(i32* %279, i32 2)
  store i32 %280, i32* %24, align 4
  %281 = load i32*, i32** %19, align 8
  %282 = call i32 @svn_sqlite__column_is_null(i32* %281, i32 0)
  %283 = icmp ne i32 %282, 0
  %284 = xor i1 %283, true
  %285 = zext i1 %284 to i32
  store i32 %285, i32* %23, align 4
  br label %141

286:                                              ; preds = %275, %257, %141
  %287 = load i32*, i32** %19, align 8
  %288 = call i32 @svn_sqlite__reset(i32* %287)
  %289 = call i32 @SVN_ERR(i32 %288)
  %290 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %290, i32** %9, align 8
  br label %291

291:                                              ; preds = %286, %174, %134, %101, %75
  %292 = load i32*, i32** %9, align 8
  ret i32* %292
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_5__*, i8*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32* @get_moved_to(i8**, i8**, i32*, i32*, i8*, %struct.TYPE_5__*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
