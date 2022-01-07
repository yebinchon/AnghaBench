; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_replace_and_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_resolve_merge_incoming_added_file_replace_and_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 (i32, %struct.TYPE_15__*, i32*)*, i32, i32, i32 }
%struct.TYPE_15__ = type { i8*, i32, i32 }

@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@svn_wc_notify_add = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i8* null, align 8
@svn_wc_notify_update_update = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i64 0, align 8
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, i32*)* @resolve_merge_incoming_added_file_replace_and_merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @resolve_merge_incoming_added_file_replace_and_merge(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca %struct.TYPE_15__*, align 8
  %32 = alloca %struct.TYPE_15__*, align 8
  %33 = alloca %struct.TYPE_15__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store i32* %3, i32** %8, align 8
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %35 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_17__* %34)
  store i8* %35, i8** %18, align 8
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %37 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i8*, i8** %18, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = call i32* @svn_wc__get_tmpdir(i8** %20, i32 %38, i8* %39, i32* %40, i32* %41)
  %43 = call i32 @SVN_ERR(i32* %42)
  %44 = load i8*, i8** %20, align 8
  %45 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = call i32* @svn_stream_open_unique(i32** %21, i8** %22, i8* %44, i32 %45, i32* %46, i32* %47)
  %49 = call i32 @SVN_ERR(i32* %48)
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i8*, i8** %18, align 8
  %54 = load i8*, i8** %18, align 8
  %55 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = load i32*, i32** %8, align 8
  %58 = call i32* @svn_wc__translated_stream(i32** %23, i32 %52, i8* %53, i8* %54, i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32* %58)
  %60 = load i32*, i32** %23, align 8
  %61 = load i32*, i32** %21, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %8, align 8
  %69 = call i32* @svn_stream_copy3(i32* %60, i32* %61, i32 %64, i32 %67, i32* %68)
  %70 = call i32 @SVN_ERR(i32* %69)
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i32* @svn_wc_prop_list2(i32** %24, i32 %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32* %77)
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call i32* @svn_client_conflict_get_incoming_new_repos_location(i8** %13, i32* %14, i32* null, %struct.TYPE_17__* %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load i32*, i32** %8, align 8
  %87 = call i32* @svn_client_conflict_get_repos_info(i8** %12, i32* null, %struct.TYPE_17__* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32* %87)
  %89 = load i8*, i8** %12, align 8
  %90 = load i8*, i8** %13, align 8
  %91 = load i32*, i32** %8, align 8
  %92 = call i8* @svn_path_url_add_component2(i8* %89, i8* %90, i32* %91)
  store i8* %92, i8** %10, align 8
  %93 = load i8*, i8** %10, align 8
  %94 = load i32, i32* @FALSE, align 4
  %95 = load i32, i32* @FALSE, align 4
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = call i32* @svn_client__open_ra_session_internal(i32** %9, i8** %11, i8* %93, i32* null, i32* null, i32 %94, i32 %95, %struct.TYPE_16__* %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32* %99)
  %101 = load i8*, i8** %11, align 8
  %102 = icmp ne i8* %101, null
  br i1 %102, label %103, label %105

103:                                              ; preds = %4
  %104 = load i8*, i8** %11, align 8
  store i8* %104, i8** %10, align 8
  br label %105

105:                                              ; preds = %103, %4
  %106 = load i8*, i8** %20, align 8
  %107 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %8, align 8
  %110 = call i32* @svn_io_open_unique_file3(i32** %15, i8** null, i8* %106, i32 %107, i32* %108, i32* %109)
  %111 = call i32 @SVN_ERR(i32* %110)
  %112 = load i32*, i32** %15, align 8
  %113 = load i32, i32* @TRUE, align 4
  %114 = load i32*, i32** %8, align 8
  %115 = call i32* @svn_stream_from_aprfile2(i32* %112, i32 %113, i32* %114)
  store i32* %115, i32** %16, align 8
  %116 = load i32*, i32** %9, align 8
  %117 = load i32, i32* %14, align 4
  %118 = load i32*, i32** %16, align 8
  %119 = load i32*, i32** %8, align 8
  %120 = call i32* @svn_ra_get_file(i32* %116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %117, i32* %118, i32* null, i32** %17, i32* %119)
  %121 = call i32 @SVN_ERR(i32* %120)
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %8, align 8
  %124 = call i32* @svn_io_file_flush(i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32* %124)
  %126 = load i32*, i32** %16, align 8
  %127 = call i32* @svn_stream_reset(i32* %126)
  %128 = call i32 @SVN_ERR(i32* %127)
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = load i32*, i32** %8, align 8
  %134 = load i32*, i32** %8, align 8
  %135 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %19, i32 %131, i8* %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32* %135)
  %137 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load i8*, i8** %18, align 8
  %141 = load i32, i32* @FALSE, align 4
  %142 = load i32, i32* @FALSE, align 4
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %144, align 8
  %146 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %147 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32*, i32** %8, align 8
  %150 = call i32* @svn_wc_delete4(i32 %139, i8* %140, i32 %141, i32 %142, i32* null, i32* null, i32 (i32, %struct.TYPE_15__*, i32*)* %145, i32 %148, i32* %149)
  store i32* %150, i32** %25, align 8
  %151 = load i32*, i32** %25, align 8
  %152 = icmp ne i32* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %105
  br label %271

154:                                              ; preds = %105
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = load i8*, i8** %18, align 8
  %159 = load i32*, i32** %16, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = load i32*, i32** %8, align 8
  %164 = call i32* @svn_wc_add_repos_file4(i32 %157, i8* %158, i32* %159, i32* null, i32* %160, i32* null, i8* %161, i32 %162, i32* null, i32* null, i32* %163)
  store i32* %164, i32** %25, align 8
  %165 = load i32*, i32** %25, align 8
  %166 = icmp ne i32* %165, null
  br i1 %166, label %167, label %168

167:                                              ; preds = %154
  br label %271

168:                                              ; preds = %154
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %169, i32 0, i32 1
  %171 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %170, align 8
  %172 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %171, null
  br i1 %172, label %173, label %190

173:                                              ; preds = %168
  %174 = load i8*, i8** %18, align 8
  %175 = load i32, i32* @svn_wc_notify_add, align 4
  %176 = load i32*, i32** %8, align 8
  %177 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %174, i32 %175, i32* %176)
  store %struct.TYPE_15__* %177, %struct.TYPE_15__** %31, align 8
  %178 = load i8*, i8** @svn_node_file, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 0
  store i8* %178, i8** %180, align 8
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 1
  %183 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %182, align 8
  %184 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %31, align 8
  %188 = load i32*, i32** %8, align 8
  %189 = call i32 %183(i32 %186, %struct.TYPE_15__* %187, i32* %188)
  br label %190

190:                                              ; preds = %173, %168
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 8
  %194 = load i8*, i8** %18, align 8
  %195 = load i32*, i32** %8, align 8
  %196 = call i32* @svn_wc__del_tree_conflict(i32 %193, i8* %194, i32* %195)
  store i32* %196, i32** %25, align 8
  %197 = load i32*, i32** %25, align 8
  %198 = icmp ne i32* %197, null
  br i1 %198, label %199, label %200

199:                                              ; preds = %190
  br label %271

200:                                              ; preds = %190
  %201 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  %202 = load i32*, i32** %8, align 8
  %203 = load i32*, i32** %8, align 8
  %204 = call i32* @svn_io_open_unique_file3(i32** %28, i8** %29, i8* null, i32 %201, i32* %202, i32* %203)
  store i32* %204, i32** %25, align 8
  %205 = load i32*, i32** %25, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %208

207:                                              ; preds = %200
  br label %271

208:                                              ; preds = %200
  %209 = load i32*, i32** %17, align 8
  %210 = load i32*, i32** %8, align 8
  %211 = call i32 @filter_props(i32* %209, i32* %210)
  %212 = load i32*, i32** %17, align 8
  %213 = load i32*, i32** %24, align 8
  %214 = load i32*, i32** %8, align 8
  %215 = call i32* @svn_prop_diffs(i32** %30, i32* %212, i32* %213, i32* %214)
  store i32* %215, i32** %25, align 8
  %216 = load i32*, i32** %25, align 8
  %217 = icmp ne i32* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %208
  br label %271

219:                                              ; preds = %208
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 2
  %222 = load i32, i32* %221, align 8
  %223 = load i8*, i8** %29, align 8
  %224 = load i8*, i8** %22, align 8
  %225 = load i8*, i8** %18, align 8
  %226 = load i32, i32* @FALSE, align 4
  %227 = load i32*, i32** %30, align 8
  %228 = load i32*, i32** %8, align 8
  %229 = call i32* @svn_wc_merge5(i64* %26, i32* %27, i32 %222, i8* %223, i8* %224, i8* %225, i32* null, i32* null, i32* null, i32* null, i32* null, i32 %226, i32* null, i32* null, i32* null, i32* %227, i32* null, i32* null, i32* null, i32* null, i32* %228)
  store i32* %229, i32** %25, align 8
  %230 = load i32*, i32** %25, align 8
  %231 = icmp ne i32* %230, null
  br i1 %231, label %232, label %233

232:                                              ; preds = %219
  br label %271

233:                                              ; preds = %219
  %234 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %234, i32 0, i32 1
  %236 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %235, align 8
  %237 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %236, null
  br i1 %237, label %238, label %270

238:                                              ; preds = %233
  %239 = load i8*, i8** %18, align 8
  %240 = load i32, i32* @svn_wc_notify_update_update, align 4
  %241 = load i32*, i32** %8, align 8
  %242 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %239, i32 %240, i32* %241)
  store %struct.TYPE_15__* %242, %struct.TYPE_15__** %32, align 8
  %243 = load i64, i64* %26, align 8
  %244 = load i64, i64* @svn_wc_merge_conflict, align 8
  %245 = icmp eq i64 %243, %244
  br i1 %245, label %246, label %250

246:                                              ; preds = %238
  %247 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 2
  store i32 %247, i32* %249, align 4
  br label %254

250:                                              ; preds = %238
  %251 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %250, %246
  %255 = load i32, i32* %27, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  store i32 %255, i32* %257, align 8
  %258 = load i8*, i8** @svn_node_file, align 8
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 0
  store i8* %258, i8** %260, align 8
  %261 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %262 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %261, i32 0, i32 1
  %263 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %262, align 8
  %264 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %265 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %268 = load i32*, i32** %8, align 8
  %269 = call i32 %263(i32 %266, %struct.TYPE_15__* %267, i32* %268)
  br label %270

270:                                              ; preds = %254, %233
  br label %271

271:                                              ; preds = %270, %232, %218, %207, %199, %167, %153
  %272 = load i32*, i32** %25, align 8
  %273 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i8*, i8** %19, align 8
  %277 = load i32*, i32** %8, align 8
  %278 = call i32 @svn_wc__release_write_lock(i32 %275, i8* %276, i32* %277)
  %279 = call i32* @svn_error_compose_create(i32* %272, i32 %278)
  store i32* %279, i32** %25, align 8
  %280 = load i8*, i8** %18, align 8
  %281 = load i32*, i32** %8, align 8
  %282 = call i32 @svn_io_sleep_for_timestamps(i8* %280, i32* %281)
  %283 = load i32*, i32** %25, align 8
  %284 = call i32 @SVN_ERR(i32* %283)
  %285 = load i32*, i32** %16, align 8
  %286 = call i32* @svn_stream_close(i32* %285)
  %287 = call i32 @SVN_ERR(i32* %286)
  %288 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %289 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %288, i32 0, i32 1
  %290 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %289, align 8
  %291 = icmp ne i32 (i32, %struct.TYPE_15__*, i32*)* %290, null
  br i1 %291, label %292, label %306

292:                                              ; preds = %271
  %293 = load i8*, i8** %18, align 8
  %294 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %295 = load i32*, i32** %8, align 8
  %296 = call %struct.TYPE_15__* @svn_wc_create_notify(i8* %293, i32 %294, i32* %295)
  store %struct.TYPE_15__* %296, %struct.TYPE_15__** %33, align 8
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load i32 (i32, %struct.TYPE_15__*, i32*)*, i32 (i32, %struct.TYPE_15__*, i32*)** %298, align 8
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = load i32, i32* %301, align 8
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** %33, align 8
  %304 = load i32*, i32** %8, align 8
  %305 = call i32 %299(i32 %302, %struct.TYPE_15__* %303, i32* %304)
  br label %306

306:                                              ; preds = %292, %271
  %307 = load i32*, i32** %5, align 8
  %308 = call i32 @svn_client_conflict_option_get_id(i32* %307)
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 0
  store i32 %308, i32* %310, align 4
  %311 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %311
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_17__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc__translated_stream(i32**, i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_copy3(i32*, i32*, i32, i32, i32*) #1

declare dso_local i32* @svn_wc_prop_list2(i32**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_17__*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_16__*, i32*, i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_stream_from_aprfile2(i32*, i32, i32*) #1

declare dso_local i32* @svn_ra_get_file(i32*, i8*, i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32* @svn_io_file_flush(i32*, i32*) #1

declare dso_local i32* @svn_stream_reset(i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc_delete4(i32, i8*, i32, i32, i32*, i32*, i32 (i32, %struct.TYPE_15__*, i32*)*, i32, i32*) #1

declare dso_local i32* @svn_wc_add_repos_file4(i32, i8*, i32*, i32*, i32*, i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

declare dso_local i32 @filter_props(i32*, i32*) #1

declare dso_local i32* @svn_prop_diffs(i32**, i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc_merge5(i64*, i32*, i32, i8*, i8*, i8*, i32*, i32*, i32*, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32* @svn_stream_close(i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
