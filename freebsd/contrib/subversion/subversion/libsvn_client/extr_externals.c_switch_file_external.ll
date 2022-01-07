; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_switch_file_external.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_externals.c_switch_file_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32 (i32, %struct.TYPE_10__*, i32*)*, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i64 }

@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_USE_COMMIT_TIMES = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_HELPERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_DIFF3_CMD = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_PRESERVED_CF_EXTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"\0A\0D\09\0B \00", align 1
@SVN_ERR_WC_BAD_PATH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Cannot insert a file external defined on '%s' into the working copy '%s'.\00", align 1
@TRUE = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i64 0, align 8
@svn_node_unknown = common dso_local global i64 0, align 8
@svn_node_file = common dso_local global i64 0, align 8
@SVN_ERR_CLIENT_FILE_EXTERNAL_OVERWRITE_VERSIONED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [81 x i8] c"The file external from '%s' cannot overwrite the existing versioned item at '%s'\00", align 1
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_PATH_FOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"The file external '%s' can not be created because the node exists.\00", align 1
@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, %struct.TYPE_12__*, i8*, i32*, i32*, i8*, i32*, %struct.TYPE_11__*, i32*)* @switch_file_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @switch_file_external(i8* %0, %struct.TYPE_12__* %1, i8* %2, i32* %3, i32* %4, i8* %5, i32* %6, %struct.TYPE_11__* %7, i32* %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.TYPE_12__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.TYPE_10__*, align 8
  store i8* %0, i8** %11, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %12, align 8
  store i8* %2, i8** %13, align 8
  store i32* %3, i32** %14, align 8
  store i32* %4, i32** %15, align 8
  store i8* %5, i8** %16, align 8
  store i32* %6, i32** %17, align 8
  store %struct.TYPE_11__* %7, %struct.TYPE_11__** %18, align 8
  store i32* %8, i32** %19, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 7
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %9
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 7
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %46 = call i32* @svn_hash_gets(i64 %44, i32 %45)
  br label %48

47:                                               ; preds = %9
  br label %48

48:                                               ; preds = %47, %41
  %49 = phi i32* [ %46, %41 ], [ null, %47 ]
  store i32* %49, i32** %20, align 8
  %50 = load i8*, i8** %11, align 8
  %51 = call i32 @svn_dirent_is_absolute(i8* %50)
  %52 = call i32 @SVN_ERR_ASSERT(i32 %51)
  %53 = load i32*, i32** %20, align 8
  %54 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %55 = load i32, i32* @SVN_CONFIG_OPTION_USE_COMMIT_TIMES, align 4
  %56 = load i32, i32* @FALSE, align 4
  %57 = call i32 @svn_config_get_bool(i32* %53, i32* %21, i32 %54, i32 %55, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %20, align 8
  %60 = load i32, i32* @SVN_CONFIG_SECTION_HELPERS, align 4
  %61 = load i32, i32* @SVN_CONFIG_OPTION_DIFF3_CMD, align 4
  %62 = call i32 @svn_config_get(i32* %59, i8** %22, i32 %60, i32 %61, i8* null)
  %63 = load i8*, i8** %22, align 8
  %64 = icmp ne i8* %63, null
  br i1 %64, label %65, label %70

65:                                               ; preds = %48
  %66 = load i8*, i8** %22, align 8
  %67 = load i32*, i32** %19, align 8
  %68 = call i32 @svn_path_cstring_to_utf8(i8** %22, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  br label %70

70:                                               ; preds = %65, %48
  %71 = load i32*, i32** %20, align 8
  %72 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %73 = load i32, i32* @SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, align 4
  %74 = call i32 @svn_config_get(i32* %71, i8** %23, i32 %72, i32 %73, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %75 = load i8*, i8** %23, align 8
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %70
  %80 = load i8*, i8** %23, align 8
  %81 = load i32, i32* @FALSE, align 4
  %82 = load i32*, i32** %19, align 8
  %83 = call i32* @svn_cstring_split(i8* %80, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %81, i32* %82)
  br label %85

84:                                               ; preds = %70
  br label %85

85:                                               ; preds = %84, %79
  %86 = phi i32* [ %83, %79 ], [ null, %84 ]
  store i32* %86, i32** %24, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 8
  %90 = load i8*, i8** %11, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = load i32*, i32** %19, align 8
  %93 = call i32 @svn_wc__get_wcroot(i8** %27, i32 %89, i8* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i8*, i8** %27, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = call i32 @svn_dirent_is_ancestor(i8* %95, i8* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %109, label %99

99:                                               ; preds = %85
  %100 = load i32, i32* @SVN_ERR_WC_BAD_PATH, align 4
  %101 = call i32 @_(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i8*, i8** %16, align 8
  %103 = load i32*, i32** %19, align 8
  %104 = call i32 @svn_dirent_local_style(i8* %102, i32* %103)
  %105 = load i8*, i8** %27, align 8
  %106 = load i32*, i32** %19, align 8
  %107 = call i32 @svn_dirent_local_style(i8* %105, i32* %106)
  %108 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %100, i32* null, i32 %101, i32 %104, i32 %107)
  store i32* %108, i32** %10, align 8
  br label %310

109:                                              ; preds = %85
  %110 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i8*, i8** %11, align 8
  %114 = load i32, i32* @TRUE, align 4
  %115 = load i32, i32* @FALSE, align 4
  %116 = load i32*, i32** %19, align 8
  %117 = call i32 @svn_wc_read_kind2(i64* %25, i32 %112, i8* %113, i32 %114, i32 %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load i8*, i8** %11, align 8
  %123 = load i8*, i8** %11, align 8
  %124 = load i32, i32* @TRUE, align 4
  %125 = load i32*, i32** %19, align 8
  %126 = load i32*, i32** %19, align 8
  %127 = call i32 @svn_wc__read_external_info(i64* %26, i32* null, i32* null, i32* null, i32* null, i32 %121, i8* %122, i8* %123, i32 %124, i32* %125, i32* %126)
  %128 = call i32 @SVN_ERR(i32 %127)
  %129 = load i64, i64* %25, align 8
  %130 = load i64, i64* @svn_node_none, align 8
  %131 = icmp ne i64 %129, %130
  br i1 %131, label %132, label %151

132:                                              ; preds = %109
  %133 = load i64, i64* %25, align 8
  %134 = load i64, i64* @svn_node_unknown, align 8
  %135 = icmp ne i64 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load i64, i64* %26, align 8
  %138 = load i64, i64* @svn_node_file, align 8
  %139 = icmp ne i64 %137, %138
  br i1 %139, label %140, label %150

140:                                              ; preds = %136
  %141 = load i32, i32* @SVN_ERR_CLIENT_FILE_EXTERNAL_OVERWRITE_VERSIONED, align 4
  %142 = call i32 @_(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.3, i64 0, i64 0))
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %11, align 8
  %147 = load i32*, i32** %19, align 8
  %148 = call i32 @svn_dirent_local_style(i8* %146, i32* %147)
  %149 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %141, i32* null, i32 %142, i32 %145, i32 %148)
  store i32* %149, i32** %10, align 8
  br label %310

150:                                              ; preds = %136
  br label %171

151:                                              ; preds = %132, %109
  %152 = load i8*, i8** %11, align 8
  %153 = load i32*, i32** %19, align 8
  %154 = call i32 @svn_io_check_path(i8* %152, i64* %28, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  %156 = load i64, i64* %28, align 8
  %157 = load i64, i64* @svn_node_file, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %151
  %160 = load i64, i64* %28, align 8
  %161 = load i64, i64* @svn_node_dir, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %170

163:                                              ; preds = %159, %151
  %164 = load i32, i32* @SVN_ERR_WC_PATH_FOUND, align 4
  %165 = call i32 @_(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0))
  %166 = load i8*, i8** %11, align 8
  %167 = load i32*, i32** %19, align 8
  %168 = call i32 @svn_dirent_local_style(i8* %166, i32* %167)
  %169 = call i32* (i32, i32*, i32, i32, ...) @svn_error_createf(i32 %164, i32* null, i32 %165, i32 %168)
  store i32* %169, i32** %10, align 8
  br label %310

170:                                              ; preds = %159
  br label %171

171:                                              ; preds = %170, %150
  %172 = load i8*, i8** %11, align 8
  %173 = load i32*, i32** %19, align 8
  %174 = call i8* @svn_dirent_basename(i8* %172, i32* %173)
  store i8* %174, i8** %35, align 8
  %175 = load i32*, i32** %17, align 8
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %19, align 8
  %180 = load i32*, i32** %19, align 8
  %181 = call i32 @svn_ra_get_inherited_props(i32* %175, i32** %34, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %178, i32* %179, i32* %180)
  %182 = call i32 @SVN_ERR(i32 %181)
  %183 = load i32*, i32** %17, align 8
  %184 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %185 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = load i32*, i32** %19, align 8
  %188 = call i32 @svn_uri_dirname(i32 %186, i32* %187)
  %189 = load i32*, i32** %19, align 8
  %190 = call i32 @svn_ra_reparent(i32* %183, i32 %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i8*, i8** %11, align 8
  %196 = load i8*, i8** %16, align 8
  %197 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %198 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = load i32*, i32** %34, align 8
  %207 = load i32, i32* %21, align 4
  %208 = load i8*, i8** %22, align 8
  %209 = load i32*, i32** %24, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = load i8*, i8** %13, align 8
  %212 = load i32*, i32** %14, align 8
  %213 = load i32*, i32** %15, align 8
  %214 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 8
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %221 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %227 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %226, i32 0, i32 1
  %228 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %227, align 8
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32*, i32** %19, align 8
  %233 = load i32*, i32** %19, align 8
  %234 = call i32 @svn_wc__get_file_external_editor(i32** %31, i8** %32, i32* %33, i32 %194, i8* %195, i8* %196, i32 %199, i32 %202, i32 %205, i32* %206, i32 %207, i8* %208, i32* %209, i8* %210, i8* %211, i32* %212, i32* %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 (i32, %struct.TYPE_10__*, i32*)* %228, i32 %231, i32* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load i32*, i32** %17, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i8*, i8** %35, align 8
  %241 = load i32, i32* @svn_depth_unknown, align 4
  %242 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32, i32* @FALSE, align 4
  %246 = load i32, i32* @TRUE, align 4
  %247 = load i32*, i32** %31, align 8
  %248 = load i8*, i8** %32, align 8
  %249 = load i32*, i32** %19, align 8
  %250 = load i32*, i32** %19, align 8
  %251 = call i32 @svn_ra_do_switch3(i32* %236, i32** %29, i8** %30, i32 %239, i8* %240, i32 %241, i32 %244, i32 %245, i32 %246, i32* %247, i8* %248, i32* %249, i32* %250)
  %252 = call i32 @SVN_ERR(i32 %251)
  %253 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  %256 = load i8*, i8** %11, align 8
  %257 = load i32*, i32** %29, align 8
  %258 = load i8*, i8** %30, align 8
  %259 = load i32, i32* @TRUE, align 4
  %260 = load i32, i32* %21, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 3
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %265 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %264, i32 0, i32 2
  %266 = load i32, i32* %265, align 8
  %267 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %268 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %267, i32 0, i32 1
  %269 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %268, align 8
  %270 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32*, i32** %19, align 8
  %274 = call i32 @svn_wc__crawl_file_external(i32 %255, i8* %256, i32* %257, i8* %258, i32 %259, i32 %260, i32 %263, i32 %266, i32 (i32, %struct.TYPE_10__*, i32*)* %269, i32 %272, i32* %273)
  %275 = call i32 @SVN_ERR(i32 %274)
  %276 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 1
  %278 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %277, align 8
  %279 = icmp ne i32 (i32, %struct.TYPE_10__*, i32*)* %278, null
  br i1 %279, label %280, label %308

280:                                              ; preds = %171
  %281 = load i8*, i8** %11, align 8
  %282 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %283 = load i32*, i32** %19, align 8
  %284 = call %struct.TYPE_10__* @svn_wc_create_notify(i8* %281, i32 %282, i32* %283)
  store %struct.TYPE_10__* %284, %struct.TYPE_10__** %36, align 8
  %285 = load i64, i64* @svn_node_none, align 8
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 4
  store i64 %285, i64* %287, align 8
  %288 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %289 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %290 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %289, i32 0, i32 2
  store i32 %288, i32* %290, align 8
  %291 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %292 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %291, i32 0, i32 3
  store i32 %288, i32* %292, align 4
  %293 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  store i32 %293, i32* %295, align 4
  %296 = load i32, i32* %33, align 4
  %297 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %298 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %297, i32 0, i32 0
  store i32 %296, i32* %298, align 8
  %299 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %299, i32 0, i32 1
  %301 = load i32 (i32, %struct.TYPE_10__*, i32*)*, i32 (i32, %struct.TYPE_10__*, i32*)** %300, align 8
  %302 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %303 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %302, i32 0, i32 0
  %304 = load i32, i32* %303, align 8
  %305 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %306 = load i32*, i32** %19, align 8
  %307 = call i32 %301(i32 %304, %struct.TYPE_10__* %305, i32* %306)
  br label %308

308:                                              ; preds = %280, %171
  %309 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %309, i32** %10, align 8
  br label %310

310:                                              ; preds = %308, %163, %140, %99
  %311 = load i32*, i32** %10, align 8
  ret i32* %311
}

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_config_get_bool(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32* @svn_cstring_split(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__get_wcroot(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__read_external_info(i64*, i32*, i32*, i32*, i32*, i32, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_check_path(i8*, i64*, i32*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @svn_ra_get_inherited_props(i32*, i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i32, i32*) #1

declare dso_local i32 @svn_uri_dirname(i32, i32*) #1

declare dso_local i32 @svn_wc__get_file_external_editor(i32**, i8**, i32*, i32, i8*, i8*, i32, i32, i32, i32*, i32, i8*, i32*, i8*, i8*, i32*, i32*, i32, i32, i32, i32, i32 (i32, %struct.TYPE_10__*, i32*)*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_switch3(i32*, i32**, i8**, i32, i8*, i32, i32, i32, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__crawl_file_external(i32, i8*, i32*, i8*, i32, i32, i32, i32, i32 (i32, %struct.TYPE_10__*, i32*)*, i32, i32*) #1

declare dso_local %struct.TYPE_10__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
