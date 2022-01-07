; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_resolve_target_path.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_patch.c_resolve_target_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64 }
%struct.TYPE_14__ = type { i8*, i8*, i8*, i64, i64, i8*, i8*, i8*, i8* }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }

@TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global %struct.TYPE_13__* null, align 8
@svn_node_none = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i64 0, align 8
@svn_wc_status_ignored = common dso_local global i64 0, align 8
@svn_wc_status_unversioned = common dso_local global i64 0, align 8
@svn_wc_status_missing = common dso_local global i64 0, align 8
@svn_wc_status_obstructed = common dso_local global i64 0, align 8
@svn_wc_status_deleted = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@FALSE = common dso_local global i8* null, align 8
@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_status_none = common dso_local global i64 0, align 8
@SVN_PROP_SPECIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_13__* (%struct.TYPE_14__*, i8*, i8*, i32, i64, i64, i32*, i32*, i32*, i32*)* @resolve_target_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_13__* @resolve_target_path(%struct.TYPE_14__* %0, i8* %1, i8* %2, i32 %3, i64 %4, i64 %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_13__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %12, align 8
  store i8* %1, i8** %13, align 8
  store i8* %2, i8** %14, align 8
  store i32 %3, i32* %15, align 4
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %28 = load i8*, i8** %13, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = call i8* @svn_dirent_internal_style(i8* %28, i32* %29)
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load i64, i64* %16, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %10
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 0
  %40 = load i8, i8* %39, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %52

43:                                               ; preds = %35
  %44 = load i8*, i8** @TRUE, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 7
  store i8* %44, i8** %46, align 8
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 1
  store i8* null, i8** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 2
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %50, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %51, %struct.TYPE_13__** %11, align 8
  br label %361

52:                                               ; preds = %35, %10
  %53 = load i32, i32* %15, align 4
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %52
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = load i32*, i32** %20, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = call i32 @strip_path(i8** %22, i8* %58, i32 %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  br label %68

64:                                               ; preds = %52
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  store i8* %67, i8** %22, align 8
  br label %68

68:                                               ; preds = %64, %55
  %69 = load i8*, i8** %22, align 8
  %70 = call i64 @svn_dirent_is_absolute(i8* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %94

72:                                               ; preds = %68
  %73 = load i8*, i8** %14, align 8
  %74 = load i8*, i8** %22, align 8
  %75 = load i32*, i32** %20, align 8
  %76 = call i8* @svn_dirent_is_child(i8* %73, i8* %74, i32* %75)
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  store i8* %76, i8** %78, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 2
  %81 = load i8*, i8** %80, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %93, label %83

83:                                               ; preds = %72
  %84 = load i8*, i8** @TRUE, align 8
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %86 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %85, i32 0, i32 7
  store i8* %84, i8** %86, align 8
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i8* null, i8** %88, align 8
  %89 = load i8*, i8** %22, align 8
  %90 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %90, i32 0, i32 2
  store i8* %89, i8** %91, align 8
  %92 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %92, %struct.TYPE_13__** %11, align 8
  br label %361

93:                                               ; preds = %72
  br label %98

94:                                               ; preds = %68
  %95 = load i8*, i8** %22, align 8
  %96 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %96, i32 0, i32 2
  store i8* %95, i8** %97, align 8
  br label %98

98:                                               ; preds = %94, %93
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %102, i32 0, i32 2
  %104 = load i8*, i8** %103, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = call i32 @svn_dirent_is_under_root(i64* %25, i8** %100, i8* %101, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i64, i64* %25, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %117, label %110

110:                                              ; preds = %98
  %111 = load i8*, i8** @TRUE, align 8
  %112 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %113 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %112, i32 0, i32 7
  store i8* %111, i8** %113, align 8
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  store i8* null, i8** %115, align 8
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %116, %struct.TYPE_13__** %11, align 8
  br label %361

117:                                              ; preds = %98
  %118 = load i32*, i32** %19, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 1
  %121 = load i8*, i8** %120, align 8
  %122 = load i32*, i32** %21, align 8
  %123 = call i64 @target_is_deleted(i32* %118, i8* %121, i32* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %117
  %126 = load i8*, i8** @TRUE, align 8
  %127 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %128 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %127, i32 0, i32 6
  store i8* %126, i8** %128, align 8
  %129 = load i64, i64* @svn_node_none, align 8
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 3
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %132, %struct.TYPE_13__** %11, align 8
  br label %361

133:                                              ; preds = %117
  %134 = load i32*, i32** %18, align 8
  %135 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %136 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %135, i32 0, i32 1
  %137 = load i8*, i8** %136, align 8
  %138 = load i32*, i32** %20, align 8
  %139 = load i32*, i32** %21, align 8
  %140 = call %struct.TYPE_13__* @svn_wc_status3(%struct.TYPE_12__** %23, i32* %134, i8* %137, i32* %138, i32* %139)
  store %struct.TYPE_13__* %140, %struct.TYPE_13__** %24, align 8
  %141 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %142 = icmp ne %struct.TYPE_13__* %141, null
  br i1 %142, label %143, label %161

143:                                              ; preds = %133
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @SVN_ERR_WC_PATH_NOT_FOUND, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %152

149:                                              ; preds = %143
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %151 = call %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__* %150)
  store %struct.TYPE_13__* %151, %struct.TYPE_13__** %11, align 8
  br label %361

152:                                              ; preds = %143
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %154 = call i32 @svn_error_clear(%struct.TYPE_13__* %153)
  %155 = load i8*, i8** @TRUE, align 8
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 6
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* @svn_node_none, align 8
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %160 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i32 0, i32 3
  store i64 %158, i64* %160, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %23, align 8
  br label %210

161:                                              ; preds = %133
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @svn_wc_status_ignored, align 8
  %166 = icmp eq i64 %164, %165
  br i1 %166, label %190, label %167

167:                                              ; preds = %161
  %168 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* @svn_wc_status_unversioned, align 8
  %172 = icmp eq i64 %170, %171
  br i1 %172, label %190, label %173

173:                                              ; preds = %167
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i64, i64* @svn_wc_status_missing, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %190, label %179

179:                                              ; preds = %173
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @svn_wc_status_obstructed, align 8
  %184 = icmp eq i64 %182, %183
  br i1 %184, label %190, label %185

185:                                              ; preds = %179
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %198

190:                                              ; preds = %185, %179, %173, %167, %161
  %191 = load i8*, i8** @TRUE, align 8
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 7
  store i8* %191, i8** %193, align 8
  %194 = load i8*, i8** @TRUE, align 8
  %195 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %196 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %195, i32 0, i32 8
  store i8* %194, i8** %196, align 8
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %197, %struct.TYPE_13__** %11, align 8
  br label %361

198:                                              ; preds = %185
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @svn_wc_status_deleted, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %208

204:                                              ; preds = %198
  %205 = load i8*, i8** @TRUE, align 8
  %206 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %207 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %206, i32 0, i32 6
  store i8* %205, i8** %207, align 8
  br label %208

208:                                              ; preds = %204, %198
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209, %152
  %211 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %212 = icmp ne %struct.TYPE_12__* %211, null
  br i1 %212, label %213, label %225

213:                                              ; preds = %210
  %214 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %215 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @svn_node_unknown, align 8
  %218 = icmp ne i64 %216, %217
  br i1 %218, label %219, label %225

219:                                              ; preds = %213
  %220 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 3
  store i64 %222, i64* %224, align 8
  br label %229

225:                                              ; preds = %213, %210
  %226 = load i64, i64* @svn_node_none, align 8
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %228 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %227, i32 0, i32 3
  store i64 %226, i64* %228, align 8
  br label %229

229:                                              ; preds = %225, %219
  %230 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %230, i32 0, i32 1
  %232 = load i8*, i8** %231, align 8
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %234 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 5
  %237 = load i32*, i32** %21, align 8
  %238 = call i32 @svn_io_check_special_path(i8* %232, i64* %234, i8** %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 6
  %242 = load i8*, i8** %241, align 8
  %243 = icmp ne i8* %242, null
  br i1 %243, label %244, label %320

244:                                              ; preds = %229
  store i8* null, i8** %26, align 8
  %245 = load i64, i64* %17, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %264

247:                                              ; preds = %244
  %248 = load i32*, i32** %19, align 8
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 1
  %251 = load i8*, i8** %250, align 8
  %252 = load i32*, i32** %21, align 8
  %253 = call i32 @target_is_added(i32* %248, i8* %251, i32* %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %264, label %255

255:                                              ; preds = %247
  %256 = load i32*, i32** %18, align 8
  %257 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %258 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %257, i32 0, i32 1
  %259 = load i8*, i8** %258, align 8
  %260 = load i32*, i32** %20, align 8
  %261 = load i32*, i32** %21, align 8
  %262 = call i32 @svn_wc__node_was_moved_away(i8** %26, i32* null, i32* %256, i8* %259, i32* %260, i32* %261)
  %263 = call i32 @SVN_ERR(i32 %262)
  br label %264

264:                                              ; preds = %255, %247, %244
  %265 = load i8*, i8** %26, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %307

267:                                              ; preds = %264
  %268 = load i8*, i8** %26, align 8
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load i8*, i8** %14, align 8
  %272 = load i8*, i8** %26, align 8
  %273 = call i8* @svn_dirent_skip_ancestor(i8* %271, i8* %272)
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  store i8* %273, i8** %275, align 8
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 2
  %278 = load i8*, i8** %277, align 8
  %279 = icmp ne i8* %278, null
  br i1 %279, label %280, label %288

280:                                              ; preds = %267
  %281 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 2
  %283 = load i8*, i8** %282, align 8
  %284 = getelementptr inbounds i8, i8* %283, i64 0
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %280, %267
  %289 = load i8*, i8** @TRUE, align 8
  %290 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %291 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %290, i32 0, i32 7
  store i8* %289, i8** %291, align 8
  %292 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %292, %struct.TYPE_13__** %11, align 8
  br label %361

293:                                              ; preds = %280
  %294 = load i8*, i8** @FALSE, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 6
  store i8* %294, i8** %296, align 8
  %297 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %301 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %300, i32 0, i32 4
  %302 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 5
  %304 = load i32*, i32** %21, align 8
  %305 = call i32 @svn_io_check_special_path(i8* %299, i64* %301, i8** %303, i32* %304)
  %306 = call i32 @SVN_ERR(i32 %305)
  br label %319

307:                                              ; preds = %264
  %308 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 4
  %310 = load i64, i64* %309, align 8
  %311 = load i64, i64* @svn_node_none, align 8
  %312 = icmp ne i64 %310, %311
  br i1 %312, label %313, label %318

313:                                              ; preds = %307
  %314 = load i8*, i8** @TRUE, align 8
  %315 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %316 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %315, i32 0, i32 7
  store i8* %314, i8** %316, align 8
  %317 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %317, %struct.TYPE_13__** %11, align 8
  br label %361

318:                                              ; preds = %307
  br label %319

319:                                              ; preds = %318, %293
  br label %320

320:                                              ; preds = %319, %229
  %321 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %322 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %321, i32 0, i32 4
  %323 = load i64, i64* %322, align 8
  %324 = load i64, i64* @svn_node_file, align 8
  %325 = icmp eq i64 %323, %324
  br i1 %325, label %326, label %359

326:                                              ; preds = %320
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %328 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %327, i32 0, i32 5
  %329 = load i8*, i8** %328, align 8
  %330 = icmp ne i8* %329, null
  br i1 %330, label %359, label %331

331:                                              ; preds = %326
  %332 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %332, i32 0, i32 6
  %334 = load i8*, i8** %333, align 8
  %335 = icmp ne i8* %334, null
  br i1 %335, label %359, label %336

336:                                              ; preds = %331
  %337 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %338 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %337, i32 0, i32 2
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* @svn_wc_status_none, align 8
  %341 = icmp ne i64 %339, %340
  br i1 %341, label %342, label %359

342:                                              ; preds = %336
  %343 = load i32*, i32** %18, align 8
  %344 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %345 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = load i32, i32* @SVN_PROP_SPECIAL, align 4
  %348 = load i32*, i32** %21, align 8
  %349 = load i32*, i32** %21, align 8
  %350 = call i32 @svn_wc_prop_get2(i32** %27, i32* %343, i8* %346, i32 %347, i32* %348, i32* %349)
  %351 = call i32 @SVN_ERR(i32 %350)
  %352 = load i32*, i32** %27, align 8
  %353 = icmp ne i32* %352, null
  br i1 %353, label %354, label %358

354:                                              ; preds = %342
  %355 = load i8*, i8** @TRUE, align 8
  %356 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %357 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %356, i32 0, i32 5
  store i8* %355, i8** %357, align 8
  br label %358

358:                                              ; preds = %354, %342
  br label %359

359:                                              ; preds = %358, %336, %331, %326, %320
  %360 = load %struct.TYPE_13__*, %struct.TYPE_13__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_13__* %360, %struct.TYPE_13__** %11, align 8
  br label %361

361:                                              ; preds = %359, %313, %288, %190, %149, %125, %110, %83, %43
  %362 = load %struct.TYPE_13__*, %struct.TYPE_13__** %11, align 8
  ret %struct.TYPE_13__* %362
}

declare dso_local i8* @svn_dirent_internal_style(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @strip_path(i8**, i8*, i32, i32*, i32*) #1

declare dso_local i64 @svn_dirent_is_absolute(i8*) #1

declare dso_local i8* @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_is_under_root(i64*, i8**, i8*, i8*, i32*) #1

declare dso_local i64 @target_is_deleted(i32*, i8*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_wc_status3(%struct.TYPE_12__**, i32*, i8*, i32*, i32*) #1

declare dso_local %struct.TYPE_13__* @svn_error_trace(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i64*, i8**, i32*) #1

declare dso_local i32 @target_is_added(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__node_was_moved_away(i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_dirent_skip_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_wc_prop_get2(i32**, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
