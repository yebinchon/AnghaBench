; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_pristine_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_read_pristine_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32 }

@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"The node '%s' was not found.\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@kind_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@depth_map = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"The node '%s' has a corrupt checksum value.\00", align 1
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_wc__db_read_pristine_info(i64* %0, i64* %1, i32* %2, i32* %3, i8** %4, i32* %5, i32** %6, i8** %7, i32* %8, i32** %9, i32* %10, i8* %11, i32* %12, i32* %13) #0 {
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i8**, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32**, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca %struct.TYPE_17__*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.TYPE_18__*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca %struct.TYPE_18__*, align 8
  store i64* %0, i64** %16, align 8
  store i64* %1, i64** %17, align 8
  store i32* %2, i32** %18, align 8
  store i32* %3, i32** %19, align 8
  store i8** %4, i8*** %20, align 8
  store i32* %5, i32** %21, align 8
  store i32** %6, i32*** %22, align 8
  store i8** %7, i8*** %23, align 8
  store i32* %8, i32** %24, align 8
  store i32** %9, i32*** %25, align 8
  store i32* %10, i32** %26, align 8
  store i8* %11, i8** %27, align 8
  store i32* %12, i32** %28, align 8
  store i32* %13, i32** %29, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %34, align 8
  %39 = load i8*, i8** %27, align 8
  %40 = call i32 @svn_dirent_is_absolute(i8* %39)
  %41 = call i32 @SVN_ERR_ASSERT(i32 %40)
  %42 = load i32*, i32** %26, align 8
  %43 = load i8*, i8** %27, align 8
  %44 = load i32*, i32** %29, align 8
  %45 = load i32*, i32** %29, align 8
  %46 = call i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_17__** %30, i8** %31, i32* %42, i8* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %49 = call i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_17__* %48)
  %50 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %51 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %54 = call i32 @svn_sqlite__get_statement(i32** %32, i32 %52, i32 %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load i32*, i32** %32, align 8
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i8*, i8** %31, align 8
  %61 = call i32 @svn_sqlite__bindf(i32* %56, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %59, i8* %60)
  %62 = call i32 @SVN_ERR(i32 %61)
  %63 = load i32*, i32** %32, align 8
  %64 = call i32 @svn_sqlite__step(i32* %33, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i32, i32* %33, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %78, label %68

68:                                               ; preds = %14
  %69 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %70 = load i32*, i32** %32, align 8
  %71 = call %struct.TYPE_18__* @svn_sqlite__reset(i32* %70)
  %72 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %74 = load i8*, i8** %31, align 8
  %75 = load i32*, i32** %29, align 8
  %76 = call i32 @path_for_error_message(%struct.TYPE_17__* %73, i8* %74, i32* %75)
  %77 = call %struct.TYPE_18__* @svn_error_createf(i32 %69, %struct.TYPE_18__* %71, i32 %72, i32 %76)
  store %struct.TYPE_18__* %77, %struct.TYPE_18__** %15, align 8
  br label %260

78:                                               ; preds = %14
  %79 = load i32*, i32** %32, align 8
  %80 = call i32 @svn_sqlite__column_int(i32* %79, i32 0)
  store i32 %80, i32* %35, align 4
  %81 = load i32*, i32** %32, align 8
  %82 = load i32, i32* @presence_map, align 4
  %83 = call i64 @svn_sqlite__column_token(i32* %81, i32 3, i32 %82)
  store i64 %83, i64* %36, align 8
  %84 = load i32, i32* %35, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %99

86:                                               ; preds = %78
  %87 = load i64, i64* %36, align 8
  %88 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %99

90:                                               ; preds = %86
  %91 = load i32*, i32** %32, align 8
  %92 = call i32 @svn_sqlite__step_row(i32* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %32, align 8
  %95 = call i32 @svn_sqlite__column_int(i32* %94, i32 0)
  store i32 %95, i32* %35, align 4
  %96 = load i32*, i32** %32, align 8
  %97 = load i32, i32* @presence_map, align 4
  %98 = call i64 @svn_sqlite__column_token(i32* %96, i32 3, i32 %97)
  store i64 %98, i64* %36, align 8
  br label %99

99:                                               ; preds = %90, %86, %78
  %100 = load i32*, i32** %32, align 8
  %101 = load i32, i32* @kind_map, align 4
  %102 = call i64 @svn_sqlite__column_token(i32* %100, i32 4, i32 %101)
  store i64 %102, i64* %37, align 8
  %103 = load i64*, i64** %16, align 8
  %104 = icmp ne i64* %103, null
  br i1 %104, label %105, label %118

105:                                              ; preds = %99
  %106 = load i32, i32* %35, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %105
  %109 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %110 = load i64*, i64** %16, align 8
  %111 = load i64, i64* %36, align 8
  %112 = call %struct.TYPE_18__* @convert_to_working_status(i64* %110, i64 %111)
  %113 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %109, %struct.TYPE_18__* %112)
  store %struct.TYPE_18__* %113, %struct.TYPE_18__** %34, align 8
  br label %117

114:                                              ; preds = %105
  %115 = load i64, i64* %36, align 8
  %116 = load i64*, i64** %16, align 8
  store i64 %115, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %108
  br label %118

118:                                              ; preds = %117, %99
  %119 = load i64*, i64** %17, align 8
  %120 = icmp ne i64* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %118
  %122 = load i64, i64* %37, align 8
  %123 = load i64*, i64** %17, align 8
  store i64 %122, i64* %123, align 8
  br label %124

124:                                              ; preds = %121, %118
  %125 = load i32*, i32** %18, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load i32*, i32** %32, align 8
  %129 = call i32 @svn_sqlite__column_revnum(i32* %128, i32 8)
  %130 = load i32*, i32** %18, align 8
  store i32 %129, i32* %130, align 4
  br label %131

131:                                              ; preds = %127, %124
  %132 = load i32*, i32** %19, align 8
  %133 = icmp ne i32* %132, null
  br i1 %133, label %134, label %138

134:                                              ; preds = %131
  %135 = load i32*, i32** %32, align 8
  %136 = call i32 @svn_sqlite__column_int64(i32* %135, i32 9)
  %137 = load i32*, i32** %19, align 8
  store i32 %136, i32* %137, align 4
  br label %138

138:                                              ; preds = %134, %131
  %139 = load i8**, i8*** %20, align 8
  %140 = icmp ne i8** %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %138
  %142 = load i32*, i32** %32, align 8
  %143 = load i32*, i32** %28, align 8
  %144 = call i8* @svn_sqlite__column_text(i32* %142, i32 10, i32* %143)
  %145 = load i8**, i8*** %20, align 8
  store i8* %144, i8** %145, align 8
  br label %146

146:                                              ; preds = %141, %138
  %147 = load i32*, i32** %21, align 8
  %148 = icmp ne i32* %147, null
  br i1 %148, label %149, label %163

149:                                              ; preds = %146
  %150 = load i64, i64* %37, align 8
  %151 = load i64, i64* @svn_node_dir, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* @svn_depth_unknown, align 4
  %155 = load i32*, i32** %21, align 8
  store i32 %154, i32* %155, align 4
  br label %162

156:                                              ; preds = %149
  %157 = load i32*, i32** %32, align 8
  %158 = load i32, i32* @depth_map, align 4
  %159 = load i32, i32* @svn_depth_unknown, align 4
  %160 = call i32 @svn_sqlite__column_token_null(i32* %157, i32 11, i32 %158, i32 %159)
  %161 = load i32*, i32** %21, align 8
  store i32 %160, i32* %161, align 4
  br label %162

162:                                              ; preds = %156, %153
  br label %163

163:                                              ; preds = %162, %146
  %164 = load i32**, i32*** %22, align 8
  %165 = icmp ne i32** %164, null
  br i1 %165, label %166, label %200

166:                                              ; preds = %163
  %167 = load i64, i64* %37, align 8
  %168 = load i64, i64* @svn_node_file, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %172

170:                                              ; preds = %166
  %171 = load i32**, i32*** %22, align 8
  store i32* null, i32** %171, align 8
  br label %199

172:                                              ; preds = %166
  %173 = load i32**, i32*** %22, align 8
  %174 = load i32*, i32** %32, align 8
  %175 = load i32*, i32** %28, align 8
  %176 = call %struct.TYPE_18__* @svn_sqlite__column_checksum(i32** %173, i32* %174, i32 6, i32* %175)
  store %struct.TYPE_18__* %176, %struct.TYPE_18__** %38, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %178 = icmp ne %struct.TYPE_18__* %177, null
  br i1 %178, label %179, label %198

179:                                              ; preds = %172
  %180 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %181 = icmp ne %struct.TYPE_18__* %180, null
  br i1 %181, label %182, label %195

182:                                              ; preds = %179
  %183 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  %188 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %30, align 8
  %190 = load i8*, i8** %31, align 8
  %191 = load i32*, i32** %29, align 8
  %192 = call i32 @path_for_error_message(%struct.TYPE_17__* %189, i8* %190, i32* %191)
  %193 = call %struct.TYPE_18__* @svn_error_createf(i32 %186, %struct.TYPE_18__* %187, i32 %188, i32 %192)
  %194 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %183, %struct.TYPE_18__* %193)
  store %struct.TYPE_18__* %194, %struct.TYPE_18__** %34, align 8
  br label %197

195:                                              ; preds = %179
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %38, align 8
  store %struct.TYPE_18__* %196, %struct.TYPE_18__** %34, align 8
  br label %197

197:                                              ; preds = %195, %182
  br label %198

198:                                              ; preds = %197, %172
  br label %199

199:                                              ; preds = %198, %170
  br label %200

200:                                              ; preds = %199, %163
  %201 = load i8**, i8*** %23, align 8
  %202 = icmp ne i8** %201, null
  br i1 %202, label %203, label %215

203:                                              ; preds = %200
  %204 = load i64, i64* %37, align 8
  %205 = load i64, i64* @svn_node_symlink, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %209

207:                                              ; preds = %203
  %208 = load i8**, i8*** %23, align 8
  store i8* null, i8** %208, align 8
  br label %214

209:                                              ; preds = %203
  %210 = load i32*, i32** %32, align 8
  %211 = load i32*, i32** %28, align 8
  %212 = call i8* @svn_sqlite__column_text(i32* %210, i32 12, i32* %211)
  %213 = load i8**, i8*** %23, align 8
  store i8* %212, i8** %213, align 8
  br label %214

214:                                              ; preds = %209, %207
  br label %215

215:                                              ; preds = %214, %200
  %216 = load i32*, i32** %24, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %222

218:                                              ; preds = %215
  %219 = load i32*, i32** %32, align 8
  %220 = call i32 @SQLITE_PROPERTIES_AVAILABLE(i32* %219, i32 14)
  %221 = load i32*, i32** %24, align 8
  store i32 %220, i32* %221, align 4
  br label %222

222:                                              ; preds = %218, %215
  %223 = load i32**, i32*** %25, align 8
  %224 = icmp ne i32** %223, null
  br i1 %224, label %225, label %254

225:                                              ; preds = %222
  %226 = load i64, i64* %36, align 8
  %227 = load i64, i64* @svn_wc__db_status_normal, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %233, label %229

229:                                              ; preds = %225
  %230 = load i64, i64* %36, align 8
  %231 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %232 = icmp eq i64 %230, %231
  br i1 %232, label %233, label %248

233:                                              ; preds = %229, %225
  %234 = load i32**, i32*** %25, align 8
  %235 = load i32*, i32** %32, align 8
  %236 = load i32*, i32** %28, align 8
  %237 = load i32*, i32** %29, align 8
  %238 = call i32 @svn_sqlite__column_properties(i32** %234, i32* %235, i32 14, i32* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load i32**, i32*** %25, align 8
  %241 = load i32*, i32** %240, align 8
  %242 = icmp eq i32* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %233
  %244 = load i32*, i32** %28, align 8
  %245 = call i32* @apr_hash_make(i32* %244)
  %246 = load i32**, i32*** %25, align 8
  store i32* %245, i32** %246, align 8
  br label %247

247:                                              ; preds = %243, %233
  br label %253

248:                                              ; preds = %229
  %249 = load i32*, i32** %32, align 8
  %250 = call i32 @svn_sqlite__column_is_null(i32* %249, i32 14)
  %251 = call i32 @assert(i32 %250)
  %252 = load i32**, i32*** %25, align 8
  store i32* null, i32** %252, align 8
  br label %253

253:                                              ; preds = %248, %247
  br label %254

254:                                              ; preds = %253, %222
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %34, align 8
  %256 = load i32*, i32** %32, align 8
  %257 = call %struct.TYPE_18__* @svn_sqlite__reset(i32* %256)
  %258 = call %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__* %255, %struct.TYPE_18__* %257)
  %259 = call %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__* %258)
  store %struct.TYPE_18__* %259, %struct.TYPE_18__** %15, align 8
  br label %260

260:                                              ; preds = %254, %68
  %261 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  ret %struct.TYPE_18__* %261
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(%struct.TYPE_17__**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(%struct.TYPE_17__*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_createf(i32, %struct.TYPE_18__*, i32, i32) #1

declare dso_local %struct.TYPE_18__* @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_17__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__step_row(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_error_compose_create(%struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_18__* @convert_to_working_status(i64*, i64) #1

declare dso_local i32 @svn_sqlite__column_revnum(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_token_null(i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_18__* @svn_sqlite__column_checksum(i32**, i32*, i32, i32*) #1

declare dso_local i32 @SQLITE_PROPERTIES_AVAILABLE(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_properties(i32**, i32*, i32, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @svn_error_trace(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
