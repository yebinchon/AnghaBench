; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc_upgrade.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_svn_wc_upgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64 }
%struct.upgrade_data_t = type { i8*, i32, i32, i32, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_ERR_WC_UPGRADE_REQUIRED = common dso_local global i64 0, align 8
@SVN_WC__VERSION = common dso_local global i32 0, align 4
@svn_wc_notify_upgraded_path = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_12__* null, align 8
@SVN_WC_ENTRY_THIS_DIR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"tmp\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"wcng\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@PRISTINE_STORAGE_RELPATH = common dso_local global i8* null, align 8
@SDB_FILE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_12__* @svn_wc_upgrade(i32* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 (i8*, i32*, i32*)* %6, i8* %7, i32* %8) #0 {
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32 (i8*, i32*, i32*)*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.upgrade_data_t, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_11__*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca %struct.TYPE_12__*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i64, align 8
  %35 = alloca i32*, align 8
  store i32* %0, i32** %11, align 8
  store i8* %1, i8** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i8* %5, i8** %16, align 8
  store i32 (i8*, i32*, i32*)* %6, i32 (i8*, i32*, i32*)** %17, align 8
  store i8* %7, i8** %18, align 8
  store i32* %8, i32** %19, align 8
  %36 = bitcast %struct.upgrade_data_t* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 32, i1 false)
  store i32* null, i32** %23, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = call i32* @apr_hash_make(i32* %37)
  store i32* %38, i32** %28, align 8
  %39 = load i32, i32* @TRUE, align 4
  %40 = load i32, i32* @FALSE, align 4
  %41 = load i32*, i32** %19, align 8
  %42 = load i32*, i32** %19, align 8
  %43 = call i32 @svn_wc__db_open(i32** %20, i32* null, i32 %39, i32 %40, i32* %41, i32* %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %20, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = load i32*, i32** %19, align 8
  %48 = call %struct.TYPE_12__* @svn_wc__db_bump_format(i32* %33, i64* %34, i32* %45, i8* %46, i32* %47)
  store %struct.TYPE_12__* %48, %struct.TYPE_12__** %32, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %50 = icmp ne %struct.TYPE_12__* %49, null
  br i1 %50, label %51, label %66

51:                                               ; preds = %9
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SVN_ERR_WC_UPGRADE_REQUIRED, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %51
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @svn_wc__db_close(i32* %59)
  %61 = call i32 @svn_error_compose_create(%struct.TYPE_12__* %58, i32 %60)
  %62 = call %struct.TYPE_12__* @svn_error_trace(i32 %61)
  store %struct.TYPE_12__* %62, %struct.TYPE_12__** %10, align 8
  br label %276

63:                                               ; preds = %51
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %65 = call i32 @svn_error_clear(%struct.TYPE_12__* %64)
  br label %92

66:                                               ; preds = %9
  %67 = load i32*, i32** %20, align 8
  %68 = call i32 @svn_wc__db_close(i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32, i32* %33, align 4
  %71 = load i32, i32* @SVN_WC__VERSION, align 4
  %72 = icmp eq i32 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i32 @SVN_ERR_ASSERT(i32 %73)
  %75 = load i64, i64* %34, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %66
  %78 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %17, align 8
  %79 = icmp ne i32 (i8*, i32*, i32*)* %78, null
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* @svn_wc_notify_upgraded_path, align 4
  %83 = load i32*, i32** %19, align 8
  %84 = call i32* @svn_wc_create_notify(i8* %81, i32 %82, i32* %83)
  store i32* %84, i32** %35, align 8
  %85 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %17, align 8
  %86 = load i8*, i8** %18, align 8
  %87 = load i32*, i32** %35, align 8
  %88 = load i32*, i32** %19, align 8
  %89 = call i32 %85(i8* %86, i32* %87, i32* %88)
  br label %90

90:                                               ; preds = %80, %77, %66
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %91, %struct.TYPE_12__** %10, align 8
  br label %276

92:                                               ; preds = %63
  %93 = load i8*, i8** %12, align 8
  %94 = load i32*, i32** %19, align 8
  %95 = call i32 @is_old_wcroot(i8* %93, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i8*, i8** %12, align 8
  %98 = load i32*, i32** %19, align 8
  %99 = load i32*, i32** %19, align 8
  %100 = call i32 @svn_wc__read_entries_old(i32** %30, i8* %97, i32* %98, i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  %102 = load i32*, i32** %30, align 8
  %103 = load i32, i32* @SVN_WC_ENTRY_THIS_DIR, align 4
  %104 = call %struct.TYPE_11__* @svn_hash_gets(i32* %102, i32 %103)
  store %struct.TYPE_11__* %104, %struct.TYPE_11__** %29, align 8
  %105 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %106 = load i8*, i8** %12, align 8
  %107 = load i32, i32* %13, align 4
  %108 = load i8*, i8** %14, align 8
  %109 = load i32*, i32** %28, align 8
  %110 = load i32*, i32** %19, align 8
  %111 = load i32*, i32** %19, align 8
  %112 = call i32 @ensure_repos_info(%struct.TYPE_11__* %105, i8* %106, i32 %107, i8* %108, i32* %109, i32* %110, i32* %111)
  %113 = call i32 @SVN_ERR(i32 %112)
  %114 = load i32*, i32** %28, align 8
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = call %struct.TYPE_11__* @svn_hash_gets(i32* %114, i32 %117)
  %119 = icmp ne %struct.TYPE_11__* %118, null
  br i1 %119, label %133, label %120

120:                                              ; preds = %92
  %121 = load i32*, i32** %28, align 8
  %122 = load i32*, i32** %19, align 8
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @apr_pstrdup(i32* %122, i32 %125)
  %127 = load i32*, i32** %19, align 8
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @apr_pstrdup(i32* %127, i32 %130)
  %132 = call i32 @svn_hash_sets(i32* %121, i32 %126, i32 %131)
  br label %133

133:                                              ; preds = %120, %92
  %134 = load i8*, i8** %12, align 8
  %135 = load i32*, i32** %19, align 8
  %136 = call i8* @svn_wc__adm_child(i8* %134, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %135)
  %137 = load i32*, i32** %19, align 8
  %138 = call i8* @svn_dirent_join(i8* %136, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32* %137)
  %139 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  store i8* %138, i8** %139, align 8
  %140 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  %142 = load i32*, i32** %19, align 8
  %143 = call i8* @svn_wc__adm_child(i8* %141, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32* %142)
  store i8* %143, i8** %31, align 8
  %144 = load i8*, i8** %31, align 8
  %145 = load i32, i32* @TRUE, align 4
  %146 = load i32*, i32** %19, align 8
  %147 = call i32 @svn_io_remove_dir2(i8* %144, i32 %145, i32* null, i32* null, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i8*, i8** %31, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = call i32 @svn_wc__ensure_directory(i8* %149, i32* %150)
  %152 = call i32 @SVN_ERR(i32 %151)
  %153 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 1
  %154 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 3
  %155 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 2
  %156 = load i32*, i32** %20, align 8
  %157 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %158 = load i8*, i8** %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %163 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %19, align 8
  %166 = call i32 @svn_wc__db_upgrade_begin(i32* %153, i32* %154, i32* %155, i32* %156, i8* %158, i32 %161, i32 %164, i32* %165)
  %167 = call i32 @SVN_ERR(i32 %166)
  %168 = load i32*, i32** %20, align 8
  %169 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %170 = load i8*, i8** %169, align 8
  %171 = load i32, i32* @FALSE, align 4
  %172 = load i32*, i32** %19, align 8
  %173 = call i32 @svn_wc__db_wclock_obtain(i32* %168, i8* %170, i32 0, i32 %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load i32*, i32** %20, align 8
  %176 = load i8*, i8** %12, align 8
  %177 = load i32, i32* %13, align 4
  %178 = load i8*, i8** %14, align 8
  %179 = load i32*, i32** %28, align 8
  %180 = load i32, i32* %15, align 4
  %181 = load i8*, i8** %16, align 8
  %182 = load i32 (i8*, i32*, i32*)*, i32 (i8*, i32*, i32*)** %17, align 8
  %183 = load i8*, i8** %18, align 8
  %184 = load i32*, i32** %19, align 8
  %185 = load i32*, i32** %19, align 8
  %186 = call i32 @upgrade_working_copy(i32* null, i32* %175, i8* %176, i32 %177, i8* %178, i32* %179, %struct.upgrade_data_t* %21, i32 %180, i8* %181, i32 (i8*, i32*, i32*)* %182, i8* %183, i32* %184, i32* %185)
  %187 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @SVN_SQLITE__WITH_LOCK(i32 %186, i32 %188)
  %190 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %191 = load i8*, i8** %190, align 8
  %192 = load i8*, i8** @PRISTINE_STORAGE_RELPATH, align 8
  %193 = load i32*, i32** %19, align 8
  %194 = call i8* @svn_wc__adm_child(i8* %191, i8* %192, i32* %193)
  store i8* %194, i8** %24, align 8
  %195 = load i8*, i8** %12, align 8
  %196 = load i8*, i8** @PRISTINE_STORAGE_RELPATH, align 8
  %197 = load i32*, i32** %19, align 8
  %198 = call i8* @svn_wc__adm_child(i8* %195, i8* %196, i32* %197)
  store i8* %198, i8** %25, align 8
  %199 = load i8*, i8** %24, align 8
  %200 = load i32*, i32** %19, align 8
  %201 = call i32 @svn_wc__ensure_directory(i8* %199, i32* %200)
  %202 = call i32 @SVN_ERR(i32 %201)
  %203 = load i32*, i32** %20, align 8
  %204 = load i8*, i8** %12, align 8
  %205 = load i8*, i8** %24, align 8
  %206 = load i8*, i8** %25, align 8
  %207 = load i32*, i32** %19, align 8
  %208 = load i32*, i32** %19, align 8
  %209 = call i32 @svn_wc__wq_build_file_move(i32** %22, i32* %203, i8* %204, i8* %205, i8* %206, i32* %207, i32* %208)
  %210 = call i32 @SVN_ERR(i32 %209)
  %211 = load i32*, i32** %23, align 8
  %212 = load i32*, i32** %22, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = call i32* @svn_wc__wq_merge(i32* %211, i32* %212, i32* %213)
  store i32* %214, i32** %23, align 8
  %215 = load i32*, i32** %19, align 8
  %216 = call i32 @svn_wc__wq_build_postupgrade(i32** %22, i32* %215)
  %217 = call i32 @SVN_ERR(i32 %216)
  %218 = load i32*, i32** %23, align 8
  %219 = load i32*, i32** %22, align 8
  %220 = load i32*, i32** %19, align 8
  %221 = call i32* @svn_wc__wq_merge(i32* %218, i32* %219, i32* %220)
  store i32* %221, i32** %23, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %224 = load i8*, i8** %223, align 8
  %225 = load i32*, i32** %23, align 8
  %226 = load i32*, i32** %19, align 8
  %227 = call i32 @svn_wc__db_wq_add(i32* %222, i8* %224, i32* %225, i32* %226)
  %228 = call i32 @SVN_ERR(i32 %227)
  %229 = load i32*, i32** %20, align 8
  %230 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %231 = load i8*, i8** %230, align 8
  %232 = load i32*, i32** %19, align 8
  %233 = call i32 @svn_wc__db_wclock_release(i32* %229, i8* %231, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load i32*, i32** %20, align 8
  %236 = call i32 @svn_wc__db_close(i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  %238 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %239 = load i8*, i8** %238, align 8
  %240 = load i8*, i8** @SDB_FILE, align 8
  %241 = load i32*, i32** %19, align 8
  %242 = call i8* @svn_wc__adm_child(i8* %239, i8* %240, i32* %241)
  store i8* %242, i8** %26, align 8
  %243 = load i8*, i8** %12, align 8
  %244 = load i8*, i8** @SDB_FILE, align 8
  %245 = load i32*, i32** %19, align 8
  %246 = call i8* @svn_wc__adm_child(i8* %243, i8* %244, i32* %245)
  store i8* %246, i8** %27, align 8
  %247 = load i8*, i8** %26, align 8
  %248 = load i8*, i8** %27, align 8
  %249 = load i32, i32* @FALSE, align 4
  %250 = load i32*, i32** %19, align 8
  %251 = call i32 @svn_io_file_rename2(i8* %247, i8* %248, i32 %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32 %251)
  %253 = load i32, i32* @FALSE, align 4
  %254 = load i32, i32* @FALSE, align 4
  %255 = load i32*, i32** %19, align 8
  %256 = load i32*, i32** %19, align 8
  %257 = call i32 @svn_wc__db_open(i32** %20, i32* null, i32 %253, i32 %254, i32* %255, i32* %256)
  %258 = call i32 @SVN_ERR(i32 %257)
  %259 = load i32*, i32** %20, align 8
  %260 = load i8*, i8** %12, align 8
  %261 = load i32, i32* %15, align 4
  %262 = load i8*, i8** %16, align 8
  %263 = load i32*, i32** %19, align 8
  %264 = call i32 @svn_wc__wq_run(i32* %259, i8* %260, i32 %261, i8* %262, i32* %263)
  %265 = call i32 @SVN_ERR(i32 %264)
  %266 = load i32*, i32** %20, align 8
  %267 = call i32 @svn_wc__db_close(i32* %266)
  %268 = call i32 @SVN_ERR(i32 %267)
  %269 = getelementptr inbounds %struct.upgrade_data_t, %struct.upgrade_data_t* %21, i32 0, i32 0
  %270 = load i8*, i8** %269, align 8
  %271 = load i32, i32* @FALSE, align 4
  %272 = load i32*, i32** %19, align 8
  %273 = call i32 @svn_io_remove_dir2(i8* %270, i32 %271, i32* null, i32* null, i32* %272)
  %274 = call i32 @SVN_ERR(i32 %273)
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_12__* %275, %struct.TYPE_12__** %10, align 8
  br label %276

276:                                              ; preds = %133, %90, %57
  %277 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  ret %struct.TYPE_12__* %277
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32* @apr_hash_make(i32*) #2

declare dso_local i32 @SVN_ERR(i32) #2

declare dso_local i32 @svn_wc__db_open(i32**, i32*, i32, i32, i32*, i32*) #2

declare dso_local %struct.TYPE_12__* @svn_wc__db_bump_format(i32*, i64*, i32*, i8*, i32*) #2

declare dso_local %struct.TYPE_12__* @svn_error_trace(i32) #2

declare dso_local i32 @svn_error_compose_create(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @svn_wc__db_close(i32*) #2

declare dso_local i32 @svn_error_clear(%struct.TYPE_12__*) #2

declare dso_local i32 @SVN_ERR_ASSERT(i32) #2

declare dso_local i32* @svn_wc_create_notify(i8*, i32, i32*) #2

declare dso_local i32 @is_old_wcroot(i8*, i32*) #2

declare dso_local i32 @svn_wc__read_entries_old(i32**, i8*, i32*, i32*) #2

declare dso_local %struct.TYPE_11__* @svn_hash_gets(i32*, i32) #2

declare dso_local i32 @ensure_repos_info(%struct.TYPE_11__*, i8*, i32, i8*, i32*, i32*, i32*) #2

declare dso_local i32 @svn_hash_sets(i32*, i32, i32) #2

declare dso_local i32 @apr_pstrdup(i32*, i32) #2

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #2

declare dso_local i8* @svn_wc__adm_child(i8*, i8*, i32*) #2

declare dso_local i32 @svn_io_remove_dir2(i8*, i32, i32*, i32*, i32*) #2

declare dso_local i32 @svn_wc__ensure_directory(i8*, i32*) #2

declare dso_local i32 @svn_wc__db_upgrade_begin(i32*, i32*, i32*, i32*, i8*, i32, i32, i32*) #2

declare dso_local i32 @svn_wc__db_wclock_obtain(i32*, i8*, i32, i32, i32*) #2

declare dso_local i32 @SVN_SQLITE__WITH_LOCK(i32, i32) #2

declare dso_local i32 @upgrade_working_copy(i32*, i32*, i8*, i32, i8*, i32*, %struct.upgrade_data_t*, i32, i8*, i32 (i8*, i32*, i32*)*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_wc__wq_build_file_move(i32**, i32*, i8*, i8*, i8*, i32*, i32*) #2

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #2

declare dso_local i32 @svn_wc__wq_build_postupgrade(i32**, i32*) #2

declare dso_local i32 @svn_wc__db_wq_add(i32*, i8*, i32*, i32*) #2

declare dso_local i32 @svn_wc__db_wclock_release(i32*, i8*, i32*) #2

declare dso_local i32 @svn_io_file_rename2(i8*, i8*, i32, i32*) #2

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
