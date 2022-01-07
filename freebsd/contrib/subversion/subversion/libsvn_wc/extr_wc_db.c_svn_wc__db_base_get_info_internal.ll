; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_info_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_base_get_info_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@STMT_SELECT_BASE_NODE_WITH_LOCK = common dso_local global i32 0, align 4
@STMT_SELECT_BASE_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@presence_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"The node '%s' has a corrupt checksum value.\00", align 1
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_13__* @svn_wc__db_base_get_info_internal(i64* %0, i64* %1, i32* %2, i8** %3, i64* %4, i32* %5, i32* %6, i8** %7, i32* %8, i32** %9, i8** %10, i32** %11, i64* %12, i32** %13, i64* %14, %struct.TYPE_12__* %15, i8* %16, i32* %17, i32* %18) #0 {
  %20 = alloca i64*, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i64*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32**, align 8
  %30 = alloca i8**, align 8
  %31 = alloca i32**, align 8
  %32 = alloca i64*, align 8
  %33 = alloca i32**, align 8
  %34 = alloca i64*, align 8
  %35 = alloca %struct.TYPE_12__*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i64, align 8
  %41 = alloca %struct.TYPE_13__*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i64, align 8
  store i64* %0, i64** %20, align 8
  store i64* %1, i64** %21, align 8
  store i32* %2, i32** %22, align 8
  store i8** %3, i8*** %23, align 8
  store i64* %4, i64** %24, align 8
  store i32* %5, i32** %25, align 8
  store i32* %6, i32** %26, align 8
  store i8** %7, i8*** %27, align 8
  store i32* %8, i32** %28, align 8
  store i32** %9, i32*** %29, align 8
  store i8** %10, i8*** %30, align 8
  store i32** %11, i32*** %31, align 8
  store i64* %12, i64** %32, align 8
  store i32** %13, i32*** %33, align 8
  store i64* %14, i64** %34, align 8
  store %struct.TYPE_12__* %15, %struct.TYPE_12__** %35, align 8
  store i8* %16, i8** %36, align 8
  store i32* %17, i32** %37, align 8
  store i32* %18, i32** %38, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %44, %struct.TYPE_13__** %41, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32**, i32*** %31, align 8
  %49 = icmp ne i32** %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %19
  %51 = load i32, i32* @STMT_SELECT_BASE_NODE_WITH_LOCK, align 4
  br label %54

52:                                               ; preds = %19
  %53 = load i32, i32* @STMT_SELECT_BASE_NODE, align 4
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i32 [ %51, %50 ], [ %53, %52 ]
  %56 = call i32 @svn_sqlite__get_statement(i32** %39, i32 %47, i32 %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i32*, i32** %39, align 8
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i8*, i8** %36, align 8
  %63 = call i32 @svn_sqlite__bindf(i32* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %61, i8* %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %39, align 8
  %66 = call i32 @svn_sqlite__step(i64* %40, i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i64, i64* %40, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %253

70:                                               ; preds = %54
  %71 = load i32*, i32** %39, align 8
  %72 = load i32, i32* @presence_map, align 4
  %73 = call i64 @svn_sqlite__column_token(i32* %71, i32 2, i32 %72)
  store i64 %73, i64* %42, align 8
  %74 = load i32*, i32** %39, align 8
  %75 = load i32, i32* @kind_map, align 4
  %76 = call i64 @svn_sqlite__column_token(i32* %74, i32 3, i32 %75)
  store i64 %76, i64* %43, align 8
  %77 = load i64*, i64** %21, align 8
  %78 = icmp ne i64* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %70
  %80 = load i64, i64* %43, align 8
  %81 = load i64*, i64** %21, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %79, %70
  %83 = load i64*, i64** %20, align 8
  %84 = icmp ne i64* %83, null
  br i1 %84, label %85, label %88

85:                                               ; preds = %82
  %86 = load i64, i64* %42, align 8
  %87 = load i64*, i64** %20, align 8
  store i64 %86, i64* %87, align 8
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i64*, i64** %24, align 8
  %90 = load i32*, i32** %22, align 8
  %91 = load i8**, i8*** %23, align 8
  %92 = load i32*, i32** %39, align 8
  %93 = load i32*, i32** %37, align 8
  %94 = call i32 @repos_location_from_columns(i64* %89, i32* %90, i8** %91, i32* %92, i32 0, i32 4, i32 1, i32* %93)
  %95 = load i64*, i64** %24, align 8
  %96 = icmp ne i64* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %88
  %98 = load i64*, i64** %24, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @INVALID_REPOS_ID, align 8
  %101 = icmp ne i64 %99, %100
  br label %102

102:                                              ; preds = %97, %88
  %103 = phi i1 [ true, %88 ], [ %101, %97 ]
  %104 = zext i1 %103 to i32
  %105 = call i32 @SVN_ERR_ASSERT(i32 %104)
  %106 = load i8**, i8*** %23, align 8
  %107 = icmp ne i8** %106, null
  br i1 %107, label %108, label %112

108:                                              ; preds = %102
  %109 = load i8**, i8*** %23, align 8
  %110 = load i8*, i8** %109, align 8
  %111 = icmp ne i8* %110, null
  br label %112

112:                                              ; preds = %108, %102
  %113 = phi i1 [ true, %102 ], [ %111, %108 ]
  %114 = zext i1 %113 to i32
  %115 = call i32 @SVN_ERR_ASSERT(i32 %114)
  %116 = load i32**, i32*** %31, align 8
  %117 = icmp ne i32** %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load i32*, i32** %39, align 8
  %120 = load i32*, i32** %37, align 8
  %121 = call i32* @lock_from_columns(i32* %119, i32 15, i32 16, i32 17, i32 18, i32* %120)
  %122 = load i32**, i32*** %31, align 8
  store i32* %121, i32** %122, align 8
  br label %123

123:                                              ; preds = %118, %112
  %124 = load i32*, i32** %25, align 8
  %125 = icmp ne i32* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %123
  %127 = load i32*, i32** %39, align 8
  %128 = call i32 @svn_sqlite__column_revnum(i32* %127, i32 7)
  %129 = load i32*, i32** %25, align 8
  store i32 %128, i32* %129, align 4
  br label %130

130:                                              ; preds = %126, %123
  %131 = load i32*, i32** %26, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load i32*, i32** %39, align 8
  %135 = call i32 @svn_sqlite__column_int64(i32* %134, i32 8)
  %136 = load i32*, i32** %26, align 8
  store i32 %135, i32* %136, align 4
  br label %137

137:                                              ; preds = %133, %130
  %138 = load i8**, i8*** %27, align 8
  %139 = icmp ne i8** %138, null
  br i1 %139, label %140, label %145

140:                                              ; preds = %137
  %141 = load i32*, i32** %39, align 8
  %142 = load i32*, i32** %37, align 8
  %143 = call i8* @svn_sqlite__column_text(i32* %141, i32 9, i32* %142)
  %144 = load i8**, i8*** %27, align 8
  store i8* %143, i8** %144, align 8
  br label %145

145:                                              ; preds = %140, %137
  %146 = load i32*, i32** %28, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %162

148:                                              ; preds = %145
  %149 = load i64, i64* %43, align 8
  %150 = load i64, i64* @svn_node_dir, align 8
  %151 = icmp ne i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %148
  %153 = load i32, i32* @svn_depth_unknown, align 4
  %154 = load i32*, i32** %28, align 8
  store i32 %153, i32* %154, align 4
  br label %161

155:                                              ; preds = %148
  %156 = load i32*, i32** %39, align 8
  %157 = load i32, i32* @depth_map, align 4
  %158 = load i32, i32* @svn_depth_unknown, align 4
  %159 = call i32 @svn_sqlite__column_token_null(i32* %156, i32 10, i32 %157, i32 %158)
  %160 = load i32*, i32** %28, align 8
  store i32 %159, i32* %160, align 4
  br label %161

161:                                              ; preds = %155, %152
  br label %162

162:                                              ; preds = %161, %145
  %163 = load i32**, i32*** %29, align 8
  %164 = icmp ne i32** %163, null
  br i1 %164, label %165, label %191

165:                                              ; preds = %162
  %166 = load i64, i64* %43, align 8
  %167 = load i64, i64* @svn_node_file, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %171

169:                                              ; preds = %165
  %170 = load i32**, i32*** %29, align 8
  store i32* null, i32** %170, align 8
  br label %190

171:                                              ; preds = %165
  %172 = load i32**, i32*** %29, align 8
  %173 = load i32*, i32** %39, align 8
  %174 = load i32*, i32** %37, align 8
  %175 = call %struct.TYPE_13__* @svn_sqlite__column_checksum(i32** %172, i32* %173, i32 5, i32* %174)
  store %struct.TYPE_13__* %175, %struct.TYPE_13__** %41, align 8
  %176 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %177 = icmp ne %struct.TYPE_13__* %176, null
  br i1 %177, label %178, label %189

178:                                              ; preds = %171
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %183 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %185 = load i8*, i8** %36, align 8
  %186 = load i32*, i32** %38, align 8
  %187 = call i32 @path_for_error_message(%struct.TYPE_12__* %184, i8* %185, i32* %186)
  %188 = call %struct.TYPE_13__* @svn_error_createf(i32 %181, %struct.TYPE_13__* %182, i32 %183, i32 %187)
  store %struct.TYPE_13__* %188, %struct.TYPE_13__** %41, align 8
  br label %189

189:                                              ; preds = %178, %171
  br label %190

190:                                              ; preds = %189, %169
  br label %191

191:                                              ; preds = %190, %162
  %192 = load i8**, i8*** %30, align 8
  %193 = icmp ne i8** %192, null
  br i1 %193, label %194, label %206

194:                                              ; preds = %191
  %195 = load i64, i64* %43, align 8
  %196 = load i64, i64* @svn_node_symlink, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %198, label %200

198:                                              ; preds = %194
  %199 = load i8**, i8*** %30, align 8
  store i8* null, i8** %199, align 8
  br label %205

200:                                              ; preds = %194
  %201 = load i32*, i32** %39, align 8
  %202 = load i32*, i32** %37, align 8
  %203 = call i8* @svn_sqlite__column_text(i32* %201, i32 11, i32* %202)
  %204 = load i8**, i8*** %30, align 8
  store i8* %203, i8** %204, align 8
  br label %205

205:                                              ; preds = %200, %198
  br label %206

206:                                              ; preds = %205, %191
  %207 = load i64*, i64** %32, align 8
  %208 = icmp ne i64* %207, null
  br i1 %208, label %209, label %213

209:                                              ; preds = %206
  %210 = load i32*, i32** %39, align 8
  %211 = call i64 @SQLITE_PROPERTIES_AVAILABLE(i32* %210, i32 13)
  %212 = load i64*, i64** %32, align 8
  store i64 %211, i64* %212, align 8
  br label %213

213:                                              ; preds = %209, %206
  %214 = load i32**, i32*** %33, align 8
  %215 = icmp ne i32** %214, null
  br i1 %215, label %216, label %245

216:                                              ; preds = %213
  %217 = load i64, i64* %42, align 8
  %218 = load i64, i64* @svn_wc__db_status_normal, align 8
  %219 = icmp eq i64 %217, %218
  br i1 %219, label %224, label %220

220:                                              ; preds = %216
  %221 = load i64, i64* %42, align 8
  %222 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %223 = icmp eq i64 %221, %222
  br i1 %223, label %224, label %239

224:                                              ; preds = %220, %216
  %225 = load i32**, i32*** %33, align 8
  %226 = load i32*, i32** %39, align 8
  %227 = load i32*, i32** %37, align 8
  %228 = load i32*, i32** %38, align 8
  %229 = call i32 @svn_sqlite__column_properties(i32** %225, i32* %226, i32 13, i32* %227, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load i32**, i32*** %33, align 8
  %232 = load i32*, i32** %231, align 8
  %233 = icmp eq i32* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %224
  %235 = load i32*, i32** %37, align 8
  %236 = call i32* @apr_hash_make(i32* %235)
  %237 = load i32**, i32*** %33, align 8
  store i32* %236, i32** %237, align 8
  br label %238

238:                                              ; preds = %234, %224
  br label %244

239:                                              ; preds = %220
  %240 = load i32*, i32** %39, align 8
  %241 = call i32 @svn_sqlite__column_is_null(i32* %240, i32 13)
  %242 = call i32 @assert(i32 %241)
  %243 = load i32**, i32*** %33, align 8
  store i32* null, i32** %243, align 8
  br label %244

244:                                              ; preds = %239, %238
  br label %245

245:                                              ; preds = %244, %213
  %246 = load i64*, i64** %34, align 8
  %247 = icmp ne i64* %246, null
  br i1 %247, label %248, label %252

248:                                              ; preds = %245
  %249 = load i32*, i32** %39, align 8
  %250 = call i64 @svn_sqlite__column_boolean(i32* %249, i32 14)
  %251 = load i64*, i64** %34, align 8
  store i64 %250, i64* %251, align 8
  br label %252

252:                                              ; preds = %248, %245
  br label %261

253:                                              ; preds = %54
  %254 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %255 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %256 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %257 = load i8*, i8** %36, align 8
  %258 = load i32*, i32** %38, align 8
  %259 = call i32 @path_for_error_message(%struct.TYPE_12__* %256, i8* %257, i32* %258)
  %260 = call %struct.TYPE_13__* @svn_error_createf(i32 %254, %struct.TYPE_13__* null, i32 %255, i32 %259)
  store %struct.TYPE_13__* %260, %struct.TYPE_13__** %41, align 8
  br label %261

261:                                              ; preds = %253, %252
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %263 = load i32*, i32** %39, align 8
  %264 = call i32 @svn_sqlite__reset(i32* %263)
  %265 = call %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__* %262, i32 %264)
  ret %struct.TYPE_13__* %265
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @repos_location_from_columns(i64*, i32*, i8**, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32* @lock_from_columns(i32*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_token_null(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_13__* @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_createf(i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i64 @SQLITE_PROPERTIES_AVAILABLE(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_boolean(i32*, i32) #1

declare dso_local %struct.TYPE_13__* @svn_error_compose_create(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
