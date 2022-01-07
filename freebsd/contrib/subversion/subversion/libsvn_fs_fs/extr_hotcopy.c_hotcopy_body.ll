; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_body.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_fs_fs/extr_hotcopy.c_hotcopy_body.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_47__ = type { i32 }
%struct.hotcopy_body_baton = type { i8*, %struct.TYPE_47__* (i8*)*, i8*, i32, i64, %struct.TYPE_46__*, %struct.TYPE_46__* }
%struct.TYPE_46__ = type { i32, %struct.TYPE_48__* }
%struct.TYPE_48__ = type { i64 }

@SVN_FS_FS__MIN_CONFIG_FILE = common dso_local global i64 0, align 8
@PATH_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [158 x i8] c"Failed to create hotcopy at '%s'. The file '%s' is missing from the source repository. Please create this file, for instance by running 'svnadmin upgrade %s'\00", align 1
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [138 x i8] c"The hotcopy destination already contains more revisions (%lu) than the hotcopy source contains (%lu); are source and destination swapped?\00", align 1
@PATH_REVS_DIR = common dso_local global i32 0, align 4
@PATH_REVPROPS_DIR = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT = common dso_local global i64 0, align 8
@PATH_LOCKS_DIR = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8
@PATH_NODE_ORIGINS_DIR = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_REP_SHARING_FORMAT = common dso_local global i64 0, align 8
@REP_CACHE_DB_NAME = common dso_local global i32 0, align 4
@svn_node_file = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@SVN_FS_FS__MIN_TXN_CURRENT_FORMAT = common dso_local global i64 0, align 8
@PATH_TXN_CURRENT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global %struct.TYPE_47__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_47__* (i8*, i32*)* @hotcopy_body to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_47__* @hotcopy_body(i8* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_47__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.hotcopy_body_baton*, align 8
  %7 = alloca %struct.TYPE_46__*, align 8
  %8 = alloca %struct.TYPE_48__*, align 8
  %9 = alloca %struct.TYPE_46__*, align 8
  %10 = alloca %struct.TYPE_48__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_47__* (i8*)*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i64, align 8
  %27 = alloca %struct.TYPE_47__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca %struct.TYPE_47__*, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = bitcast i8* %32 to %struct.hotcopy_body_baton*
  store %struct.hotcopy_body_baton* %33, %struct.hotcopy_body_baton** %6, align 8
  %34 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %35 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %34, i32 0, i32 6
  %36 = load %struct.TYPE_46__*, %struct.TYPE_46__** %35, align 8
  store %struct.TYPE_46__* %36, %struct.TYPE_46__** %7, align 8
  %37 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_48__*, %struct.TYPE_48__** %38, align 8
  store %struct.TYPE_48__* %39, %struct.TYPE_48__** %8, align 8
  %40 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %41 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %40, i32 0, i32 5
  %42 = load %struct.TYPE_46__*, %struct.TYPE_46__** %41, align 8
  store %struct.TYPE_46__* %42, %struct.TYPE_46__** %9, align 8
  %43 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_48__*, %struct.TYPE_48__** %44, align 8
  store %struct.TYPE_48__* %45, %struct.TYPE_48__** %10, align 8
  %46 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %47 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %11, align 8
  %49 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %50 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %12, align 4
  %52 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %53 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  store i8* %54, i8** %13, align 8
  %55 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %56 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %55, i32 0, i32 1
  %57 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %56, align 8
  store %struct.TYPE_47__* (i8*)* %57, %struct.TYPE_47__* (i8*)** %14, align 8
  %58 = load %struct.hotcopy_body_baton*, %struct.hotcopy_body_baton** %6, align 8
  %59 = getelementptr inbounds %struct.hotcopy_body_baton, %struct.hotcopy_body_baton* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  store i8* %60, i8** %15, align 8
  %61 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SVN_FS_FS__MIN_CONFIG_FILE, align 8
  %65 = icmp sge i64 %63, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %2
  %67 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @PATH_CONFIG, align 4
  %74 = load i32*, i32** %5, align 8
  %75 = call %struct.TYPE_47__* @svn_io_dir_file_copy(i32 %69, i32 %72, i32 %73, i32* %74)
  store %struct.TYPE_47__* %75, %struct.TYPE_47__** %27, align 8
  %76 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %77 = icmp ne %struct.TYPE_47__* %76, null
  br i1 %77, label %78, label %132

78:                                               ; preds = %66
  %79 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %80 = getelementptr inbounds %struct.TYPE_47__, %struct.TYPE_47__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @APR_STATUS_IS_ENOENT(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %129

84:                                               ; preds = %78
  %85 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @PATH_CONFIG, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = call i8* @svn_dirent_join(i32 %87, i32 %88, i32* %89)
  store i8* %90, i8** %30, align 8
  %91 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = call %struct.TYPE_47__* @svn_dirent_get_absolute(i8** %28, i32 %93, i32* %94)
  store %struct.TYPE_47__* %95, %struct.TYPE_47__** %31, align 8
  %96 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %97 = icmp ne %struct.TYPE_47__* %96, null
  br i1 %97, label %98, label %103

98:                                               ; preds = %84
  %99 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %100 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %101 = call %struct.TYPE_47__* @svn_error_compose_create(%struct.TYPE_47__* %99, %struct.TYPE_47__* %100)
  %102 = call %struct.TYPE_47__* @svn_error_trace(%struct.TYPE_47__* %101)
  store %struct.TYPE_47__* %102, %struct.TYPE_47__** %3, align 8
  br label %386

103:                                              ; preds = %84
  %104 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %105 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32*, i32** %5, align 8
  %108 = call %struct.TYPE_47__* @svn_dirent_get_absolute(i8** %29, i32 %106, i32* %107)
  store %struct.TYPE_47__* %108, %struct.TYPE_47__** %31, align 8
  %109 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %110 = icmp ne %struct.TYPE_47__* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %103
  %112 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %113 = load %struct.TYPE_47__*, %struct.TYPE_47__** %31, align 8
  %114 = call %struct.TYPE_47__* @svn_error_compose_create(%struct.TYPE_47__* %112, %struct.TYPE_47__* %113)
  %115 = call %struct.TYPE_47__* @svn_error_trace(%struct.TYPE_47__* %114)
  store %struct.TYPE_47__* %115, %struct.TYPE_47__** %3, align 8
  br label %386

116:                                              ; preds = %103
  %117 = load i8*, i8** %28, align 8
  %118 = load i32*, i32** %5, align 8
  %119 = call i8* @svn_dirent_dirname(i8* %117, i32* %118)
  store i8* %119, i8** %28, align 8
  %120 = load i8*, i8** %29, align 8
  %121 = load i32*, i32** %5, align 8
  %122 = call i8* @svn_dirent_dirname(i8* %120, i32* %121)
  store i8* %122, i8** %29, align 8
  %123 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %124 = call i32 @_(i8* getelementptr inbounds ([158 x i8], [158 x i8]* @.str, i64 0, i64 0))
  %125 = load i8*, i8** %29, align 8
  %126 = load i8*, i8** %30, align 8
  %127 = load i8*, i8** %28, align 8
  %128 = call %struct.TYPE_47__* @svn_error_quick_wrapf(%struct.TYPE_47__* %123, i32 %124, i8* %125, i8* %126, i8* %127)
  store %struct.TYPE_47__* %128, %struct.TYPE_47__** %3, align 8
  br label %386

129:                                              ; preds = %78
  %130 = load %struct.TYPE_47__*, %struct.TYPE_47__** %27, align 8
  %131 = call %struct.TYPE_47__* @svn_error_trace(%struct.TYPE_47__* %130)
  store %struct.TYPE_47__* %131, %struct.TYPE_47__** %3, align 8
  br label %386

132:                                              ; preds = %66
  br label %133

133:                                              ; preds = %132, %2
  %134 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %135 = icmp ne %struct.TYPE_47__* (i8*)* %134, null
  br i1 %135, label %136, label %141

136:                                              ; preds = %133
  %137 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %138 = load i8*, i8** %15, align 8
  %139 = call %struct.TYPE_47__* %137(i8* %138)
  %140 = call i32 @SVN_ERR(%struct.TYPE_47__* %139)
  br label %141

141:                                              ; preds = %136, %133
  %142 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %143 = load i32*, i32** %5, align 8
  %144 = call %struct.TYPE_47__* @svn_fs_fs__read_current(i64* %16, i32* %17, i32* %18, %struct.TYPE_46__* %142, i32* %143)
  %145 = call i32 @SVN_ERR(%struct.TYPE_47__* %144)
  %146 = load i64, i64* %11, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %150 = load i32*, i32** %5, align 8
  %151 = call %struct.TYPE_47__* @svn_fs_fs__youngest_rev(i64* %19, %struct.TYPE_46__* %149, i32* %150)
  %152 = call i32 @SVN_ERR(%struct.TYPE_47__* %151)
  %153 = load i64, i64* %16, align 8
  %154 = load i64, i64* %19, align 8
  %155 = icmp slt i64 %153, %154
  br i1 %155, label %156, label %162

156:                                              ; preds = %148
  %157 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %158 = call i32 @_(i8* getelementptr inbounds ([138 x i8], [138 x i8]* @.str.1, i64 0, i64 0))
  %159 = load i64, i64* %19, align 8
  %160 = load i64, i64* %16, align 8
  %161 = call %struct.TYPE_47__* @svn_error_createf(i32 %157, i32* null, i32 %158, i64 %159, i64 %160)
  store %struct.TYPE_47__* %161, %struct.TYPE_47__** %3, align 8
  br label %386

162:                                              ; preds = %148
  br label %164

163:                                              ; preds = %141
  store i64 0, i64* %19, align 8
  br label %164

164:                                              ; preds = %163, %162
  %165 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @PATH_REVS_DIR, align 4
  %169 = load i32*, i32** %5, align 8
  %170 = call i8* @svn_dirent_join(i32 %167, i32 %168, i32* %169)
  store i8* %170, i8** %22, align 8
  %171 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %172 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @PATH_REVS_DIR, align 4
  %175 = load i32*, i32** %5, align 8
  %176 = call i8* @svn_dirent_join(i32 %173, i32 %174, i32* %175)
  store i8* %176, i8** %23, align 8
  %177 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @PATH_REVPROPS_DIR, align 4
  %181 = load i32*, i32** %5, align 8
  %182 = call i8* @svn_dirent_join(i32 %179, i32 %180, i32* %181)
  store i8* %182, i8** %20, align 8
  %183 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %184 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load i32, i32* @PATH_REVPROPS_DIR, align 4
  %187 = load i32*, i32** %5, align 8
  %188 = call i8* @svn_dirent_join(i32 %185, i32 %186, i32* %187)
  store i8* %188, i8** %21, align 8
  %189 = load i8*, i8** %23, align 8
  %190 = load i32*, i32** %5, align 8
  %191 = call %struct.TYPE_47__* @svn_io_make_dir_recursively(i8* %189, i32* %190)
  %192 = call i32 @SVN_ERR(%struct.TYPE_47__* %191)
  %193 = load i8*, i8** %21, align 8
  %194 = load i32*, i32** %5, align 8
  %195 = call %struct.TYPE_47__* @svn_io_make_dir_recursively(i8* %193, i32* %194)
  %196 = call i32 @SVN_ERR(%struct.TYPE_47__* %195)
  %197 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %198 = icmp ne %struct.TYPE_47__* (i8*)* %197, null
  br i1 %198, label %199, label %204

199:                                              ; preds = %164
  %200 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %201 = load i8*, i8** %15, align 8
  %202 = call %struct.TYPE_47__* %200(i8* %201)
  %203 = call i32 @SVN_ERR(%struct.TYPE_47__* %202)
  br label %204

204:                                              ; preds = %199, %164
  %205 = load %struct.TYPE_48__*, %struct.TYPE_48__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = load i64, i64* @SVN_FS_FS__MIN_NO_GLOBAL_IDS_FORMAT, align 8
  %209 = icmp sge i64 %207, %208
  br i1 %209, label %210, label %232

210:                                              ; preds = %204
  %211 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %212 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %213 = load i64, i64* %16, align 8
  %214 = load i64, i64* %19, align 8
  %215 = load i64, i64* %11, align 8
  %216 = load i8*, i8** %22, align 8
  %217 = load i8*, i8** %23, align 8
  %218 = load i8*, i8** %20, align 8
  %219 = load i8*, i8** %21, align 8
  %220 = load i32, i32* %12, align 4
  %221 = load i8*, i8** %13, align 8
  %222 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %223 = load i8*, i8** %15, align 8
  %224 = load i32*, i32** %5, align 8
  %225 = call %struct.TYPE_47__* @hotcopy_revisions(%struct.TYPE_46__* %211, %struct.TYPE_46__* %212, i64 %213, i64 %214, i64 %215, i8* %216, i8* %217, i8* %218, i8* %219, i32 %220, i8* %221, %struct.TYPE_47__* (i8*)* %222, i8* %223, i32* %224)
  %226 = call i32 @SVN_ERR(%struct.TYPE_47__* %225)
  %227 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %228 = load i64, i64* %16, align 8
  %229 = load i32*, i32** %5, align 8
  %230 = call %struct.TYPE_47__* @svn_fs_fs__write_current(%struct.TYPE_46__* %227, i64 %228, i32 0, i32 0, i32* %229)
  %231 = call i32 @SVN_ERR(%struct.TYPE_47__* %230)
  br label %254

232:                                              ; preds = %204
  %233 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %234 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %235 = load i64, i64* %16, align 8
  %236 = load i8*, i8** %22, align 8
  %237 = load i8*, i8** %23, align 8
  %238 = load i8*, i8** %20, align 8
  %239 = load i8*, i8** %21, align 8
  %240 = load i32, i32* %12, align 4
  %241 = load i8*, i8** %13, align 8
  %242 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %243 = load i8*, i8** %15, align 8
  %244 = load i32*, i32** %5, align 8
  %245 = call %struct.TYPE_47__* @hotcopy_revisions_old(%struct.TYPE_46__* %233, %struct.TYPE_46__* %234, i64 %235, i8* %236, i8* %237, i8* %238, i8* %239, i32 %240, i8* %241, %struct.TYPE_47__* (i8*)* %242, i8* %243, i32* %244)
  %246 = call i32 @SVN_ERR(%struct.TYPE_47__* %245)
  %247 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %248 = load i64, i64* %16, align 8
  %249 = load i32, i32* %17, align 4
  %250 = load i32, i32* %18, align 4
  %251 = load i32*, i32** %5, align 8
  %252 = call %struct.TYPE_47__* @svn_fs_fs__write_current(%struct.TYPE_46__* %247, i64 %248, i32 %249, i32 %250, i32* %251)
  %253 = call i32 @SVN_ERR(%struct.TYPE_47__* %252)
  br label %254

254:                                              ; preds = %232, %210
  %255 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %259 = load i32*, i32** %5, align 8
  %260 = call i8* @svn_dirent_join(i32 %257, i32 %258, i32* %259)
  store i8* %260, i8** %25, align 8
  %261 = load i8*, i8** %25, align 8
  %262 = load i32, i32* @TRUE, align 4
  %263 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %264 = load i8*, i8** %15, align 8
  %265 = load i32*, i32** %5, align 8
  %266 = call %struct.TYPE_47__* @svn_io_remove_dir2(i8* %261, i32 %262, %struct.TYPE_47__* (i8*)* %263, i8* %264, i32* %265)
  %267 = call i32 @SVN_ERR(%struct.TYPE_47__* %266)
  %268 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %269 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %272 = load i32*, i32** %5, align 8
  %273 = call i8* @svn_dirent_join(i32 %270, i32 %271, i32* %272)
  store i8* %273, i8** %24, align 8
  %274 = load i8*, i8** %24, align 8
  %275 = load i32*, i32** %5, align 8
  %276 = call %struct.TYPE_47__* @svn_io_check_path(i8* %274, i64* %26, i32* %275)
  %277 = call i32 @SVN_ERR(%struct.TYPE_47__* %276)
  %278 = load i64, i64* %26, align 8
  %279 = load i64, i64* @svn_node_dir, align 8
  %280 = icmp eq i64 %278, %279
  br i1 %280, label %281, label %293

281:                                              ; preds = %254
  %282 = load i8*, i8** %24, align 8
  %283 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 8
  %286 = load i32, i32* @PATH_LOCKS_DIR, align 4
  %287 = load i32, i32* @TRUE, align 4
  %288 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %289 = load i8*, i8** %15, align 8
  %290 = load i32*, i32** %5, align 8
  %291 = call %struct.TYPE_47__* @svn_io_copy_dir_recursively(i8* %282, i32 %285, i32 %286, i32 %287, %struct.TYPE_47__* (i8*)* %288, i8* %289, i32* %290)
  %292 = call i32 @SVN_ERR(%struct.TYPE_47__* %291)
  br label %293

293:                                              ; preds = %281, %254
  %294 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %294, i32 0, i32 0
  %296 = load i32, i32* %295, align 8
  %297 = load i32, i32* @PATH_NODE_ORIGINS_DIR, align 4
  %298 = load i32*, i32** %5, align 8
  %299 = call i8* @svn_dirent_join(i32 %296, i32 %297, i32* %298)
  store i8* %299, i8** %24, align 8
  %300 = load i8*, i8** %24, align 8
  %301 = load i32*, i32** %5, align 8
  %302 = call %struct.TYPE_47__* @svn_io_check_path(i8* %300, i64* %26, i32* %301)
  %303 = call i32 @SVN_ERR(%struct.TYPE_47__* %302)
  %304 = load i64, i64* %26, align 8
  %305 = load i64, i64* @svn_node_dir, align 8
  %306 = icmp eq i64 %304, %305
  br i1 %306, label %307, label %319

307:                                              ; preds = %293
  %308 = load i8*, i8** %24, align 8
  %309 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %310 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load i32, i32* @PATH_NODE_ORIGINS_DIR, align 4
  %313 = load i32, i32* @TRUE, align 4
  %314 = load %struct.TYPE_47__* (i8*)*, %struct.TYPE_47__* (i8*)** %14, align 8
  %315 = load i8*, i8** %15, align 8
  %316 = load i32*, i32** %5, align 8
  %317 = call %struct.TYPE_47__* @hotcopy_io_copy_dir_recursively(i32* null, i8* %308, i32 %311, i32 %312, i32 %313, %struct.TYPE_47__* (i8*)* %314, i8* %315, i32* %316)
  %318 = call i32 @SVN_ERR(%struct.TYPE_47__* %317)
  br label %319

319:                                              ; preds = %307, %293
  %320 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %321 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = load i64, i64* @SVN_FS_FS__MIN_REP_SHARING_FORMAT, align 8
  %324 = icmp sge i64 %322, %323
  br i1 %324, label %325, label %362

325:                                              ; preds = %319
  %326 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %327 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 8
  %329 = load i32, i32* @REP_CACHE_DB_NAME, align 4
  %330 = load i32*, i32** %5, align 8
  %331 = call i8* @svn_dirent_join(i32 %328, i32 %329, i32* %330)
  store i8* %331, i8** %24, align 8
  %332 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %333 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = load i32, i32* @REP_CACHE_DB_NAME, align 4
  %336 = load i32*, i32** %5, align 8
  %337 = call i8* @svn_dirent_join(i32 %334, i32 %335, i32* %336)
  store i8* %337, i8** %25, align 8
  %338 = load i8*, i8** %24, align 8
  %339 = load i32*, i32** %5, align 8
  %340 = call %struct.TYPE_47__* @svn_io_check_path(i8* %338, i64* %26, i32* %339)
  %341 = call i32 @SVN_ERR(%struct.TYPE_47__* %340)
  %342 = load i64, i64* %26, align 8
  %343 = load i64, i64* @svn_node_file, align 8
  %344 = icmp eq i64 %342, %343
  br i1 %344, label %345, label %361

345:                                              ; preds = %325
  %346 = load i8*, i8** %24, align 8
  %347 = load i8*, i8** %25, align 8
  %348 = load i32*, i32** %5, align 8
  %349 = call %struct.TYPE_47__* @svn_sqlite__hotcopy(i8* %346, i8* %347, i32* %348)
  %350 = call i32 @SVN_ERR(%struct.TYPE_47__* %349)
  %351 = load i8*, i8** %25, align 8
  %352 = load i32, i32* @FALSE, align 4
  %353 = load i32*, i32** %5, align 8
  %354 = call %struct.TYPE_47__* @svn_io_set_file_read_write(i8* %351, i32 %352, i32* %353)
  %355 = call i32 @SVN_ERR(%struct.TYPE_47__* %354)
  %356 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %357 = load i64, i64* %16, align 8
  %358 = load i32*, i32** %5, align 8
  %359 = call %struct.TYPE_47__* @svn_fs_fs__del_rep_reference(%struct.TYPE_46__* %356, i64 %357, i32* %358)
  %360 = call i32 @SVN_ERR(%struct.TYPE_47__* %359)
  br label %361

361:                                              ; preds = %345, %325
  br label %362

362:                                              ; preds = %361, %319
  %363 = load %struct.TYPE_48__*, %struct.TYPE_48__** %10, align 8
  %364 = getelementptr inbounds %struct.TYPE_48__, %struct.TYPE_48__* %363, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @SVN_FS_FS__MIN_TXN_CURRENT_FORMAT, align 8
  %367 = icmp sge i64 %365, %366
  br i1 %367, label %368, label %379

368:                                              ; preds = %362
  %369 = load %struct.TYPE_46__*, %struct.TYPE_46__** %7, align 8
  %370 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 8
  %372 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %373 = getelementptr inbounds %struct.TYPE_46__, %struct.TYPE_46__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @PATH_TXN_CURRENT, align 4
  %376 = load i32*, i32** %5, align 8
  %377 = call %struct.TYPE_47__* @svn_io_dir_file_copy(i32 %371, i32 %374, i32 %375, i32* %376)
  %378 = call i32 @SVN_ERR(%struct.TYPE_47__* %377)
  br label %379

379:                                              ; preds = %368, %362
  %380 = load %struct.TYPE_46__*, %struct.TYPE_46__** %9, align 8
  %381 = load i32, i32* @TRUE, align 4
  %382 = load i32*, i32** %5, align 8
  %383 = call %struct.TYPE_47__* @svn_fs_fs__write_format(%struct.TYPE_46__* %380, i32 %381, i32* %382)
  %384 = call i32 @SVN_ERR(%struct.TYPE_47__* %383)
  %385 = load %struct.TYPE_47__*, %struct.TYPE_47__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_47__* %385, %struct.TYPE_47__** %3, align 8
  br label %386

386:                                              ; preds = %379, %156, %129, %116, %111, %98
  %387 = load %struct.TYPE_47__*, %struct.TYPE_47__** %3, align 8
  ret %struct.TYPE_47__* %387
}

declare dso_local %struct.TYPE_47__* @svn_io_dir_file_copy(i32, i32, i32, i32*) #1

declare dso_local i64 @APR_STATUS_IS_ENOENT(i32) #1

declare dso_local i8* @svn_dirent_join(i32, i32, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_dirent_get_absolute(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_error_trace(%struct.TYPE_47__*) #1

declare dso_local %struct.TYPE_47__* @svn_error_compose_create(%struct.TYPE_47__*, %struct.TYPE_47__*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_error_quick_wrapf(%struct.TYPE_47__*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR(%struct.TYPE_47__*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_fs__read_current(i64*, i32*, i32*, %struct.TYPE_46__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_fs__youngest_rev(i64*, %struct.TYPE_46__*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_error_createf(i32, i32*, i32, i64, i64) #1

declare dso_local %struct.TYPE_47__* @svn_io_make_dir_recursively(i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @hotcopy_revisions(%struct.TYPE_46__*, %struct.TYPE_46__*, i64, i64, i64, i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_47__* (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_fs__write_current(%struct.TYPE_46__*, i64, i32, i32, i32*) #1

declare dso_local %struct.TYPE_47__* @hotcopy_revisions_old(%struct.TYPE_46__*, %struct.TYPE_46__*, i64, i8*, i8*, i8*, i8*, i32, i8*, %struct.TYPE_47__* (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_io_remove_dir2(i8*, i32, %struct.TYPE_47__* (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_io_copy_dir_recursively(i8*, i32, i32, i32, %struct.TYPE_47__* (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @hotcopy_io_copy_dir_recursively(i32*, i8*, i32, i32, i32, %struct.TYPE_47__* (i8*)*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_sqlite__hotcopy(i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_io_set_file_read_write(i8*, i32, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_fs__del_rep_reference(%struct.TYPE_46__*, i64, i32*) #1

declare dso_local %struct.TYPE_47__* @svn_fs_fs__write_format(%struct.TYPE_46__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
