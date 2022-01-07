; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_incoming_added_dir_replace.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_merge_incoming_added_dir_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i32 }
%struct.TYPE_25__ = type { %struct.notification_adjust_baton*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 }
%struct.notification_adjust_baton = type { i8*, i8*, %struct.notification_adjust_baton*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__, i32 }
%struct.TYPE_22__ = type { i32 }
%struct.notification_adjust_baton.0 = type opaque
%struct.find_added_rev_baton = type { i8*, i64, i32*, i32, i32*, %struct.TYPE_25__*, i32 }

@FALSE = common dso_local global i32 0, align 4
@svn_io_file_del_on_close = common dso_local global i32 0, align 4
@svn_opt_revision_number = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_notify_add = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@find_added_rev = common dso_local global i32 0, align 4
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [79 x i8] c"Could not determine the revision in which '^/%s' was added to the repository.\0A\00", align 1
@svn_wc_notify_resolved_tree = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.TYPE_26__*, %struct.TYPE_25__*, i64, i32*)* @merge_incoming_added_dir_replace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_incoming_added_dir_replace(i32* %0, %struct.TYPE_26__* %1, %struct.TYPE_25__* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_26__*, align 8
  %8 = alloca %struct.TYPE_25__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.TYPE_24__, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.notification_adjust_baton, align 8
  %28 = alloca %struct.TYPE_23__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i8*, align 8
  %31 = alloca %struct.find_added_rev_baton, align 8
  %32 = alloca %struct.TYPE_23__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %7, align 8
  store %struct.TYPE_25__* %2, %struct.TYPE_25__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32* %4, i32** %10, align 8
  %33 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 1
  %35 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %34, align 8
  %36 = bitcast i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %35 to i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)*
  store i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)* %36, i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)** %25, align 8
  %37 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %37, i32 0, i32 0
  %39 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %38, align 8
  %40 = bitcast %struct.notification_adjust_baton* %39 to i8*
  store i8* %40, i8** %26, align 8
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %42 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_26__* %41)
  store i8* %42, i8** %17, align 8
  %43 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32* @svn_client_conflict_get_incoming_new_repos_location(i8** %15, i32* %16, i32* null, %struct.TYPE_26__* %43, i32* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32* %46)
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %49 = load i32*, i32** %10, align 8
  %50 = load i32*, i32** %10, align 8
  %51 = call i32* @svn_client_conflict_get_repos_info(i8** %14, i32* null, %struct.TYPE_26__* %48, i32* %49, i32* %50)
  %52 = call i32 @SVN_ERR(i32* %51)
  %53 = load i8*, i8** %14, align 8
  %54 = load i8*, i8** %15, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i8* @svn_path_url_add_component2(i8* %53, i8* %54, i32* %55)
  store i8* %56, i8** %12, align 8
  %57 = load i8*, i8** %12, align 8
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32, i32* @FALSE, align 4
  %60 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i32*, i32** %10, align 8
  %63 = call i32* @svn_client__open_ra_session_internal(i32** %11, i8** %13, i8* %57, i32* null, i32* null, i32 %58, i32 %59, %struct.TYPE_25__* %60, i32* %61, i32* %62)
  %64 = call i32 @SVN_ERR(i32* %63)
  %65 = load i8*, i8** %13, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %5
  %68 = load i8*, i8** %13, align 8
  store i8* %68, i8** %12, align 8
  br label %69

69:                                               ; preds = %67, %5
  %70 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %17, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load i32*, i32** %10, align 8
  %76 = call i32* @svn_wc__get_tmpdir(i8** %19, i32 %72, i8* %73, i32* %74, i32* %75)
  %77 = call i32 @SVN_ERR(i32* %76)
  %78 = load i8*, i8** %19, align 8
  %79 = load i32, i32* @svn_io_file_del_on_close, align 4
  %80 = load i32*, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32* @svn_io_open_unique_file3(i32* null, i8** %20, i8* %78, i32 %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32* %82)
  %84 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %84, i32 0, i32 1
  %86 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %85, align 8
  %87 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 3
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %86, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %87, align 8
  %88 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %89 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %88, i32 0, i32 0
  %90 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %89, align 8
  %91 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 2
  store %struct.notification_adjust_baton* %90, %struct.notification_adjust_baton** %91, align 8
  %92 = load i8*, i8** %20, align 8
  %93 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 0
  store i8* %92, i8** %93, align 8
  %94 = load i8*, i8** %17, align 8
  %95 = getelementptr inbounds %struct.notification_adjust_baton, %struct.notification_adjust_baton* %27, i32 0, i32 1
  store i8* %94, i8** %95, align 8
  %96 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %96, i32 0, i32 1
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* @notification_adjust_func, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %97, align 8
  %98 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %99 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %98, i32 0, i32 0
  store %struct.notification_adjust_baton* %27, %struct.notification_adjust_baton** %99, align 8
  %100 = load i32, i32* @svn_opt_revision_number, align 4
  %101 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 1
  store i32 %100, i32* %101, align 4
  %102 = load i32, i32* %16, align 4
  %103 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %23, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 4
  %105 = load i8*, i8** %12, align 8
  %106 = load i8*, i8** %20, align 8
  %107 = load i32, i32* @svn_depth_infinity, align 4
  %108 = load i32, i32* @TRUE, align 4
  %109 = load i32, i32* @FALSE, align 4
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = call i32* @svn_client__checkout_internal(i32* %22, i64* %24, i8* %105, i8* %106, %struct.TYPE_24__* %23, %struct.TYPE_24__* %23, i32 %107, i32 %108, i32 %109, i32* %110, %struct.TYPE_25__* %111, i32* %112)
  store i32* %113, i32** %21, align 8
  %114 = load i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)** %25, align 8
  %115 = bitcast i32 (%struct.notification_adjust_baton.0*, %struct.TYPE_23__*, i32*)* %114 to i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*
  %116 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %116, i32 0, i32 1
  store i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %115, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %117, align 8
  %118 = load i8*, i8** %26, align 8
  %119 = bitcast i8* %118 to %struct.notification_adjust_baton*
  %120 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %121 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %120, i32 0, i32 0
  store %struct.notification_adjust_baton* %119, %struct.notification_adjust_baton** %121, align 8
  %122 = load i32*, i32** %21, align 8
  %123 = call i32 @SVN_ERR(i32* %122)
  %124 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = load i8*, i8** %17, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @svn_dirent_dirname(i8* %127, i32* %128)
  %130 = load i32*, i32** %10, align 8
  %131 = load i32*, i32** %10, align 8
  %132 = call i32* @svn_wc__acquire_write_lock_for_resolve(i8** %18, i32 %126, i32 %129, i32* %130, i32* %131)
  %133 = call i32 @SVN_ERR(i32* %132)
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %135 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = load i8*, i8** %17, align 8
  %138 = load i32, i32* @FALSE, align 4
  %139 = load i32, i32* @FALSE, align 4
  %140 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %141 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %140, i32 0, i32 1
  %142 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %141, align 8
  %143 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %143, i32 0, i32 0
  %145 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %144, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = call i32* @svn_wc_delete4(i32 %136, i8* %137, i32 %138, i32 %139, i32* null, i32* null, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %142, %struct.notification_adjust_baton* %145, i32* %146)
  store i32* %147, i32** %21, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = icmp ne i32* %148, null
  br i1 %149, label %150, label %151

150:                                              ; preds = %69
  br label %309

151:                                              ; preds = %69
  %152 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i8*, i8** %20, align 8
  %156 = load i8*, i8** %17, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = load i32*, i32** %10, align 8
  %159 = call i32* @svn_wc_copy3(i32 %154, i8* %155, i8* %156, i32 %157, i32* null, i32* null, i32* null, i32* null, i32* %158)
  store i32* %159, i32** %21, align 8
  %160 = load i32*, i32** %21, align 8
  %161 = icmp ne i32* %160, null
  br i1 %161, label %162, label %163

162:                                              ; preds = %151
  br label %309

163:                                              ; preds = %151
  %164 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %165 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i8*, i8** %20, align 8
  %168 = load i32, i32* @FALSE, align 4
  %169 = load i32*, i32** %10, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = call i32* @svn_wc__acquire_write_lock(i32* null, i32 %166, i8* %167, i32 %168, i32* %169, i32* %170)
  store i32* %171, i32** %21, align 8
  %172 = load i32*, i32** %21, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %175

174:                                              ; preds = %163
  br label %309

175:                                              ; preds = %163
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = load i8*, i8** %20, align 8
  %180 = load i32, i32* @FALSE, align 4
  %181 = load i32, i32* @FALSE, align 4
  %182 = load i32*, i32** %10, align 8
  %183 = call i32* @svn_wc_remove_from_revision_control2(i32 %178, i8* %179, i32 %180, i32 %181, i32* null, i32* null, i32* %182)
  store i32* %183, i32** %21, align 8
  %184 = load i32*, i32** %21, align 8
  %185 = icmp ne i32* %184, null
  br i1 %185, label %186, label %187

186:                                              ; preds = %175
  br label %309

187:                                              ; preds = %175
  %188 = load i8*, i8** %20, align 8
  %189 = load i8*, i8** %17, align 8
  %190 = load i32, i32* @FALSE, align 4
  %191 = load i32*, i32** %10, align 8
  %192 = call i32* @svn_io_file_rename2(i8* %188, i8* %189, i32 %190, i32* %191)
  store i32* %192, i32** %21, align 8
  %193 = load i32*, i32** %21, align 8
  %194 = icmp ne i32* %193, null
  br i1 %194, label %195, label %196

195:                                              ; preds = %187
  br label %309

196:                                              ; preds = %187
  %197 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %198 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %197, i32 0, i32 1
  %199 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %198, align 8
  %200 = icmp ne i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %199, null
  br i1 %200, label %201, label %218

201:                                              ; preds = %196
  %202 = load i8*, i8** %17, align 8
  %203 = load i32, i32* @svn_wc_notify_add, align 4
  %204 = load i32*, i32** %10, align 8
  %205 = call %struct.TYPE_23__* @svn_wc_create_notify(i8* %202, i32 %203, i32* %204)
  store %struct.TYPE_23__* %205, %struct.TYPE_23__** %28, align 8
  %206 = load i32, i32* @svn_node_dir, align 4
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %208 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %207, i32 0, i32 0
  store i32 %206, i32* %208, align 4
  %209 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %209, i32 0, i32 1
  %211 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %210, align 8
  %212 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %213 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %212, i32 0, i32 0
  %214 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %213, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %28, align 8
  %216 = load i32*, i32** %10, align 8
  %217 = call i32 %211(%struct.notification_adjust_baton* %214, %struct.TYPE_23__* %215, i32* %216)
  br label %218

218:                                              ; preds = %201, %196
  %219 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %220 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load i8*, i8** %17, align 8
  %223 = load i32*, i32** %10, align 8
  %224 = call i32* @svn_wc__del_tree_conflict(i32 %221, i8* %222, i32* %223)
  store i32* %224, i32** %21, align 8
  %225 = load i32*, i32** %21, align 8
  %226 = icmp ne i32* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %218
  br label %309

228:                                              ; preds = %218
  %229 = load i64, i64* %9, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %308

231:                                              ; preds = %228
  %232 = bitcast %struct.find_added_rev_baton* %31 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %232, i8 0, i64 56, i1 false)
  %233 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %234 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load i8*, i8** %17, align 8
  %237 = load i32, i32* @FALSE, align 4
  %238 = load i32*, i32** %10, align 8
  %239 = load i32*, i32** %10, align 8
  %240 = call i32* @svn_wc__node_get_base(i32* null, i32* %29, i8** %30, i32* null, i32* null, i32* null, i32 %235, i8* %236, i32 %237, i32* %238, i32* %239)
  store i32* %240, i32** %21, align 8
  %241 = load i32*, i32** %21, align 8
  %242 = icmp ne i32* %241, null
  br i1 %242, label %243, label %244

243:                                              ; preds = %231
  br label %309

244:                                              ; preds = %231
  %245 = load i8*, i8** %14, align 8
  %246 = load i8*, i8** %30, align 8
  %247 = load i32*, i32** %10, align 8
  %248 = call i8* @svn_path_url_add_component2(i8* %245, i8* %246, i32* %247)
  store i8* %248, i8** %12, align 8
  %249 = load i32*, i32** %11, align 8
  %250 = load i8*, i8** %12, align 8
  %251 = load i32*, i32** %10, align 8
  %252 = call i32* @svn_ra_reparent(i32* %249, i8* %250, i32* %251)
  store i32* %252, i32** %21, align 8
  %253 = load i32*, i32** %21, align 8
  %254 = icmp ne i32* %253, null
  br i1 %254, label %255, label %256

255:                                              ; preds = %244
  br label %309

256:                                              ; preds = %244
  %257 = load i8*, i8** %17, align 8
  %258 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 0
  store i8* %257, i8** %258, align 8
  %259 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %260 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 5
  store %struct.TYPE_25__* %259, %struct.TYPE_25__** %260, align 8
  %261 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %262 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 1
  store i64 %261, i64* %262, align 8
  %263 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 4
  store i32* null, i32** %263, align 8
  %264 = load i8*, i8** %30, align 8
  %265 = load i32*, i32** %10, align 8
  %266 = call i32 @svn_relpath_dirname(i8* %264, i32* %265)
  %267 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 3
  store i32 %266, i32* %267, align 8
  %268 = load i32*, i32** %10, align 8
  %269 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 2
  store i32* %268, i32** %269, align 8
  %270 = load i32*, i32** %11, align 8
  %271 = load i32, i32* %29, align 4
  %272 = load i32, i32* %29, align 4
  %273 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %274 = load i32, i32* @find_added_rev, align 4
  %275 = load i32*, i32** %10, align 8
  %276 = call i32* @svn_ra_get_location_segments(i32* %270, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %271, i32 %272, i64 %273, i32 %274, %struct.find_added_rev_baton* %31, i32* %275)
  store i32* %276, i32** %21, align 8
  %277 = load i32*, i32** %21, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %256
  br label %309

280:                                              ; preds = %256
  %281 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 1
  %282 = load i64, i64* %281, align 8
  %283 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %284 = icmp eq i64 %282, %283
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load i32, i32* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 4
  %287 = call i32 @_(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0))
  %288 = load i8*, i8** %30, align 8
  %289 = call i32* @svn_error_createf(i32 %286, i32* null, i32 %287, i8* %288)
  store i32* %289, i32** %21, align 8
  br label %309

290:                                              ; preds = %280
  %291 = load i8*, i8** %30, align 8
  %292 = load i8*, i8** %12, align 8
  %293 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %31, i32 0, i32 1
  %294 = load i64, i64* %293, align 8
  %295 = call i32 @rev_below(i64 %294)
  %296 = load i8*, i8** %12, align 8
  %297 = load i32, i32* %29, align 4
  %298 = load i8*, i8** %17, align 8
  %299 = load i32, i32* @FALSE, align 4
  %300 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %301 = load i32*, i32** %10, align 8
  %302 = load i32*, i32** %10, align 8
  %303 = call i32* @merge_newly_added_dir(i8* %291, i8* %292, i32 %295, i8* %296, i32 %297, i8* %298, i32 %299, %struct.TYPE_25__* %300, i32* %301, i32* %302)
  store i32* %303, i32** %21, align 8
  %304 = load i32*, i32** %21, align 8
  %305 = icmp ne i32* %304, null
  br i1 %305, label %306, label %307

306:                                              ; preds = %290
  br label %309

307:                                              ; preds = %290
  br label %308

308:                                              ; preds = %307, %228
  br label %309

309:                                              ; preds = %308, %306, %285, %279, %255, %243, %227, %195, %186, %174, %162, %150
  %310 = load i32*, i32** %21, align 8
  %311 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load i8*, i8** %18, align 8
  %315 = load i32*, i32** %10, align 8
  %316 = call i32 @svn_wc__release_write_lock(i32 %313, i8* %314, i32* %315)
  %317 = call i32* @svn_error_compose_create(i32* %310, i32 %316)
  store i32* %317, i32** %21, align 8
  %318 = load i8*, i8** %17, align 8
  %319 = load i32*, i32** %10, align 8
  %320 = call i32 @svn_io_sleep_for_timestamps(i8* %318, i32* %319)
  %321 = load i32*, i32** %21, align 8
  %322 = call i32 @SVN_ERR(i32* %321)
  %323 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %324 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %323, i32 0, i32 1
  %325 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %324, align 8
  %326 = icmp ne i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)* %325, null
  br i1 %326, label %327, label %341

327:                                              ; preds = %309
  %328 = load i8*, i8** %17, align 8
  %329 = load i32, i32* @svn_wc_notify_resolved_tree, align 4
  %330 = load i32*, i32** %10, align 8
  %331 = call %struct.TYPE_23__* @svn_wc_create_notify(i8* %328, i32 %329, i32* %330)
  store %struct.TYPE_23__* %331, %struct.TYPE_23__** %32, align 8
  %332 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %332, i32 0, i32 1
  %334 = load i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)** %333, align 8
  %335 = load %struct.TYPE_25__*, %struct.TYPE_25__** %8, align 8
  %336 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %335, i32 0, i32 0
  %337 = load %struct.notification_adjust_baton*, %struct.notification_adjust_baton** %336, align 8
  %338 = load %struct.TYPE_23__*, %struct.TYPE_23__** %32, align 8
  %339 = load i32*, i32** %10, align 8
  %340 = call i32 %334(%struct.notification_adjust_baton* %337, %struct.TYPE_23__* %338, i32* %339)
  br label %341

341:                                              ; preds = %327, %309
  %342 = load i32*, i32** %6, align 8
  %343 = call i32 @svn_client_conflict_option_get_id(i32* %342)
  %344 = load %struct.TYPE_26__*, %struct.TYPE_26__** %7, align 8
  %345 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %344, i32 0, i32 0
  store i32 %343, i32* %345, align 4
  %346 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %346
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_26__*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_client_conflict_get_incoming_new_repos_location(i8**, i32*, i32*, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_26__*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32* @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32* @svn_wc__get_tmpdir(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @notification_adjust_func(%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*) #1

declare dso_local i32* @svn_client__checkout_internal(i32*, i64*, i8*, i8*, %struct.TYPE_24__*, %struct.TYPE_24__*, i32, i32, i32, i32*, %struct.TYPE_25__*, i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock_for_resolve(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32* @svn_wc_delete4(i32, i8*, i32, i32, i32*, i32*, i32 (%struct.notification_adjust_baton*, %struct.TYPE_23__*, i32*)*, %struct.notification_adjust_baton*, i32*) #1

declare dso_local i32* @svn_wc_copy3(i32, i8*, i8*, i32, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc__acquire_write_lock(i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_wc_remove_from_revision_control2(i32, i8*, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_io_file_rename2(i8*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_23__* @svn_wc_create_notify(i8*, i32, i32*) #1

declare dso_local i32* @svn_wc__del_tree_conflict(i32, i8*, i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @svn_wc__node_get_base(i32*, i32*, i8**, i32*, i32*, i32*, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32* @svn_ra_get_location_segments(i32*, i8*, i32, i32, i64, i32, %struct.find_added_rev_baton*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32* @merge_newly_added_dir(i8*, i8*, i32, i8*, i32, i8*, i32, %struct.TYPE_25__*, i32*, i32*) #1

declare dso_local i32 @rev_below(i64) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_wc__release_write_lock(i32, i8*, i32*) #1

declare dso_local i32 @svn_io_sleep_for_timestamps(i8*, i32*) #1

declare dso_local i32 @svn_client_conflict_option_get_id(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
