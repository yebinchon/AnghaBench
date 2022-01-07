; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_incoming_add.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_conflicts.c_conflict_tree_get_details_incoming_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.conflict_tree_incoming_add_details*, i32 }
%struct.conflict_tree_incoming_add_details = type { i64, i32*, i32*, i32*, i64, i8* }
%struct.TYPE_11__ = type { i8* }
%struct.find_added_rev_baton = type { i64, i8*, i32*, i32*, i32*, i8*, i32 }

@svn_wc_operation_update = common dso_local global i64 0, align 8
@svn_wc_operation_switch = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_INVALID_REVNUM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@find_added_rev = common dso_local global i32 0, align 4
@SVN_PROP_REVISION_AUTHOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"unknown author\00", align 1
@svn_wc_operation_merge = common dso_local global i64 0, align 8
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_12__*, i32*, i32*)* @conflict_tree_get_details_incoming_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @conflict_tree_get_details_incoming_add(%struct.TYPE_12__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.conflict_tree_incoming_add_details*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.TYPE_11__*, align 8
  %18 = alloca %struct.find_added_rev_baton, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca %struct.TYPE_11__*, align 8
  %25 = alloca %struct.find_added_rev_baton, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %32 = load i32*, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i32 @svn_client_conflict_get_incoming_old_repos_location(i8** %8, i64* %11, i32* null, %struct.TYPE_12__* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @svn_client_conflict_get_incoming_new_repos_location(i8** %9, i64* %12, i32* null, %struct.TYPE_12__* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32*, i32** %7, align 8
  %44 = call i32 @svn_client_conflict_get_repos_info(i8** %10, i32* null, %struct.TYPE_12__* %41, i32* %42, i32* %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %47 = call i64 @svn_client_conflict_get_operation(%struct.TYPE_12__* %46)
  store i64 %47, i64* %14, align 8
  %48 = load i64, i64* %14, align 8
  %49 = load i64, i64* @svn_wc_operation_update, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %55, label %51

51:                                               ; preds = %3
  %52 = load i64, i64* %14, align 8
  %53 = load i64, i64* @svn_wc_operation_switch, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %183

55:                                               ; preds = %51, %3
  %56 = bitcast %struct.find_added_rev_baton* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %56, i8 0, i64 56, i1 false)
  %57 = load i8*, i8** %10, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load i32*, i32** %7, align 8
  %60 = call i8* @svn_path_url_add_component2(i8* %57, i8* %58, i32* %59)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load i32, i32* @FALSE, align 4
  %63 = load i32, i32* @FALSE, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = call i32 @svn_client__open_ra_session_internal(i32** %19, i8** %16, i8* %61, i32* null, i32* null, i32 %62, i32 %63, i32* %64, i32* %65, i32* %66)
  %68 = call i32 @SVN_ERR(i32 %67)
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call %struct.conflict_tree_incoming_add_details* @apr_pcalloc(i32 %71, i32 48)
  store %struct.conflict_tree_incoming_add_details* %72, %struct.conflict_tree_incoming_add_details** %13, align 8
  %73 = load i32*, i32** %6, align 8
  %74 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 4
  store i32* %73, i32** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %76 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_12__* %75)
  %77 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 5
  store i8* %76, i8** %77, align 8
  %78 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %79 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 0
  store i64 %78, i64* %79, align 8
  %80 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 1
  store i8* null, i8** %80, align 8
  %81 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 3
  store i32* null, i32** %81, align 8
  %82 = load i32*, i32** %7, align 8
  %83 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 2
  store i32* %82, i32** %83, align 8
  %84 = load i32*, i32** %19, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %88 = load i32, i32* @find_added_rev, align 4
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @svn_ra_get_location_segments(i32* %84, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %86, i64 %87, i32 %88, %struct.find_added_rev_baton* %18, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %19, align 8
  %93 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %96 = load i32*, i32** %7, align 8
  %97 = call i32 @svn_ra_rev_prop(i32* %92, i64 %94, i32 %95, %struct.TYPE_11__** %17, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 1
  %103 = load i8*, i8** %102, align 8
  %104 = call i8* @apr_pstrdup(i32 %101, i8* %103)
  %105 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %106 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %105, i32 0, i32 5
  store i8* %104, i8** %106, align 8
  %107 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %18, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %110 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %109, i32 0, i32 0
  store i64 %108, i64* %110, align 8
  %111 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %112 = icmp ne %struct.TYPE_11__* %111, null
  br i1 %112, label %113, label %124

113:                                              ; preds = %55
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %118 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i8* @apr_pstrdup(i32 %116, i8* %119)
  %121 = bitcast i8* %120 to i32*
  %122 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %123 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %122, i32 0, i32 2
  store i32* %121, i32** %123, align 8
  br label %129

124:                                              ; preds = %55
  %125 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %126 = bitcast i8* %125 to i32*
  %127 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %128 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %127, i32 0, i32 2
  store i32* %126, i32** %128, align 8
  br label %129

129:                                              ; preds = %124, %113
  %130 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %131 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %132 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %134 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %133, i32 0, i32 3
  store i32* null, i32** %134, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = load i32*, i32** %7, align 8
  %137 = call i32 @svn_ra_get_latest_revnum(i32* %135, i64* %21, i32* %136)
  %138 = call i32 @SVN_ERR(i32 %137)
  %139 = load i64, i64* %12, align 8
  %140 = load i64, i64* %21, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %142, label %182

142:                                              ; preds = %129
  %143 = load i32*, i32** %19, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* %21, align 8
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @svn_ra_get_deleted_rev(i32* %143, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %144, i64 %145, i64* %20, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i64, i64* %20, align 8
  %150 = call i64 @SVN_IS_VALID_REVNUM(i64 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %181

152:                                              ; preds = %142
  %153 = load i32*, i32** %19, align 8
  %154 = load i64, i64* %20, align 8
  %155 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %156 = load i32*, i32** %7, align 8
  %157 = call i32 @svn_ra_rev_prop(i32* %153, i64 %154, i32 %155, %struct.TYPE_11__** %17, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %161 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %160, i32 0, i32 4
  store i64 %159, i64* %161, align 8
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %163 = icmp ne %struct.TYPE_11__* %162, null
  br i1 %163, label %164, label %175

164:                                              ; preds = %152
  %165 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = call i8* @apr_pstrdup(i32 %167, i8* %170)
  %172 = bitcast i8* %171 to i32*
  %173 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %174 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %173, i32 0, i32 3
  store i32* %172, i32** %174, align 8
  br label %180

175:                                              ; preds = %152
  %176 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %177 = bitcast i8* %176 to i32*
  %178 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %179 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %178, i32 0, i32 3
  store i32* %177, i32** %179, align 8
  br label %180

180:                                              ; preds = %175, %164
  br label %181

181:                                              ; preds = %180, %142
  br label %182

182:                                              ; preds = %181, %129
  br label %328

183:                                              ; preds = %51
  %184 = load i64, i64* %14, align 8
  %185 = load i64, i64* @svn_wc_operation_merge, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %326

187:                                              ; preds = %183
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* %12, align 8
  %190 = icmp slt i64 %188, %189
  br i1 %190, label %191, label %271

191:                                              ; preds = %187
  %192 = bitcast %struct.find_added_rev_baton* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %192, i8 0, i64 56, i1 false)
  %193 = load i8*, i8** %10, align 8
  %194 = load i8*, i8** %9, align 8
  %195 = load i32*, i32** %7, align 8
  %196 = call i8* @svn_path_url_add_component2(i8* %193, i8* %194, i32* %195)
  store i8* %196, i8** %22, align 8
  %197 = load i8*, i8** %22, align 8
  %198 = load i32, i32* @FALSE, align 4
  %199 = load i32, i32* @FALSE, align 4
  %200 = load i32*, i32** %6, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = load i32*, i32** %7, align 8
  %203 = call i32 @svn_client__open_ra_session_internal(i32** %26, i8** %23, i8* %197, i32* null, i32* null, i32 %198, i32 %199, i32* %200, i32* %201, i32* %202)
  %204 = call i32 @SVN_ERR(i32 %203)
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 8
  %208 = call %struct.conflict_tree_incoming_add_details* @apr_pcalloc(i32 %207, i32 48)
  store %struct.conflict_tree_incoming_add_details* %208, %struct.conflict_tree_incoming_add_details** %13, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %210 = call i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_12__* %209)
  %211 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 5
  store i8* %210, i8** %211, align 8
  %212 = load i32*, i32** %6, align 8
  %213 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 4
  store i32* %212, i32** %213, align 8
  %214 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %215 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 0
  store i64 %214, i64* %215, align 8
  %216 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 1
  store i8* null, i8** %216, align 8
  %217 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 3
  store i32* null, i32** %217, align 8
  %218 = load i32*, i32** %7, align 8
  %219 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 2
  store i32* %218, i32** %219, align 8
  %220 = load i32*, i32** %26, align 8
  %221 = load i64, i64* %12, align 8
  %222 = load i64, i64* %12, align 8
  %223 = load i64, i64* %11, align 8
  %224 = load i32, i32* @find_added_rev, align 4
  %225 = load i32*, i32** %7, align 8
  %226 = call i32 @svn_ra_get_location_segments(i32* %220, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i64 %221, i64 %222, i64 %223, i32 %224, %struct.find_added_rev_baton* %25, i32* %225)
  %227 = call i32 @SVN_ERR(i32 %226)
  %228 = load i32*, i32** %26, align 8
  %229 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i32, i32* @SVN_PROP_REVISION_AUTHOR, align 4
  %232 = load i32*, i32** %7, align 8
  %233 = call i32 @svn_ra_rev_prop(i32* %228, i64 %230, i32 %231, %struct.TYPE_11__** %24, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 8
  %238 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 1
  %239 = load i8*, i8** %238, align 8
  %240 = call i8* @apr_pstrdup(i32 %237, i8* %239)
  %241 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %242 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %241, i32 0, i32 5
  store i8* %240, i8** %242, align 8
  %243 = getelementptr inbounds %struct.find_added_rev_baton, %struct.find_added_rev_baton* %25, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %246 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %245, i32 0, i32 0
  store i64 %244, i64* %246, align 8
  %247 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %248 = icmp ne %struct.TYPE_11__* %247, null
  br i1 %248, label %249, label %260

249:                                              ; preds = %191
  %250 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %251 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i8*, i8** %254, align 8
  %256 = call i8* @apr_pstrdup(i32 %252, i8* %255)
  %257 = bitcast i8* %256 to i32*
  %258 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %259 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %258, i32 0, i32 2
  store i32* %257, i32** %259, align 8
  br label %265

260:                                              ; preds = %191
  %261 = call i8* @_(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %262 = bitcast i8* %261 to i32*
  %263 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %264 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %263, i32 0, i32 2
  store i32* %262, i32** %264, align 8
  br label %265

265:                                              ; preds = %260, %249
  %266 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %267 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %268 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %267, i32 0, i32 4
  store i64 %266, i64* %268, align 8
  %269 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %270 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %269, i32 0, i32 3
  store i32* null, i32** %270, align 8
  br label %325

271:                                              ; preds = %187
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %273 = load i8*, i8** %8, align 8
  %274 = load i32*, i32** %7, align 8
  %275 = call i32 @svn_relpath_basename(i8* %273, i32* %274)
  %276 = load i8*, i8** %8, align 8
  %277 = load i32*, i32** %7, align 8
  %278 = call i32 @svn_relpath_dirname(i8* %276, i32* %277)
  %279 = load i64, i64* %11, align 8
  %280 = load i64, i64* %12, align 8
  %281 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %282 = load i32*, i32** %6, align 8
  %283 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %284 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = load i32*, i32** %7, align 8
  %287 = call i32 @find_revision_for_suspected_deletion(i64* %27, i8** %28, i32* %29, i32** %30, %struct.TYPE_12__* %272, i32 %275, i32 %278, i64 %279, i64 %280, i32* null, i64 %281, i32* %282, i32 %285, i32* %286)
  %288 = call i32 @SVN_ERR(i32 %287)
  %289 = load i64, i64* %27, align 8
  %290 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %291 = icmp eq i64 %289, %290
  br i1 %291, label %292, label %294

292:                                              ; preds = %271
  %293 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %293, i32** %4, align 8
  br label %333

294:                                              ; preds = %271
  %295 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = call %struct.conflict_tree_incoming_add_details* @apr_pcalloc(i32 %297, i32 48)
  store %struct.conflict_tree_incoming_add_details* %298, %struct.conflict_tree_incoming_add_details** %13, align 8
  %299 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 1
  %301 = load i32, i32* %300, align 8
  %302 = load i8*, i8** %9, align 8
  %303 = call i8* @apr_pstrdup(i32 %301, i8* %302)
  %304 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %305 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %304, i32 0, i32 5
  store i8* %303, i8** %305, align 8
  %306 = load i64, i64* %27, align 8
  %307 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %308 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %307, i32 0, i32 4
  store i64 %306, i64* %308, align 8
  %309 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 8
  %312 = load i8*, i8** %28, align 8
  %313 = call i8* @apr_pstrdup(i32 %311, i8* %312)
  %314 = bitcast i8* %313 to i32*
  %315 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %316 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %315, i32 0, i32 3
  store i32* %314, i32** %316, align 8
  %317 = load i64, i64* @SVN_INVALID_REVNUM, align 8
  %318 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %319 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %318, i32 0, i32 0
  store i64 %317, i64* %319, align 8
  %320 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %321 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %320, i32 0, i32 2
  store i32* null, i32** %321, align 8
  %322 = load i32*, i32** %30, align 8
  %323 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %324 = getelementptr inbounds %struct.conflict_tree_incoming_add_details, %struct.conflict_tree_incoming_add_details* %323, i32 0, i32 1
  store i32* %322, i32** %324, align 8
  br label %325

325:                                              ; preds = %294, %265
  br label %327

326:                                              ; preds = %183
  store %struct.conflict_tree_incoming_add_details* null, %struct.conflict_tree_incoming_add_details** %13, align 8
  br label %327

327:                                              ; preds = %326, %325
  br label %328

328:                                              ; preds = %327, %182
  %329 = load %struct.conflict_tree_incoming_add_details*, %struct.conflict_tree_incoming_add_details** %13, align 8
  %330 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %331 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %330, i32 0, i32 0
  store %struct.conflict_tree_incoming_add_details* %329, %struct.conflict_tree_incoming_add_details** %331, align 8
  %332 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %332, i32** %4, align 8
  br label %333

333:                                              ; preds = %328, %292
  %334 = load i32*, i32** %4, align 8
  ret i32* %334
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_client_conflict_get_incoming_old_repos_location(i8**, i64*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_incoming_new_repos_location(i8**, i64*, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i32 @svn_client_conflict_get_repos_info(i8**, i32*, %struct.TYPE_12__*, i32*, i32*) #1

declare dso_local i64 @svn_client_conflict_get_operation(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_client__open_ra_session_internal(i32**, i8**, i8*, i32*, i32*, i32, i32, i32*, i32*, i32*) #1

declare dso_local %struct.conflict_tree_incoming_add_details* @apr_pcalloc(i32, i32) #1

declare dso_local i8* @svn_client_conflict_get_local_abspath(%struct.TYPE_12__*) #1

declare dso_local i32 @svn_ra_get_location_segments(i32*, i8*, i64, i64, i64, i32, %struct.find_added_rev_baton*, i32*) #1

declare dso_local i32 @svn_ra_rev_prop(i32*, i64, i32, %struct.TYPE_11__**, i32*) #1

declare dso_local i8* @apr_pstrdup(i32, i8*) #1

declare dso_local i8* @_(i8*) #1

declare dso_local i32 @svn_ra_get_latest_revnum(i32*, i64*, i32*) #1

declare dso_local i32 @svn_ra_get_deleted_rev(i32*, i8*, i64, i64, i64*, i32*) #1

declare dso_local i64 @SVN_IS_VALID_REVNUM(i64) #1

declare dso_local i32 @find_revision_for_suspected_deletion(i64*, i8**, i32*, i32**, %struct.TYPE_12__*, i32, i32, i64, i64, i32*, i64, i32*, i32, i32*) #1

declare dso_local i32 @svn_relpath_basename(i8*, i32*) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
