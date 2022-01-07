; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_switch_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_client/extr_switch.c_switch_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32, i32, i64 }
%struct.TYPE_19__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i8*, i8*, i32 }
%struct.svn_client__dirent_fetcher_baton_t = type { i8*, i32, i32* }

@SVN_CONFIG_CATEGORY_CONFIG = common dso_local global i32 0, align 4
@svn_depth_unknown = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@svn_depth_exclude = common dso_local global i32 0, align 4
@SVN_ERR_UNSUPPORTED_FEATURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Cannot both exclude and switch a path\00", align 1
@SVN_CONFIG_SECTION_HELPERS = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_DIFF3_CMD = common dso_local global i32 0, align 4
@SVN_CONFIG_SECTION_MISCELLANY = common dso_local global i32 0, align 4
@SVN_CONFIG_OPTION_USE_COMMIT_TIMES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Cannot switch '%s' because it is not in the repository yet\00", align 1
@SVN_CONFIG_OPTION_PRESERVED_CF_EXTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"\0A\0D\09\0B \00", align 1
@SVN_ERR_ENTRY_MISSING_URL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Directory '%s' has no URL\00", align 1
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i64 0, align 8
@svn_node_dir = common dso_local global i64 0, align 8
@SVN_ERR_WC_INVALID_SWITCH = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"'%s'\0Ais not the same repository as\0A'%s'\00", align 1
@SVN_ERR_CLIENT_UNRELATED_RESOURCES = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [41 x i8] c"'%s' shares no common ancestry with '%s'\00", align 1
@SVN_RA_CAPABILITY_DEPTH = common dso_local global i32 0, align 4
@svn_client__dirent_fetcher = common dso_local global i32 0, align 4
@record_conflict = common dso_local global i32* null, align 8
@svn_wc_notify_update_completed = common dso_local global i32 0, align 4
@svn_node_none = common dso_local global i32 0, align 4
@svn_wc_notify_state_inapplicable = common dso_local global i32 0, align 4
@svn_wc_notify_lock_state_inapplicable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i8*, i8*, i8*, i32*, i32*, i32, i64, i64, i64, i64, i64*, %struct.TYPE_20__*, i32*)* @switch_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @switch_internal(i32* %0, i32* %1, i8* %2, i8* %3, i8* %4, i32* %5, i32* %6, i32 %7, i64 %8, i64 %9, i64 %10, i64 %11, i64* %12, %struct.TYPE_20__* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64*, align 8
  %30 = alloca %struct.TYPE_20__*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.TYPE_21__*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i32, align 4
  %39 = alloca i8*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32*, align 8
  %42 = alloca i64, align 8
  %43 = alloca i32*, align 8
  %44 = alloca i8*, align 8
  %45 = alloca i8*, align 8
  %46 = alloca i32*, align 8
  %47 = alloca i64, align 8
  %48 = alloca %struct.svn_client__dirent_fetcher_baton_t, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i64, align 8
  %51 = alloca i64, align 8
  %52 = alloca %struct.TYPE_21__*, align 8
  %53 = alloca %struct.TYPE_21__*, align 8
  %54 = alloca i64, align 8
  %55 = alloca i64, align 8
  %56 = alloca i8*, align 8
  %57 = alloca i8*, align 8
  %58 = alloca i32*, align 8
  %59 = alloca i32*, align 8
  %60 = alloca %struct.TYPE_19__*, align 8
  store i32* %0, i32** %17, align 8
  store i32* %1, i32** %18, align 8
  store i8* %2, i8** %19, align 8
  store i8* %3, i8** %20, align 8
  store i8* %4, i8** %21, align 8
  store i32* %5, i32** %22, align 8
  store i32* %6, i32** %23, align 8
  store i32 %7, i32* %24, align 4
  store i64 %8, i64* %25, align 8
  store i64 %9, i64* %26, align 8
  store i64 %10, i64* %27, align 8
  store i64 %11, i64* %28, align 8
  store i64* %12, i64** %29, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %30, align 8
  store i32* %14, i32** %31, align 8
  %61 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %62 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %15
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* @SVN_CONFIG_CATEGORY_CONFIG, align 4
  %70 = call i32* @svn_hash_gets(i64 %68, i32 %69)
  br label %72

71:                                               ; preds = %15
  br label %72

72:                                               ; preds = %71, %65
  %73 = phi i32* [ %70, %65 ], [ null, %71 ]
  store i32* %73, i32** %49, align 8
  %74 = load i32, i32* %24, align 4
  %75 = load i32, i32* @svn_depth_unknown, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %72
  %78 = load i64, i64* @FALSE, align 8
  store i64 %78, i64* %25, align 8
  br label %79

79:                                               ; preds = %77, %72
  %80 = load i32, i32* %24, align 4
  %81 = load i32, i32* @svn_depth_exclude, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %85 = call i32 @_(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %86 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %84, i32* null, i32 %85)
  store i32* %86, i32** %16, align 8
  br label %557

87:                                               ; preds = %79
  %88 = load i32*, i32** %49, align 8
  %89 = load i32, i32* @SVN_CONFIG_SECTION_HELPERS, align 4
  %90 = load i32, i32* @SVN_CONFIG_OPTION_DIFF3_CMD, align 4
  %91 = call i32 @svn_config_get(i32* %88, i8** %39, i32 %89, i32 %90, i8* null)
  %92 = load i8*, i8** %39, align 8
  %93 = icmp ne i8* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %87
  %95 = load i8*, i8** %39, align 8
  %96 = load i32*, i32** %31, align 8
  %97 = call i32 @svn_path_cstring_to_utf8(i8** %39, i8* %95, i32* %96)
  %98 = call i32 @SVN_ERR(i32 %97)
  br label %99

99:                                               ; preds = %94, %87
  %100 = load i32*, i32** %49, align 8
  %101 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %102 = load i32, i32* @SVN_CONFIG_OPTION_USE_COMMIT_TIMES, align 4
  %103 = load i64, i64* @FALSE, align 8
  %104 = call i32 @svn_config_get_bool(i32* %100, i64* %42, i32 %101, i32 %102, i64 %103)
  %105 = call i32 @SVN_ERR(i32 %104)
  %106 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %107 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i8*, i8** %19, align 8
  %110 = load i32*, i32** %31, align 8
  %111 = call i32 @svn_wc__node_has_working(i64* %50, i32 %108, i8* %109, i32* %110)
  %112 = call i32 @SVN_ERR(i32 %111)
  %113 = load i64, i64* %50, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %99
  %116 = load i32, i32* @SVN_ERR_UNSUPPORTED_FEATURE, align 4
  %117 = call i32 @_(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i8*, i8** %19, align 8
  %119 = load i32*, i32** %31, align 8
  %120 = call i8* @svn_dirent_local_style(i8* %118, i32* %119)
  %121 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %116, i32* null, i32 %117, i8* %120)
  store i32* %121, i32** %16, align 8
  br label %557

122:                                              ; preds = %99
  %123 = load i32*, i32** %49, align 8
  %124 = load i32, i32* @SVN_CONFIG_SECTION_MISCELLANY, align 4
  %125 = load i32, i32* @SVN_CONFIG_OPTION_PRESERVED_CF_EXTS, align 4
  %126 = call i32 @svn_config_get(i32* %123, i8** %45, i32 %124, i32 %125, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %127 = load i8*, i8** %45, align 8
  %128 = load i8, i8* %127, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %122
  %132 = load i8*, i8** %45, align 8
  %133 = load i64, i64* @FALSE, align 8
  %134 = load i32*, i32** %31, align 8
  %135 = call i32* @svn_cstring_split(i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i64 %133, i32* %134)
  br label %137

136:                                              ; preds = %122
  br label %137

137:                                              ; preds = %136, %131
  %138 = phi i32* [ %135, %131 ], [ null, %136 ]
  store i32* %138, i32** %46, align 8
  %139 = load i8*, i8** %21, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %147

141:                                              ; preds = %137
  %142 = load i8*, i8** %21, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp ne i32 %145, 0
  br label %147

147:                                              ; preds = %141, %137
  %148 = phi i1 [ false, %137 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = call i32 @SVN_ERR_ASSERT(i32 %149)
  %151 = load i8*, i8** %19, align 8
  %152 = load i8*, i8** %20, align 8
  %153 = call i64 @strcmp(i8* %151, i8* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %147
  %156 = load i8*, i8** %19, align 8
  %157 = load i32*, i32** %31, align 8
  %158 = call i8* @svn_dirent_basename(i8* %156, i32* %157)
  store i8* %158, i8** %35, align 8
  br label %160

159:                                              ; preds = %147
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i8** %35, align 8
  br label %160

160:                                              ; preds = %159, %155
  %161 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %162 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = load i8*, i8** %20, align 8
  %165 = load i32*, i32** %31, align 8
  %166 = load i32*, i32** %31, align 8
  %167 = call i32 @svn_wc__node_get_url(i8** %34, i32 %163, i8* %164, i32* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i8*, i8** %34, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %178, label %171

171:                                              ; preds = %160
  %172 = load i32, i32* @SVN_ERR_ENTRY_MISSING_URL, align 4
  %173 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %174 = load i8*, i8** %20, align 8
  %175 = load i32*, i32** %31, align 8
  %176 = call i8* @svn_dirent_local_style(i8* %174, i32* %175)
  %177 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %172, i32* null, i32 %173, i8* %176)
  store i32* %177, i32** %16, align 8
  br label %557

178:                                              ; preds = %160
  %179 = load i64, i64* %25, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %245

181:                                              ; preds = %178
  %182 = load i32, i32* %24, align 4
  %183 = load i32, i32* @svn_depth_infinity, align 4
  %184 = icmp slt i32 %182, %183
  br i1 %184, label %185, label %245

185:                                              ; preds = %181
  %186 = load i32, i32* %24, align 4
  %187 = load i32, i32* @svn_depth_exclude, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %210

189:                                              ; preds = %185
  %190 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %191 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  %193 = load i8*, i8** %19, align 8
  %194 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %195 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %198 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %197, i32 0, i32 3
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %201 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %200, i32 0, i32 1
  %202 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %201, align 8
  %203 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %204 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = load i32*, i32** %31, align 8
  %207 = call i32 @svn_wc_exclude(i32 %192, i8* %193, i32 %196, i32 %199, i32 (i32, %struct.TYPE_19__*, i32*)* %202, i32 %205, i32* %206)
  %208 = call i32 @SVN_ERR(i32 %207)
  %209 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %209, i32** %16, align 8
  br label %557

210:                                              ; preds = %185
  %211 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %212 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %211, i32 0, i32 2
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %19, align 8
  %215 = load i64, i64* @TRUE, align 8
  %216 = load i64, i64* @TRUE, align 8
  %217 = load i32*, i32** %31, align 8
  %218 = call i32 @svn_wc_read_kind2(i64* %51, i32 %213, i8* %214, i64 %215, i64 %216, i32* %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i64, i64* %51, align 8
  %221 = load i64, i64* @svn_node_dir, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %244

223:                                              ; preds = %210
  %224 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = load i8*, i8** %19, align 8
  %228 = load i32, i32* %24, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %230 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %229, i32 0, i32 4
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %233 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 1
  %237 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %236, align 8
  %238 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load i32*, i32** %31, align 8
  %242 = call i32 @svn_wc_crop_tree2(i32 %226, i8* %227, i32 %228, i32 %231, i32 %234, i32 (i32, %struct.TYPE_19__*, i32*)* %237, i32 %240, i32* %241)
  %243 = call i32 @SVN_ERR(i32 %242)
  br label %244

244:                                              ; preds = %223, %210
  br label %245

245:                                              ; preds = %244, %181, %178
  %246 = load i8*, i8** %21, align 8
  %247 = load i8*, i8** %20, align 8
  %248 = load i32*, i32** %22, align 8
  %249 = load i32*, i32** %23, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %251 = load i32*, i32** %31, align 8
  %252 = call i32 @svn_client__ra_session_from_path2(i32** %37, %struct.TYPE_21__** %36, i8* %246, i8* %247, i32* %248, i32* %249, %struct.TYPE_20__* %250, i32* %251)
  %253 = call i32 @SVN_ERR(i32 %252)
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load i8*, i8** %34, align 8
  %258 = call i32 @svn_uri__is_ancestor(i8* %256, i8* %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %268, label %260

260:                                              ; preds = %245
  %261 = load i32, i32* @SVN_ERR_WC_INVALID_SWITCH, align 4
  %262 = call i32 @_(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %263 = load i8*, i8** %34, align 8
  %264 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %265 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %264, i32 0, i32 0
  %266 = load i8*, i8** %265, align 8
  %267 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %261, i32* null, i32 %262, i8* %263, i8* %266)
  store i32* %267, i32** %16, align 8
  br label %557

268:                                              ; preds = %245
  %269 = load i64, i64* %28, align 8
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %304, label %271

271:                                              ; preds = %268
  %272 = load i8*, i8** %19, align 8
  %273 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %274 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 8
  %276 = load i32*, i32** %31, align 8
  %277 = load i32*, i32** %31, align 8
  %278 = call i32 @svn_client__wc_node_get_base(%struct.TYPE_21__** %52, i8* %272, i32 %275, i32* %276, i32* %277)
  %279 = call i32 @SVN_ERR(i32 %278)
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %281 = icmp ne %struct.TYPE_21__* %280, null
  br i1 %281, label %283, label %282

282:                                              ; preds = %271
  store %struct.TYPE_21__* null, %struct.TYPE_21__** %53, align 8
  br label %292

283:                                              ; preds = %271
  %284 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %285 = load %struct.TYPE_21__*, %struct.TYPE_21__** %52, align 8
  %286 = load i32*, i32** %37, align 8
  %287 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %288 = load i32*, i32** %31, align 8
  %289 = load i32*, i32** %31, align 8
  %290 = call i32 @svn_client__get_youngest_common_ancestor(%struct.TYPE_21__** %53, %struct.TYPE_21__* %284, %struct.TYPE_21__* %285, i32* %286, %struct.TYPE_20__* %287, i32* %288, i32* %289)
  %291 = call i32 @SVN_ERR(i32 %290)
  br label %292

292:                                              ; preds = %283, %282
  %293 = load %struct.TYPE_21__*, %struct.TYPE_21__** %53, align 8
  %294 = icmp ne %struct.TYPE_21__* %293, null
  br i1 %294, label %303, label %295

295:                                              ; preds = %292
  %296 = load i32, i32* @SVN_ERR_CLIENT_UNRELATED_RESOURCES, align 4
  %297 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %298 = load i8*, i8** %21, align 8
  %299 = load i8*, i8** %19, align 8
  %300 = load i32*, i32** %31, align 8
  %301 = call i8* @svn_dirent_local_style(i8* %299, i32* %300)
  %302 = call i32* (i32, i32*, i32, ...) @svn_error_createf(i32 %296, i32* null, i32 %297, i8* %298, i8* %301)
  store i32* %302, i32** %16, align 8
  br label %557

303:                                              ; preds = %292
  br label %304

304:                                              ; preds = %303, %268
  %305 = load i32*, i32** %31, align 8
  %306 = call i32* @apr_hash_make(i32* %305)
  store i32* %306, i32** %40, align 8
  %307 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %308 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %307, i32 0, i32 0
  %309 = load i8*, i8** %308, align 8
  %310 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %311 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %310, i32 0, i32 1
  %312 = load i8*, i8** %311, align 8
  %313 = call i64 @strcmp(i8* %309, i8* %312)
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %369

315:                                              ; preds = %304
  %316 = load i64, i64* @TRUE, align 8
  store i64 %316, i64* %55, align 8
  %317 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %318 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %317, i32 0, i32 2
  %319 = load i32, i32* %318, align 8
  %320 = load i8*, i8** %19, align 8
  %321 = load i32*, i32** %31, align 8
  %322 = call i32 @svn_wc__is_wcroot(i64* %54, i32 %319, i8* %320, i32* %321)
  %323 = call i32 @SVN_ERR(i32 %322)
  %324 = load i64, i64* %54, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %352, label %326

326:                                              ; preds = %315
  %327 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %328 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %327, i32 0, i32 2
  %329 = load i32, i32* %328, align 8
  %330 = load i8*, i8** %19, align 8
  %331 = load i32*, i32** %31, align 8
  %332 = call i8* @svn_dirent_dirname(i8* %330, i32* %331)
  %333 = load i32*, i32** %31, align 8
  %334 = load i32*, i32** %31, align 8
  %335 = call i32 @svn_wc__node_get_url(i8** %56, i32 %329, i8* %332, i32* %333, i32* %334)
  %336 = call i32 @SVN_ERR(i32 %335)
  %337 = load i8*, i8** %56, align 8
  %338 = load i8*, i8** %19, align 8
  %339 = load i32*, i32** %31, align 8
  %340 = call i8* @svn_dirent_basename(i8* %338, i32* %339)
  %341 = load i32*, i32** %31, align 8
  %342 = call i8* @svn_path_url_add_component2(i8* %337, i8* %340, i32* %341)
  store i8* %342, i8** %57, align 8
  %343 = load i8*, i8** %57, align 8
  %344 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %345 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %344, i32 0, i32 1
  %346 = load i8*, i8** %345, align 8
  %347 = call i64 @strcmp(i8* %343, i8* %346)
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %351

349:                                              ; preds = %326
  %350 = load i64, i64* @FALSE, align 8
  store i64 %350, i64* %55, align 8
  br label %351

351:                                              ; preds = %349, %326
  br label %352

352:                                              ; preds = %351, %315
  %353 = load i64, i64* %55, align 8
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %368

355:                                              ; preds = %352
  %356 = load i32*, i32** %37, align 8
  %357 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %358 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %357, i32 0, i32 2
  %359 = load i32, i32* %358, align 8
  %360 = load i32*, i32** %31, align 8
  %361 = load i32*, i32** %31, align 8
  %362 = call i32 @svn_ra_get_inherited_props(i32* %356, i32** %41, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %359, i32* %360, i32* %361)
  %363 = call i32 @SVN_ERR(i32 %362)
  %364 = load i32*, i32** %40, align 8
  %365 = load i8*, i8** %19, align 8
  %366 = load i32*, i32** %41, align 8
  %367 = call i32 @svn_hash_sets(i32* %364, i8* %365, i32* %366)
  br label %368

368:                                              ; preds = %355, %352
  br label %369

369:                                              ; preds = %368, %304
  %370 = load i32*, i32** %37, align 8
  %371 = load i8*, i8** %34, align 8
  %372 = load i32*, i32** %31, align 8
  %373 = call i32 @svn_ra_reparent(i32* %370, i8* %371, i32* %372)
  %374 = call i32 @SVN_ERR(i32 %373)
  %375 = load i32*, i32** %37, align 8
  %376 = load i32, i32* @SVN_RA_CAPABILITY_DEPTH, align 4
  %377 = load i32*, i32** %31, align 8
  %378 = call i32 @svn_ra_has_capability(i32* %375, i64* %47, i32 %376, i32* %377)
  %379 = call i32 @SVN_ERR(i32 %378)
  %380 = load i32*, i32** %37, align 8
  %381 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %48, i32 0, i32 2
  store i32* %380, i32** %381, align 8
  %382 = load i8*, i8** %34, align 8
  %383 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %48, i32 0, i32 0
  store i8* %382, i8** %383, align 8
  %384 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %385 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = getelementptr inbounds %struct.svn_client__dirent_fetcher_baton_t, %struct.svn_client__dirent_fetcher_baton_t* %48, i32 0, i32 1
  store i32 %386, i32* %387, align 8
  %388 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %389 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %388, i32 0, i32 2
  %390 = load i32, i32* %389, align 8
  %391 = load i8*, i8** %20, align 8
  %392 = load i8*, i8** %35, align 8
  %393 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %394 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %393, i32 0, i32 1
  %395 = load i8*, i8** %394, align 8
  %396 = load i32*, i32** %40, align 8
  %397 = load i64, i64* %42, align 8
  %398 = load i32, i32* %24, align 4
  %399 = load i64, i64* %25, align 8
  %400 = load i64, i64* %27, align 8
  %401 = load i64, i64* %47, align 8
  %402 = load i8*, i8** %39, align 8
  %403 = load i32*, i32** %46, align 8
  %404 = load i32, i32* @svn_client__dirent_fetcher, align 4
  %405 = load i32*, i32** %18, align 8
  %406 = icmp ne i32* %405, null
  br i1 %406, label %407, label %409

407:                                              ; preds = %369
  %408 = load i32*, i32** @record_conflict, align 8
  br label %410

409:                                              ; preds = %369
  br label %410

410:                                              ; preds = %409, %407
  %411 = phi i32* [ %408, %407 ], [ null, %409 ]
  %412 = load i32*, i32** %18, align 8
  %413 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %414 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %413, i32 0, i32 4
  %415 = load i32, i32* %414, align 8
  %416 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %417 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %416, i32 0, i32 3
  %418 = load i32, i32* %417, align 4
  %419 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %420 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %419, i32 0, i32 1
  %421 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %420, align 8
  %422 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %423 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 8
  %425 = load i32*, i32** %31, align 8
  %426 = load i32*, i32** %31, align 8
  %427 = call i32 @svn_wc__get_switch_editor(i32** %43, i8** %44, i32* %38, i32 %390, i8* %391, i8* %392, i8* %395, i32* %396, i64 %397, i32 %398, i64 %399, i64 %400, i64 %401, i8* %402, i32* %403, i32 %404, %struct.svn_client__dirent_fetcher_baton_t* %48, i32* %411, i32* %412, i32* null, i32* null, i32 %415, i32 %418, i32 (i32, %struct.TYPE_19__*, i32*)* %421, i32 %424, i32* %425, i32* %426)
  %428 = call i32 @SVN_ERR(i32 %427)
  %429 = load i32*, i32** %37, align 8
  %430 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %431 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %430, i32 0, i32 2
  %432 = load i32, i32* %431, align 8
  %433 = load i8*, i8** %35, align 8
  %434 = load i64, i64* %25, align 8
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %436, label %438

436:                                              ; preds = %410
  %437 = load i32, i32* %24, align 4
  br label %440

438:                                              ; preds = %410
  %439 = load i32, i32* @svn_depth_unknown, align 4
  br label %440

440:                                              ; preds = %438, %436
  %441 = phi i32 [ %437, %436 ], [ %439, %438 ]
  %442 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %443 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %442, i32 0, i32 1
  %444 = load i8*, i8** %443, align 8
  %445 = load i64, i64* @FALSE, align 8
  %446 = load i64, i64* %28, align 8
  %447 = load i32*, i32** %43, align 8
  %448 = load i8*, i8** %44, align 8
  %449 = load i32*, i32** %31, align 8
  %450 = load i32*, i32** %31, align 8
  %451 = call i32 @svn_ra_do_switch3(i32* %429, i32** %32, i8** %33, i32 %432, i8* %433, i32 %441, i8* %444, i64 %445, i64 %446, i32* %447, i8* %448, i32* %449, i32* %450)
  %452 = call i32 @SVN_ERR(i32 %451)
  %453 = load i64, i64* @TRUE, align 8
  %454 = load i64*, i64** %29, align 8
  store i64 %453, i64* %454, align 8
  %455 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %456 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %455, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = load i8*, i8** %19, align 8
  %459 = load i32*, i32** %32, align 8
  %460 = load i8*, i8** %33, align 8
  %461 = load i64, i64* @TRUE, align 8
  %462 = load i32, i32* %24, align 4
  %463 = load i64, i64* %25, align 8
  %464 = icmp ne i64 %463, 0
  %465 = xor i1 %464, true
  %466 = zext i1 %465 to i32
  %467 = load i64, i64* %47, align 8
  %468 = icmp ne i64 %467, 0
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = load i64, i64* %42, align 8
  %472 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %473 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %472, i32 0, i32 4
  %474 = load i32, i32* %473, align 8
  %475 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %476 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %475, i32 0, i32 3
  %477 = load i32, i32* %476, align 4
  %478 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %479 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %478, i32 0, i32 1
  %480 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %479, align 8
  %481 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %482 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %481, i32 0, i32 0
  %483 = load i32, i32* %482, align 8
  %484 = load i32*, i32** %31, align 8
  %485 = call i32 @svn_wc_crawl_revisions5(i32 %457, i8* %458, i32* %459, i8* %460, i64 %461, i32 %462, i32 %466, i32 %470, i64 %471, i32 %474, i32 %477, i32 (i32, %struct.TYPE_19__*, i32*)* %480, i32 %483, i32* %484)
  %486 = call i32 @SVN_ERR(i32 %485)
  %487 = load i32, i32* %24, align 4
  %488 = call i64 @SVN_DEPTH_IS_RECURSIVE(i32 %487)
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %516

490:                                              ; preds = %440
  %491 = load i64, i64* %26, align 8
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %516, label %493

493:                                              ; preds = %490
  %494 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %495 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = load i8*, i8** %19, align 8
  %498 = load i32, i32* %24, align 4
  %499 = load i32*, i32** %31, align 8
  %500 = load i32*, i32** %31, align 8
  %501 = call i32 @svn_wc__externals_gather_definitions(i32** %58, i32** %59, i32 %496, i8* %497, i32 %498, i32* %499, i32* %500)
  %502 = call i32 @SVN_ERR(i32 %501)
  %503 = load i32*, i32** %58, align 8
  %504 = load i32*, i32** %59, align 8
  %505 = load %struct.TYPE_21__*, %struct.TYPE_21__** %36, align 8
  %506 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %505, i32 0, i32 0
  %507 = load i8*, i8** %506, align 8
  %508 = load i8*, i8** %19, align 8
  %509 = load i32, i32* %24, align 4
  %510 = load i64*, i64** %29, align 8
  %511 = load i32*, i32** %37, align 8
  %512 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %513 = load i32*, i32** %31, align 8
  %514 = call i32 @svn_client__handle_externals(i32* %503, i32* %504, i8* %507, i8* %508, i32 %509, i64* %510, i32* %511, %struct.TYPE_20__* %512, i32* %513)
  %515 = call i32 @SVN_ERR(i32 %514)
  br label %516

516:                                              ; preds = %493, %490, %440
  %517 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %518 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %517, i32 0, i32 1
  %519 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %518, align 8
  %520 = icmp ne i32 (i32, %struct.TYPE_19__*, i32*)* %519, null
  br i1 %520, label %521, label %549

521:                                              ; preds = %516
  %522 = load i8*, i8** %20, align 8
  %523 = load i32, i32* @svn_wc_notify_update_completed, align 4
  %524 = load i32*, i32** %31, align 8
  %525 = call %struct.TYPE_19__* @svn_wc_create_notify(i8* %522, i32 %523, i32* %524)
  store %struct.TYPE_19__* %525, %struct.TYPE_19__** %60, align 8
  %526 = load i32, i32* @svn_node_none, align 4
  %527 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %528 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %527, i32 0, i32 4
  store i32 %526, i32* %528, align 4
  %529 = load i32, i32* @svn_wc_notify_state_inapplicable, align 4
  %530 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %531 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %530, i32 0, i32 2
  store i32 %529, i32* %531, align 4
  %532 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %533 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %532, i32 0, i32 3
  store i32 %529, i32* %533, align 4
  %534 = load i32, i32* @svn_wc_notify_lock_state_inapplicable, align 4
  %535 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %536 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %535, i32 0, i32 1
  store i32 %534, i32* %536, align 4
  %537 = load i32, i32* %38, align 4
  %538 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %539 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %538, i32 0, i32 0
  store i32 %537, i32* %539, align 4
  %540 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %541 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %540, i32 0, i32 1
  %542 = load i32 (i32, %struct.TYPE_19__*, i32*)*, i32 (i32, %struct.TYPE_19__*, i32*)** %541, align 8
  %543 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %544 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %543, i32 0, i32 0
  %545 = load i32, i32* %544, align 8
  %546 = load %struct.TYPE_19__*, %struct.TYPE_19__** %60, align 8
  %547 = load i32*, i32** %31, align 8
  %548 = call i32 %542(i32 %545, %struct.TYPE_19__* %546, i32* %547)
  br label %549

549:                                              ; preds = %521, %516
  %550 = load i32*, i32** %17, align 8
  %551 = icmp ne i32* %550, null
  br i1 %551, label %552, label %555

552:                                              ; preds = %549
  %553 = load i32, i32* %38, align 4
  %554 = load i32*, i32** %17, align 8
  store i32 %553, i32* %554, align 4
  br label %555

555:                                              ; preds = %552, %549
  %556 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %556, i32** %16, align 8
  br label %557

557:                                              ; preds = %555, %295, %260, %189, %171, %115, %83
  %558 = load i32*, i32** %16, align 8
  ret i32* %558
}

declare dso_local i32* @svn_hash_gets(i64, i32) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_config_get(i32*, i8**, i32, i32, i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_config_get_bool(i32*, i64*, i32, i32, i64) #1

declare dso_local i32 @svn_wc__node_has_working(i64*, i32, i8*, i32*) #1

declare dso_local i8* @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32* @svn_cstring_split(i8*, i8*, i64, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @svn_wc__node_get_url(i8**, i32, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_exclude(i32, i8*, i32, i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32*) #1

declare dso_local i32 @svn_wc_read_kind2(i64*, i32, i8*, i64, i64, i32*) #1

declare dso_local i32 @svn_wc_crop_tree2(i32, i8*, i32, i32, i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32*) #1

declare dso_local i32 @svn_client__ra_session_from_path2(i32**, %struct.TYPE_21__**, i8*, i8*, i32*, i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local i32 @svn_uri__is_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_client__wc_node_get_base(%struct.TYPE_21__**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__get_youngest_common_ancestor(%struct.TYPE_21__**, %struct.TYPE_21__*, %struct.TYPE_21__*, i32*, %struct.TYPE_20__*, i32*, i32*) #1

declare dso_local i32* @apr_hash_make(i32*) #1

declare dso_local i32 @svn_wc__is_wcroot(i64*, i32, i8*, i32*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_ra_get_inherited_props(i32*, i32**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_hash_sets(i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra_reparent(i32*, i8*, i32*) #1

declare dso_local i32 @svn_ra_has_capability(i32*, i64*, i32, i32*) #1

declare dso_local i32 @svn_wc__get_switch_editor(i32**, i8**, i32*, i32, i8*, i8*, i8*, i32*, i64, i32, i64, i64, i64, i8*, i32*, i32, %struct.svn_client__dirent_fetcher_baton_t*, i32*, i32*, i32*, i32*, i32, i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32*, i32*) #1

declare dso_local i32 @svn_ra_do_switch3(i32*, i32**, i8**, i32, i8*, i32, i8*, i64, i64, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc_crawl_revisions5(i32, i8*, i32*, i8*, i64, i32, i32, i32, i64, i32, i32, i32 (i32, %struct.TYPE_19__*, i32*)*, i32, i32*) #1

declare dso_local i64 @SVN_DEPTH_IS_RECURSIVE(i32) #1

declare dso_local i32 @svn_wc__externals_gather_definitions(i32**, i32**, i32, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_client__handle_externals(i32*, i32*, i8*, i8*, i32, i64*, i32*, %struct.TYPE_20__*, i32*) #1

declare dso_local %struct.TYPE_19__* @svn_wc_create_notify(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
