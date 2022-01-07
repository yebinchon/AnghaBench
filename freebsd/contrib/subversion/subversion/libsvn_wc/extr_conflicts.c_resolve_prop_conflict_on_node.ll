; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_resolve_prop_conflict_on_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_conflicts.c_resolve_prop_conflict_on_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_ERR_INCORRECT_PARAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid 'conflict_result' argument\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i32*, i8*, i32, i8*, i8*, i32, i8*, i32*)* @resolve_prop_conflict_on_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_prop_conflict_on_node(i32* %0, i32* %1, i8* %2, i32* %3, i8* %4, i32 %5, i8* %6, i8* %7, i32 %8, i8* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i8*, align 8
  store i32* %0, i32** %13, align 8
  store i32* %1, i32** %14, align 8
  store i8* %2, i8** %15, align 8
  store i32* %3, i32** %16, align 8
  store i8* %4, i8** %17, align 8
  store i32 %5, i32* %18, align 4
  store i8* %6, i8** %19, align 8
  store i8* %7, i8** %20, align 8
  store i32 %8, i32* %21, align 4
  store i8* %9, i8** %22, align 8
  store i32* %10, i32** %23, align 8
  store i32* null, i32** %30, align 8
  store i32* null, i32** %31, align 8
  %42 = load i32, i32* @FALSE, align 4
  %43 = load i32*, i32** %13, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i32*, i32** %14, align 8
  %45 = load i8*, i8** %15, align 8
  %46 = load i32*, i32** %16, align 8
  %47 = load i32*, i32** %23, align 8
  %48 = load i32*, i32** %23, align 8
  %49 = call i32 @svn_wc__conflict_read_info(i64* %32, i32* null, i32* null, i32* %33, i32* null, i32* %44, i8* %45, i32* %46, i32* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32, i32* %33, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %11
  %54 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %54, i32** %12, align 8
  br label %290

55:                                               ; preds = %11
  %56 = load i32*, i32** %14, align 8
  %57 = load i8*, i8** %15, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i32*, i32** %23, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = call i32 @svn_wc__conflict_read_prop_conflict(i8** %24, i32** %25, i32** %26, i32** %27, i32** %28, i32* %56, i8* %57, i32* %58, i32* %59, i32* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %28, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %91, label %65

65:                                               ; preds = %55
  %66 = load i32*, i32** %13, align 8
  %67 = load i32*, i32** %14, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i8*, i8** %24, align 8
  %70 = load i32*, i32** %23, align 8
  %71 = load i32*, i32** %23, align 8
  %72 = call i32 @remove_artifact_file_if_exists(i32** %31, i32* %66, i32* %67, i8* %68, i8* %69, i32* %70, i32* %71)
  %73 = call i32 @SVN_ERR(i32 %72)
  %74 = load i32*, i32** %14, align 8
  %75 = load i8*, i8** %15, align 8
  %76 = load i32, i32* @FALSE, align 4
  %77 = load i32, i32* @TRUE, align 4
  %78 = load i32, i32* @FALSE, align 4
  %79 = load i32*, i32** %31, align 8
  %80 = load i32*, i32** %23, align 8
  %81 = call i32 @svn_wc__db_op_mark_resolved(i32* %74, i8* %75, i32 %76, i32 %77, i32 %78, i32* %79, i32* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %14, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = load i32, i32* %21, align 4
  %86 = load i8*, i8** %22, align 8
  %87 = load i32*, i32** %23, align 8
  %88 = call i32 @svn_wc__wq_run(i32* %83, i8* %84, i32 %85, i8* %86, i32* %87)
  %89 = call i32 @SVN_ERR(i32 %88)
  %90 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %90, i32** %12, align 8
  br label %290

91:                                               ; preds = %55
  %92 = load i8*, i8** %17, align 8
  %93 = getelementptr inbounds i8, i8* %92, i64 0
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %91
  %98 = load i32*, i32** %28, align 8
  %99 = load i8*, i8** %17, align 8
  %100 = call i8* @svn_hash_gets(i32* %98, i8* %99)
  %101 = icmp ne i8* %100, null
  br i1 %101, label %104, label %102

102:                                              ; preds = %97
  %103 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %103, i32** %12, align 8
  br label %290

104:                                              ; preds = %97, %91
  %105 = load i64, i64* %32, align 8
  %106 = load i64, i64* @svn_wc_operation_merge, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %115

108:                                              ; preds = %104
  %109 = load i32*, i32** %14, align 8
  %110 = load i8*, i8** %15, align 8
  %111 = load i32*, i32** %23, align 8
  %112 = load i32*, i32** %23, align 8
  %113 = call i32 @svn_wc__db_read_pristine_props(i32** %29, i32* %109, i8* %110, i32* %111, i32* %112)
  %114 = call i32 @SVN_ERR(i32 %113)
  br label %117

115:                                              ; preds = %104
  %116 = load i32*, i32** %26, align 8
  store i32* %116, i32** %29, align 8
  br label %117

117:                                              ; preds = %115, %108
  %118 = load i32*, i32** %14, align 8
  %119 = load i8*, i8** %15, align 8
  %120 = load i32*, i32** %23, align 8
  %121 = load i32*, i32** %23, align 8
  %122 = call i32 @svn_wc__db_read_props(i32** %34, i32* %118, i8* %119, i32* %120, i32* %121)
  %123 = call i32 @SVN_ERR(i32 %122)
  %124 = load i32, i32* %18, align 4
  switch i32 %124, label %170 [
    i32 133, label %125
    i32 130, label %134
    i32 131, label %134
    i32 128, label %136
    i32 129, label %136
    i32 132, label %138
  ]

125:                                              ; preds = %117
  %126 = load i32*, i32** %26, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = load i32*, i32** %26, align 8
  br label %132

130:                                              ; preds = %125
  %131 = load i32*, i32** %29, align 8
  br label %132

132:                                              ; preds = %130, %128
  %133 = phi i32* [ %129, %128 ], [ %131, %130 ]
  store i32* %133, i32** %30, align 8
  br label %174

134:                                              ; preds = %117, %117
  %135 = load i32*, i32** %25, align 8
  store i32* %135, i32** %30, align 8
  br label %174

136:                                              ; preds = %117, %117
  %137 = load i32*, i32** %27, align 8
  store i32* %137, i32** %30, align 8
  br label %174

138:                                              ; preds = %117
  %139 = load i8*, i8** %19, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i8*, i8** %20, align 8
  %143 = icmp ne i8* %142, null
  br i1 %143, label %144, label %168

144:                                              ; preds = %141, %138
  %145 = load i8*, i8** %17, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 0
  %147 = load i8, i8* %146, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %168

150:                                              ; preds = %144
  %151 = load i32*, i32** %23, align 8
  %152 = load i32*, i32** %34, align 8
  %153 = call i32* @apr_hash_copy(i32* %151, i32* %152)
  store i32* %153, i32** %30, align 8
  %154 = load i8*, i8** %20, align 8
  %155 = icmp ne i8* %154, null
  br i1 %155, label %163, label %156

156:                                              ; preds = %150
  %157 = load i8*, i8** %19, align 8
  %158 = load i32*, i32** %23, align 8
  %159 = call i32 @svn_stringbuf_from_file2(i32** %37, i8* %157, i32* %158)
  %160 = call i32 @SVN_ERR(i32 %159)
  %161 = load i32*, i32** %37, align 8
  %162 = call i8* @svn_stringbuf__morph_into_string(i32* %161)
  store i8* %162, i8** %20, align 8
  br label %163

163:                                              ; preds = %156, %150
  %164 = load i32*, i32** %30, align 8
  %165 = load i8*, i8** %17, align 8
  %166 = load i8*, i8** %20, align 8
  %167 = call i32 @svn_hash_sets(i32* %164, i8* %165, i8* %166)
  br label %169

168:                                              ; preds = %144, %141
  store i32* null, i32** %30, align 8
  br label %169

169:                                              ; preds = %168, %163
  br label %174

170:                                              ; preds = %117
  %171 = load i32, i32* @SVN_ERR_INCORRECT_PARAMS, align 4
  %172 = call i32 @_(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %173 = call i32* @svn_error_create(i32 %171, i32* null, i32 %172)
  store i32* %173, i32** %12, align 8
  br label %290

174:                                              ; preds = %169, %136, %134, %132
  %175 = load i32*, i32** %30, align 8
  %176 = icmp ne i32* %175, null
  br i1 %176, label %177, label %212

177:                                              ; preds = %174
  %178 = load i8*, i8** %17, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 0
  %180 = load i8, i8* %179, align 1
  %181 = sext i8 %180 to i32
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %177
  %184 = load i32*, i32** %28, align 8
  store i32* %184, i32** %39, align 8
  br label %191

185:                                              ; preds = %177
  %186 = load i32*, i32** %23, align 8
  %187 = call i32* @apr_hash_make(i32* %186)
  store i32* %187, i32** %39, align 8
  %188 = load i32*, i32** %39, align 8
  %189 = load i8*, i8** %17, align 8
  %190 = call i32 @svn_hash_sets(i32* %188, i8* %189, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  br label %191

191:                                              ; preds = %185, %183
  %192 = load i32*, i32** %23, align 8
  %193 = load i32*, i32** %39, align 8
  %194 = call i32* @apr_hash_first(i32* %192, i32* %193)
  store i32* %194, i32** %38, align 8
  br label %195

195:                                              ; preds = %208, %191
  %196 = load i32*, i32** %38, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %211

198:                                              ; preds = %195
  %199 = load i32*, i32** %38, align 8
  %200 = call i8* @apr_hash_this_key(i32* %199)
  store i8* %200, i8** %40, align 8
  store i8* null, i8** %41, align 8
  %201 = load i32*, i32** %30, align 8
  %202 = load i8*, i8** %40, align 8
  %203 = call i8* @svn_hash_gets(i32* %201, i8* %202)
  store i8* %203, i8** %41, align 8
  %204 = load i32*, i32** %34, align 8
  %205 = load i8*, i8** %40, align 8
  %206 = load i8*, i8** %41, align 8
  %207 = call i32 @svn_hash_sets(i32* %204, i8* %205, i8* %206)
  br label %208

208:                                              ; preds = %198
  %209 = load i32*, i32** %38, align 8
  %210 = call i32* @apr_hash_next(i32* %209)
  store i32* %210, i32** %38, align 8
  br label %195

211:                                              ; preds = %195
  br label %212

212:                                              ; preds = %211, %174
  %213 = load i32*, i32** %16, align 8
  %214 = load i32*, i32** %14, align 8
  %215 = load i8*, i8** %15, align 8
  %216 = load i32, i32* @FALSE, align 4
  %217 = load i8*, i8** %17, align 8
  %218 = load i32, i32* @FALSE, align 4
  %219 = load i32*, i32** %23, align 8
  %220 = load i32*, i32** %23, align 8
  %221 = call i32 @svn_wc__conflict_skel_resolve(i32* %35, i32* %213, i32* %214, i8* %215, i32 %216, i8* %217, i32 %218, i32* %219, i32* %220)
  %222 = call i32 @SVN_ERR(i32 %221)
  %223 = load i32, i32* %35, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %237, label %225

225:                                              ; preds = %212
  %226 = load i32*, i32** %14, align 8
  %227 = load i8*, i8** %15, align 8
  %228 = load i32*, i32** %16, align 8
  %229 = load i32*, i32** %23, align 8
  %230 = load i32*, i32** %23, align 8
  %231 = call i32 @svn_wc__conflict_read_info(i64* null, i32* null, i32* null, i32* %33, i32* null, i32* %226, i8* %227, i32* %228, i32* %229, i32* %230)
  %232 = call i32 @SVN_ERR(i32 %231)
  %233 = load i32, i32* %33, align 4
  %234 = icmp ne i32 %233, 0
  %235 = xor i1 %234, true
  %236 = zext i1 %235 to i32
  store i32 %236, i32* %36, align 4
  br label %239

237:                                              ; preds = %212
  %238 = load i32, i32* @TRUE, align 4
  store i32 %238, i32* %36, align 4
  store i32* null, i32** %16, align 8
  br label %239

239:                                              ; preds = %237, %225
  %240 = load i32, i32* %36, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load i32*, i32** %13, align 8
  %244 = load i32*, i32** %14, align 8
  %245 = load i8*, i8** %15, align 8
  %246 = load i8*, i8** %24, align 8
  %247 = load i32*, i32** %23, align 8
  %248 = load i32*, i32** %23, align 8
  %249 = call i32 @remove_artifact_file_if_exists(i32** %31, i32* %243, i32* %244, i8* %245, i8* %246, i32* %247, i32* %248)
  %250 = call i32 @SVN_ERR(i32 %249)
  br label %260

251:                                              ; preds = %239
  %252 = load i32*, i32** %14, align 8
  %253 = load i8*, i8** %15, align 8
  %254 = load i32*, i32** %23, align 8
  %255 = load i32*, i32** %23, align 8
  %256 = call i32 @svn_wc__wq_build_prej_install(i32** %31, i32* %252, i8* %253, i32* %254, i32* %255)
  %257 = call i32 @SVN_ERR(i32 %256)
  %258 = load i32, i32* @TRUE, align 4
  %259 = load i32*, i32** %13, align 8
  store i32 %258, i32* %259, align 4
  br label %260

260:                                              ; preds = %251, %242
  %261 = load i32*, i32** %14, align 8
  %262 = load i8*, i8** %15, align 8
  %263 = load i32*, i32** %34, align 8
  %264 = load i32, i32* @FALSE, align 4
  %265 = load i32*, i32** %16, align 8
  %266 = load i32*, i32** %31, align 8
  %267 = load i32*, i32** %23, align 8
  %268 = call i32 @svn_wc__db_op_set_props(i32* %261, i8* %262, i32* %263, i32 %264, i32* %265, i32* %266, i32* %267)
  %269 = call i32 @SVN_ERR(i32 %268)
  %270 = load i32, i32* %35, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %281

272:                                              ; preds = %260
  %273 = load i32*, i32** %14, align 8
  %274 = load i8*, i8** %15, align 8
  %275 = load i32, i32* @FALSE, align 4
  %276 = load i32, i32* @TRUE, align 4
  %277 = load i32, i32* @FALSE, align 4
  %278 = load i32*, i32** %23, align 8
  %279 = call i32 @svn_wc__db_op_mark_resolved(i32* %273, i8* %274, i32 %275, i32 %276, i32 %277, i32* null, i32* %278)
  %280 = call i32 @SVN_ERR(i32 %279)
  br label %281

281:                                              ; preds = %272, %260
  %282 = load i32*, i32** %14, align 8
  %283 = load i8*, i8** %15, align 8
  %284 = load i32, i32* %21, align 4
  %285 = load i8*, i8** %22, align 8
  %286 = load i32*, i32** %23, align 8
  %287 = call i32 @svn_wc__wq_run(i32* %282, i8* %283, i32 %284, i8* %285, i32* %286)
  %288 = call i32 @SVN_ERR(i32 %287)
  %289 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %289, i32** %12, align 8
  br label %290

290:                                              ; preds = %281, %170, %102, %65, %53
  %291 = load i32*, i32** %12, align 8
  ret i32* %291
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__conflict_read_prop_conflict(i8**, i32**, i32**, i32**, i32**, i32*, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @remove_artifact_file_if_exists(i32**, i32*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_mark_resolved(i32*, i8*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i8* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_wc__db_read_pristine_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_props(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @apr_hash_copy(i32*, i32*) #1

declare dso_local i32 @svn_stringbuf_from_file2(i32**, i8*, i32*) #1

declare dso_local i8* @svn_stringbuf__morph_into_string(i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i8*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32* @apr_hash_first(i32*, i32*) #1

declare dso_local i8* @apr_hash_this_key(i32*) #1

declare dso_local i32* @apr_hash_next(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_resolve(i32*, i32*, i32*, i8*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_prej_install(i32**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_op_set_props(i32*, i8*, i32*, i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
