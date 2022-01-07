; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_insert_base_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_insert_base_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32*, i64, i32*, i64, i32*, i32, i32, i32*, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64 }

@SVN_INVALID_FILESIZE = common dso_local global i64 0, align 8
@INVALID_REPOS_ID = common dso_local global i64 0, align 8
@STMT_SELECT_BASE_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@svn_wc__db_status_normal = common dso_local global i64 0, align 8
@svn_wc__db_status_incomplete = common dso_local global i64 0, align 8
@STMT_INSERT_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"isdsisrtstrisnnnnns\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@depth_map = common dso_local global i32 0, align 4
@kind_map = common dso_local global i32 0, align 4
@svn_node_symlink = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc__db_status_not_present = common dso_local global i64 0, align 8
@svn_wc__db_status_excluded = common dso_local global i64 0, align 8
@svn_wc__db_status_server_excluded = common dso_local global i64 0, align 8
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"The file '%s' has no checksum.\00", align 1
@STMT_DELETE_WORKING_NODE = common dso_local global i32 0, align 4
@STMT_INSERT_DELETE_FROM_BASE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_13__*, %struct.TYPE_12__*, i8*, i32*)* @insert_base_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @insert_base_node(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  store i64 %23, i64* %12, align 8
  %24 = load i8*, i8** %8, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %33

29:                                               ; preds = %4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32*, i32** %9, align 8
  %32 = call i8* @svn_relpath_dirname(i8* %30, i32* %31)
  br label %33

33:                                               ; preds = %29, %28
  %34 = phi i8* [ null, %28 ], [ %32, %29 ]
  store i8* %34, i8** %15, align 8
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @INVALID_REPOS_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %53

40:                                               ; preds = %33
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 24
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 23
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = call i32 @create_repos_id(i64* %10, i32 %43, i32 %46, i32 %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %53

53:                                               ; preds = %40, %33
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @INVALID_REPOS_ID, align 8
  %56 = icmp ne i64 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @SVN_ERR_ASSERT(i32 %57)
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 10
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  %63 = zext i1 %62 to i32
  %64 = call i32 @SVN_ERR_ASSERT(i32 %63)
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 22
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %53
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @STMT_SELECT_BASE_NODE, align 4
  %74 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %72, i32 %73)
  %75 = call i32 @SVN_ERR(i32 %74)
  %76 = load i32*, i32** %11, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %76, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %79, i8* %80)
  %82 = call i32 @SVN_ERR(i32 %81)
  %83 = load i32*, i32** %11, align 8
  %84 = call i32 @svn_sqlite__step(i32* %16, i32* %83)
  %85 = call i32 @SVN_ERR(i32 %84)
  %86 = load i32, i32* %16, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %69
  %89 = load i32*, i32** %11, align 8
  %90 = call i64 @get_recorded_size(i32* %89, i32 6)
  store i64 %90, i64* %12, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = call i64 @svn_sqlite__column_int64(i32* %91, i32 12)
  store i64 %92, i64* %13, align 8
  br label %93

93:                                               ; preds = %88, %69
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @svn_sqlite__reset(i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  br label %97

97:                                               ; preds = %93, %53
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @svn_wc__db_status_normal, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %109, label %103

103:                                              ; preds = %97
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %108 = icmp eq i64 %106, %107
  br label %109

109:                                              ; preds = %103, %97
  %110 = phi i1 [ true, %97 ], [ %108, %103 ]
  %111 = zext i1 %110 to i32
  store i32 %111, i32* %14, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* @STMT_INSERT_NODE, align 4
  %116 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %114, i32 %115)
  %117 = call i32 @SVN_ERR(i32 %116)
  %118 = load i32*, i32** %11, align 8
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i8*, i8** %8, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load i64, i64* %10, align 8
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 10
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 9
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @presence_map, align 4
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @svn_node_dir, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %109
  %141 = load i32, i32* %14, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %149

143:                                              ; preds = %140
  %144 = load i32, i32* @depth_map, align 4
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 21
  %147 = load i32, i32* %146, align 4
  %148 = call i32* @svn_token__to_word(i32 %144, i32 %147)
  br label %150

149:                                              ; preds = %140, %109
  br label %150

150:                                              ; preds = %149, %143
  %151 = phi i32* [ %148, %143 ], [ null, %149 ]
  %152 = load i32, i32* @kind_map, align 4
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 2
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %156, i32 0, i32 20
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %159, i32 0, i32 19
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 18
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @svn_node_symlink, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %150
  %171 = load i32, i32* %14, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %174, i32 0, i32 17
  %176 = load i32*, i32** %175, align 8
  br label %178

177:                                              ; preds = %170, %150
  br label %178

178:                                              ; preds = %177, %173
  %179 = phi i32* [ %176, %173 ], [ null, %177 ]
  %180 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %121, i8* %122, i32 0, i8* %123, i64 %124, i32* %127, i32 %130, i32 %131, i64 %134, i32* %151, i32 %152, i64 %155, i32 %158, i32 %161, i32 %164, i32* %179)
  %181 = call i32 @SVN_ERR(i32 %180)
  %182 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* @svn_node_file, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %244

187:                                              ; preds = %178
  %188 = load i32, i32* %14, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %244

190:                                              ; preds = %187
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 16
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %223, label %195

195:                                              ; preds = %190
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %223

201:                                              ; preds = %195
  %202 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %223

207:                                              ; preds = %201
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %212 = icmp ne i64 %210, %211
  br i1 %212, label %213, label %223

213:                                              ; preds = %207
  %214 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %215 = load i32*, i32** %11, align 8
  %216 = call i32 @svn_sqlite__reset(i32* %215)
  %217 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %218 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %219 = load i8*, i8** %8, align 8
  %220 = load i32*, i32** %9, align 8
  %221 = call i32 @path_for_error_message(%struct.TYPE_12__* %218, i8* %219, i32* %220)
  %222 = call i32* @svn_error_createf(i32 %214, i32 %216, i32 %217, i32 %221)
  store i32* %222, i32** %5, align 8
  br label %512

223:                                              ; preds = %207, %201, %195, %190
  %224 = load i32*, i32** %11, align 8
  %225 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 16
  %227 = load i32, i32* %226, align 4
  %228 = load i32*, i32** %9, align 8
  %229 = call i32 @svn_sqlite__bind_checksum(i32* %224, i32 14, i32 %227, i32* %228)
  %230 = call i32 @SVN_ERR(i32 %229)
  %231 = load i64, i64* %12, align 8
  %232 = load i64, i64* @SVN_INVALID_FILESIZE, align 8
  %233 = icmp ne i64 %231, %232
  br i1 %233, label %234, label %243

234:                                              ; preds = %223
  %235 = load i32*, i32** %11, align 8
  %236 = load i64, i64* %12, align 8
  %237 = call i32 @svn_sqlite__bind_int64(i32* %235, i32 16, i64 %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  %239 = load i32*, i32** %11, align 8
  %240 = load i64, i64* %13, align 8
  %241 = call i32 @svn_sqlite__bind_int64(i32* %239, i32 17, i64 %240)
  %242 = call i32 @SVN_ERR(i32 %241)
  br label %243

243:                                              ; preds = %234, %223
  br label %244

244:                                              ; preds = %243, %187, %178
  %245 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @svn_wc__db_status_normal, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %261, label %250

250:                                              ; preds = %244
  %251 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %252 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %261, label %256

256:                                              ; preds = %250
  %257 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %258 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %257, i32 0, i32 12
  %259 = load i32*, i32** %258, align 8
  %260 = icmp eq i32* %259, null
  br label %261

261:                                              ; preds = %256, %250, %244
  %262 = phi i1 [ true, %250 ], [ true, %244 ], [ %260, %256 ]
  %263 = zext i1 %262 to i32
  %264 = call i32 @assert(i32 %263)
  %265 = load i32, i32* %14, align 4
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %267, label %282

267:                                              ; preds = %261
  %268 = load i32*, i32** %11, align 8
  %269 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %269, i32 0, i32 12
  %271 = load i32*, i32** %270, align 8
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @svn_sqlite__bind_properties(i32* %268, i32 15, i32* %271, i32* %272)
  %274 = call i32 @SVN_ERR(i32 %273)
  %275 = load i32*, i32** %11, align 8
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 15
  %278 = load i32, i32* %277, align 8
  %279 = load i32*, i32** %9, align 8
  %280 = call i32 @svn_sqlite__bind_iprops(i32* %275, i32 23, i32 %278, i32* %279)
  %281 = call i32 @SVN_ERR(i32 %280)
  br label %282

282:                                              ; preds = %267, %261
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %283, i32 0, i32 14
  %285 = load i32*, i32** %284, align 8
  %286 = icmp ne i32* %285, null
  br i1 %286, label %287, label %295

287:                                              ; preds = %282
  %288 = load i32*, i32** %11, align 8
  %289 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 14
  %291 = load i32*, i32** %290, align 8
  %292 = load i32*, i32** %9, align 8
  %293 = call i32 @svn_sqlite__bind_properties(i32* %288, i32 18, i32* %291, i32* %292)
  %294 = call i32 @SVN_ERR(i32 %293)
  br label %295

295:                                              ; preds = %287, %282
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 7
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %304

300:                                              ; preds = %295
  %301 = load i32*, i32** %11, align 8
  %302 = call i32 @svn_sqlite__bind_int(i32* %301, i32 20, i32 1)
  %303 = call i32 @SVN_ERR(i32 %302)
  br label %304

304:                                              ; preds = %300, %295
  %305 = load i32*, i32** %11, align 8
  %306 = call i32 @svn_sqlite__insert(i32* null, i32* %305)
  %307 = call i32 @SVN_ERR(i32 %306)
  %308 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %308, i32 0, i32 13
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %350

312:                                              ; preds = %304
  %313 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 12
  %315 = load i32*, i32** %314, align 8
  store i32* %315, i32** %17, align 8
  %316 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %316, i32 0, i32 11
  %318 = load i64, i64* %317, align 8
  %319 = inttoptr i64 %318 to i32*
  store i32* %319, i32** %18, align 8
  %320 = load i32*, i32** %17, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %343

322:                                              ; preds = %312
  %323 = load i32*, i32** %18, align 8
  %324 = icmp ne i32* %323, null
  br i1 %324, label %325, label %343

325:                                              ; preds = %322
  %326 = load i32*, i32** %17, align 8
  %327 = call i64 @apr_hash_count(i32* %326)
  %328 = load i32*, i32** %18, align 8
  %329 = call i64 @apr_hash_count(i32* %328)
  %330 = icmp eq i64 %327, %329
  br i1 %330, label %331, label %343

331:                                              ; preds = %325
  %332 = load i32*, i32** %18, align 8
  %333 = load i32*, i32** %17, align 8
  %334 = load i32*, i32** %9, align 8
  %335 = call i32 @svn_prop_diffs(%struct.TYPE_14__** %19, i32* %332, i32* %333, i32* %334)
  %336 = call i32 @SVN_ERR(i32 %335)
  %337 = load %struct.TYPE_14__*, %struct.TYPE_14__** %19, align 8
  %338 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %331
  store i32* null, i32** %18, align 8
  br label %342

342:                                              ; preds = %341, %331
  br label %343

343:                                              ; preds = %342, %325, %322, %312
  %344 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %345 = load i8*, i8** %8, align 8
  %346 = load i32*, i32** %18, align 8
  %347 = load i32*, i32** %9, align 8
  %348 = call i32 @set_actual_props(%struct.TYPE_12__* %344, i8* %345, i32* %346, i32* %347)
  %349 = call i32 @SVN_ERR(i32 %348)
  br label %350

350:                                              ; preds = %343, %304
  %351 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 2
  %353 = load i64, i64* %352, align 8
  %354 = load i64, i64* @svn_node_dir, align 8
  %355 = icmp eq i64 %353, %354
  br i1 %355, label %356, label %382

356:                                              ; preds = %350
  %357 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %358 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %357, i32 0, i32 8
  %359 = load i32, i32* %358, align 8
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %361, label %382

361:                                              ; preds = %356
  %362 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %363 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load i8*, i8** %8, align 8
  %369 = load i64, i64* %10, align 8
  %370 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %371 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %370, i32 0, i32 10
  %372 = load i32*, i32** %371, align 8
  %373 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %374 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %373, i32 0, i32 9
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %377 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %376, i32 0, i32 8
  %378 = load i32, i32* %377, align 8
  %379 = load i32*, i32** %9, align 8
  %380 = call i32 @insert_incomplete_children(i32 %364, i32 %367, i8* %368, i64 %369, i32* %372, i32 %375, i32 %378, i32 0, i32* %379)
  %381 = call i32 @SVN_ERR(i32 %380)
  br label %382

382:                                              ; preds = %361, %356, %350
  %383 = load i8*, i8** %8, align 8
  %384 = load i8, i8* %383, align 1
  %385 = icmp ne i8 %384, 0
  br i1 %385, label %386, label %441

386:                                              ; preds = %382
  %387 = load i8*, i8** %15, align 8
  %388 = icmp ne i8* %387, null
  br i1 %388, label %389, label %415

389:                                              ; preds = %386
  %390 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %390, i32 0, i32 1
  %392 = load i64, i64* %391, align 8
  %393 = load i64, i64* @svn_wc__db_status_normal, align 8
  %394 = icmp eq i64 %392, %393
  br i1 %394, label %401, label %395

395:                                              ; preds = %389
  %396 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %397 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = load i64, i64* @svn_wc__db_status_incomplete, align 8
  %400 = icmp eq i64 %398, %399
  br i1 %400, label %401, label %415

401:                                              ; preds = %395, %389
  %402 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %403 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %402, i32 0, i32 7
  %404 = load i64, i64* %403, align 8
  %405 = icmp ne i64 %404, 0
  br i1 %405, label %415, label %406

406:                                              ; preds = %401
  %407 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %408 = load i8*, i8** %8, align 8
  %409 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %410 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %409, i32 0, i32 2
  %411 = load i64, i64* %410, align 8
  %412 = load i32*, i32** %9, align 8
  %413 = call i32 @db_extend_parent_delete(%struct.TYPE_12__* %407, i8* %408, i64 %411, i32 0, i32* %412)
  %414 = call i32 @SVN_ERR(i32 %413)
  br label %440

415:                                              ; preds = %401, %395, %386
  %416 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %417 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = load i64, i64* @svn_wc__db_status_not_present, align 8
  %420 = icmp eq i64 %418, %419
  br i1 %420, label %433, label %421

421:                                              ; preds = %415
  %422 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %422, i32 0, i32 1
  %424 = load i64, i64* %423, align 8
  %425 = load i64, i64* @svn_wc__db_status_server_excluded, align 8
  %426 = icmp eq i64 %424, %425
  br i1 %426, label %433, label %427

427:                                              ; preds = %421
  %428 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %429 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %428, i32 0, i32 1
  %430 = load i64, i64* %429, align 8
  %431 = load i64, i64* @svn_wc__db_status_excluded, align 8
  %432 = icmp eq i64 %430, %431
  br i1 %432, label %433, label %439

433:                                              ; preds = %427, %421, %415
  %434 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %435 = load i8*, i8** %8, align 8
  %436 = load i32*, i32** %9, align 8
  %437 = call i32 @db_retract_parent_delete(%struct.TYPE_12__* %434, i8* %435, i32 0, i32* %436)
  %438 = call i32 @SVN_ERR(i32 %437)
  br label %439

439:                                              ; preds = %433, %427
  br label %440

440:                                              ; preds = %439, %406
  br label %441

441:                                              ; preds = %440, %382
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 6
  %444 = load i64, i64* %443, align 8
  %445 = icmp ne i64 %444, 0
  br i1 %445, label %446, label %463

446:                                              ; preds = %441
  %447 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %448 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %447, i32 0, i32 0
  %449 = load i32, i32* %448, align 4
  %450 = load i32, i32* @STMT_DELETE_WORKING_NODE, align 4
  %451 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %449, i32 %450)
  %452 = call i32 @SVN_ERR(i32 %451)
  %453 = load i32*, i32** %11, align 8
  %454 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %455 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %454, i32 0, i32 1
  %456 = load i32, i32* %455, align 4
  %457 = load i8*, i8** %8, align 8
  %458 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %453, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %456, i8* %457)
  %459 = call i32 @SVN_ERR(i32 %458)
  %460 = load i32*, i32** %11, align 8
  %461 = call i32 @svn_sqlite__step_done(i32* %460)
  %462 = call i32 @SVN_ERR(i32 %461)
  br label %463

463:                                              ; preds = %446, %441
  %464 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %464, i32 0, i32 5
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %487

468:                                              ; preds = %463
  %469 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %470 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %469, i32 0, i32 0
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* @STMT_INSERT_DELETE_FROM_BASE, align 4
  %473 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %471, i32 %472)
  %474 = call i32 @SVN_ERR(i32 %473)
  %475 = load i32*, i32** %11, align 8
  %476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 1
  %478 = load i32, i32* %477, align 4
  %479 = load i8*, i8** %8, align 8
  %480 = load i8*, i8** %8, align 8
  %481 = call i32 @relpath_depth(i8* %480)
  %482 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %475, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %478, i8* %479, i32 %481)
  %483 = call i32 @SVN_ERR(i32 %482)
  %484 = load i32*, i32** %11, align 8
  %485 = call i32 @svn_sqlite__step_done(i32* %484)
  %486 = call i32 @SVN_ERR(i32 %485)
  br label %487

487:                                              ; preds = %468, %463
  %488 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %489 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %488, i32 0, i32 0
  %490 = load i32, i32* %489, align 4
  %491 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %492 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %491, i32 0, i32 4
  %493 = load i32, i32* %492, align 8
  %494 = load i32*, i32** %9, align 8
  %495 = call i32 @add_work_items(i32 %490, i32 %493, i32* %494)
  %496 = call i32 @SVN_ERR(i32 %495)
  %497 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %497, i32 0, i32 3
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %510

501:                                              ; preds = %487
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %503 = load i8*, i8** %8, align 8
  %504 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %505 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %504, i32 0, i32 3
  %506 = load i64, i64* %505, align 8
  %507 = load i32*, i32** %9, align 8
  %508 = call i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_12__* %502, i8* %503, i64 %506, i32* %507)
  %509 = call i32 @SVN_ERR(i32 %508)
  br label %510

510:                                              ; preds = %501, %487
  %511 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %511, i32** %5, align 8
  br label %512

512:                                              ; preds = %510, %213
  %513 = load i32*, i32** %5, align 8
  ret i32* %513
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @create_repos_id(i64*, i32, i32, i32, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i64 @get_recorded_size(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32* @svn_token__to_word(i32, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @path_for_error_message(%struct.TYPE_12__*, i8*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_checksum(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_int64(i32*, i32, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @svn_sqlite__bind_properties(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_iprops(i32*, i32, i32, i32*) #1

declare dso_local i32 @svn_sqlite__bind_int(i32*, i32, i32) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

declare dso_local i64 @apr_hash_count(i32*) #1

declare dso_local i32 @svn_prop_diffs(%struct.TYPE_14__**, i32*, i32*, i32*) #1

declare dso_local i32 @set_actual_props(%struct.TYPE_12__*, i8*, i32*, i32*) #1

declare dso_local i32 @insert_incomplete_children(i32, i32, i8*, i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @db_extend_parent_delete(%struct.TYPE_12__*, i8*, i64, i32, i32*) #1

declare dso_local i32 @db_retract_parent_delete(%struct.TYPE_12__*, i8*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @add_work_items(i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_mark_conflict_internal(%struct.TYPE_12__*, i8*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
