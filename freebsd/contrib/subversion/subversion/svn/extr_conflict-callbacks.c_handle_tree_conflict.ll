; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_tree_conflict.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/svn/extr_conflict-callbacks.c_handle_tree_conflict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.client_option_t = type { i64, i32 }
%struct.TYPE_13__ = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@svn_client_conflict_option_unspecified = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"%s\0A%s\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Tree conflict on '%s':\0A%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Applying recommended resolution '%s':\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE = common dso_local global i64 0, align 8
@SVN_ERR_WC_OBSTRUCTED_UPDATE = common dso_local global i64 0, align 8
@SVN_ERR_WC_FOUND_CONFLICT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [124 x i8] c"\0ASubversion is not smart enough to resolve this tree conflict automatically!\0ASee 'svn help resolve' for more information.\0A\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Ambiguous move destinations exist in the repository; try the 'd' option\0A\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"Ambiguous move destinations exist in the working copy; try the 'w' option\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"q\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@svn_client_conflict_option_incoming_move_file_text_merge = common dso_local global i32 0, align 4
@svn_client_conflict_option_incoming_move_dir_merge = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@svn_client_conflict_option_undefined = common dso_local global i64 0, align 8
@svn_client_conflict_option_postpone = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*, i32*, i32*)* @handle_tree_conflict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @handle_tree_conflict(i32* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5, i32* %6, i32* %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_14__*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca %struct.TYPE_14__*, align 8
  %30 = alloca %struct.TYPE_14__*, align 8
  %31 = alloca i32, align 4
  %32 = alloca %struct.client_option_t*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32*, align 8
  %36 = alloca i64, align 8
  %37 = alloca %struct.TYPE_13__*, align 8
  %38 = alloca i32, align 4
  %39 = alloca %struct.TYPE_14__*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca i32, align 4
  %42 = alloca %struct.TYPE_14__*, align 8
  %43 = alloca i32*, align 8
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32* %3, i32** %15, align 8
  store i32* %4, i32** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i32* %7, i32** %19, align 8
  store i32* %8, i32** %20, align 8
  store i32* %9, i32** %21, align 8
  %44 = load i32, i32* @FALSE, align 4
  store i32 %44, i32* %33, align 4
  %45 = load i32, i32* @FALSE, align 4
  store i32 %45, i32* %34, align 4
  %46 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  store i64 %46, i64* %24, align 8
  %47 = load i32*, i32** %16, align 8
  %48 = call i8* @svn_client_conflict_get_local_abspath(i32* %47)
  store i8* %48, i8** %25, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = load i32*, i32** %21, align 8
  %52 = call i32* @svn_client_conflict_tree_get_details(i32* %49, i32* %50, i32* %51)
  %53 = call i32 @SVN_ERR(i32* %52)
  %54 = load i32*, i32** %16, align 8
  %55 = load i32*, i32** %20, align 8
  %56 = load i32*, i32** %21, align 8
  %57 = load i32*, i32** %21, align 8
  %58 = call i32* @svn_client_conflict_tree_get_description(i8** %28, i8** %27, i32* %54, i32* %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32* %58)
  %60 = load i32*, i32** %21, align 8
  %61 = load i8*, i8** %28, align 8
  %62 = load i8*, i8** %27, align 8
  %63 = call i8* @apr_psprintf(i32* %60, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %61, i8* %62)
  store i8* %63, i8** %26, align 8
  %64 = load i32*, i32** %15, align 8
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %10
  %68 = load i32, i32* @stderr, align 4
  %69 = load i32*, i32** %21, align 8
  %70 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %71 = load i8*, i8** %17, align 8
  %72 = load i8*, i8** %25, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = call i32 @svn_cl__local_style_skip_ancestor(i8* %71, i8* %72, i32* %73)
  %75 = load i8*, i8** %26, align 8
  %76 = call i32* (i32, i32*, i32, ...) @svn_cmdline_fprintf(i32 %68, i32* %69, i32 %70, i32 %74, i8* %75)
  %77 = call i32 @SVN_ERR(i32* %76)
  br label %78

78:                                               ; preds = %67, %10
  %79 = load i32*, i32** %16, align 8
  %80 = load i32*, i32** %20, align 8
  %81 = load i32*, i32** %21, align 8
  %82 = load i32*, i32** %21, align 8
  %83 = call i32* @build_tree_conflict_options(%struct.TYPE_14__** %23, %struct.TYPE_14__** %29, %struct.TYPE_14__** %30, i32* %31, i32* %79, i32* %80, i32* %81, i32* %82)
  %84 = call i32 @SVN_ERR(i32* %83)
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %86 = call %struct.client_option_t* @find_recommended_option(%struct.TYPE_14__* %85)
  store %struct.client_option_t* %86, %struct.client_option_t** %32, align 8
  %87 = load %struct.client_option_t*, %struct.client_option_t** %32, align 8
  %88 = icmp ne %struct.client_option_t* %87, null
  br i1 %88, label %89, label %136

89:                                               ; preds = %78
  %90 = load i32*, i32** %21, align 8
  %91 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.client_option_t*, %struct.client_option_t** %32, align 8
  %93 = getelementptr inbounds %struct.client_option_t, %struct.client_option_t* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32* (i32*, i32, ...) @svn_cmdline_printf(i32* %90, i32 %91, i32 %94)
  %96 = call i32 @SVN_ERR(i32* %95)
  %97 = load i32*, i32** %16, align 8
  %98 = load %struct.client_option_t*, %struct.client_option_t** %32, align 8
  %99 = getelementptr inbounds %struct.client_option_t, %struct.client_option_t* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i32, i32* @FALSE, align 4
  %102 = load i32, i32* @TRUE, align 4
  %103 = load i8*, i8** %17, align 8
  %104 = load i32*, i32** %19, align 8
  %105 = load i32*, i32** %20, align 8
  %106 = load i32*, i32** %21, align 8
  %107 = call i32* @mark_conflict_resolved(i32* %97, i64 %100, i32 %101, i32* null, i32 %102, i8* %103, i32* %104, i32* %105, i32* %106)
  store i32* %107, i32** %35, align 8
  %108 = load i32*, i32** %35, align 8
  %109 = icmp ne i32* %108, null
  br i1 %109, label %114, label %110

110:                                              ; preds = %89
  %111 = load i32, i32* @TRUE, align 4
  %112 = load i32*, i32** %12, align 8
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %113, i32** %11, align 8
  br label %360

114:                                              ; preds = %89
  %115 = load i32*, i32** %35, align 8
  %116 = call %struct.TYPE_15__* @svn_error_root_cause(i32* %115)
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  store i64 %118, i64* %36, align 8
  %119 = load i64, i64* %36, align 8
  %120 = load i64, i64* @SVN_ERR_WC_CONFLICT_RESOLVER_FAILURE, align 8
  %121 = icmp ne i64 %119, %120
  br i1 %121, label %122, label %133

122:                                              ; preds = %114
  %123 = load i64, i64* %36, align 8
  %124 = load i64, i64* @SVN_ERR_WC_OBSTRUCTED_UPDATE, align 8
  %125 = icmp ne i64 %123, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %122
  %127 = load i64, i64* %36, align 8
  %128 = load i64, i64* @SVN_ERR_WC_FOUND_CONFLICT, align 8
  %129 = icmp ne i64 %127, %128
  br i1 %129, label %130, label %133

130:                                              ; preds = %126
  %131 = load i32*, i32** %35, align 8
  %132 = call i32* @svn_error_trace(i32* %131)
  store i32* %132, i32** %11, align 8
  br label %360

133:                                              ; preds = %126, %122, %114
  %134 = load i32*, i32** %35, align 8
  %135 = call i32 @svn_error_clear(i32* %134)
  br label %136

136:                                              ; preds = %133, %78
  %137 = load i32, i32* %31, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %145

139:                                              ; preds = %136
  %140 = load i32, i32* @stderr, align 4
  %141 = load i32*, i32** %21, align 8
  %142 = call i32 @_(i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.3, i64 0, i64 0))
  %143 = call i32* (i32, i32*, i32, ...) @svn_cmdline_fprintf(i32 %140, i32* %141, i32 %142)
  %144 = call i32 @SVN_ERR(i32* %143)
  br label %145

145:                                              ; preds = %139, %136
  %146 = load i32*, i32** %21, align 8
  %147 = call i32* @svn_pool_create(i32* %146)
  store i32* %147, i32** %22, align 8
  br label %148

148:                                              ; preds = %145, %193, %264, %312, %326
  %149 = load i32*, i32** %22, align 8
  %150 = call i32 @svn_pool_clear(i32* %149)
  %151 = load i32, i32* %33, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %166, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %155 = icmp ne %struct.TYPE_14__* %154, null
  br i1 %155, label %156, label %166

156:                                              ; preds = %153
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %166

161:                                              ; preds = %156
  %162 = load i32*, i32** %21, align 8
  %163 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %164 = call i32* (i32*, i32, ...) @svn_cmdline_printf(i32* %162, i32 %163)
  %165 = call i32 @SVN_ERR(i32* %164)
  br label %166

166:                                              ; preds = %161, %156, %153, %148
  %167 = load i32, i32* %34, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %182, label %169

169:                                              ; preds = %166
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %171 = icmp ne %struct.TYPE_14__* %170, null
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = icmp sgt i32 %175, 1
  br i1 %176, label %177, label %182

177:                                              ; preds = %172
  %178 = load i32*, i32** %21, align 8
  %179 = call i32 @_(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %180 = call i32* (i32*, i32, ...) @svn_cmdline_printf(i32* %178, i32 %179)
  %181 = call i32 @SVN_ERR(i32* %180)
  br label %182

182:                                              ; preds = %177, %172, %169, %166
  %183 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  %184 = load i8*, i8** %26, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = load i32*, i32** %22, align 8
  %187 = call i32* @prompt_user(%struct.TYPE_13__** %37, %struct.TYPE_14__* %183, i32* null, i8* %184, i32* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32* %187)
  %189 = load i32, i32* @TRUE, align 4
  %190 = load i32*, i32** %15, align 8
  store i32 %189, i32* %190, align 4
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %192 = icmp ne %struct.TYPE_13__* %191, null
  br i1 %192, label %194, label %193

193:                                              ; preds = %182
  br label %148

194:                                              ; preds = %182
  %195 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = call i64 @strcmp(i32 %197, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %199 = icmp eq i64 %198, 0
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %24, align 8
  %204 = load i32, i32* @TRUE, align 4
  %205 = load i32*, i32** %14, align 8
  store i32 %204, i32* %205, align 4
  br label %327

206:                                              ; preds = %194
  %207 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = call i64 @strcmp(i32 %209, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %211 = icmp eq i64 %210, 0
  br i1 %211, label %212, label %265

212:                                              ; preds = %206
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %29, align 8
  %214 = load i32, i32* @FALSE, align 4
  %215 = load i32*, i32** %18, align 8
  %216 = load i8*, i8** %25, align 8
  %217 = load i32*, i32** %20, align 8
  %218 = load i32*, i32** %22, align 8
  %219 = call i32* @prompt_move_target_path(i32* %38, %struct.TYPE_14__* %213, i32 %214, i32* %215, i8* %216, i32* %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32* %219)
  %221 = load i32*, i32** %16, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = load i32*, i32** %22, align 8
  %224 = load i32*, i32** %22, align 8
  %225 = call i32* @svn_client_conflict_tree_get_resolution_options(%struct.TYPE_14__** %39, i32* %221, i32* %222, i32* %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32* %225)
  %227 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %228 = load i32, i32* @svn_client_conflict_option_incoming_move_file_text_merge, align 4
  %229 = call i32* @svn_client_conflict_option_find_by_id(%struct.TYPE_14__* %227, i32 %228)
  store i32* %229, i32** %40, align 8
  %230 = load i32*, i32** %40, align 8
  %231 = icmp eq i32* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %212
  %233 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %234 = load i32, i32* @svn_client_conflict_option_incoming_move_dir_merge, align 4
  %235 = call i32* @svn_client_conflict_option_find_by_id(%struct.TYPE_14__* %233, i32 %234)
  store i32* %235, i32** %40, align 8
  br label %236

236:                                              ; preds = %232, %212
  %237 = load i32*, i32** %40, align 8
  %238 = icmp ne i32* %237, null
  br i1 %238, label %239, label %264

239:                                              ; preds = %236
  %240 = load i32*, i32** %40, align 8
  %241 = load i32, i32* %38, align 4
  %242 = load i32*, i32** %20, align 8
  %243 = load i32*, i32** %22, align 8
  %244 = call i32* @svn_client_conflict_option_set_moved_to_repos_relpath(i32* %240, i32 %241, i32* %242, i32* %243)
  %245 = call i32 @SVN_ERR(i32* %244)
  %246 = load i32, i32* @TRUE, align 4
  store i32 %246, i32* %33, align 4
  %247 = load i32, i32* @FALSE, align 4
  store i32 %247, i32* %34, align 4
  %248 = load i32*, i32** %16, align 8
  %249 = load i32*, i32** %20, align 8
  %250 = load i32*, i32** %21, align 8
  %251 = load i32*, i32** %21, align 8
  %252 = call i32* @build_tree_conflict_options(%struct.TYPE_14__** %23, %struct.TYPE_14__** %29, %struct.TYPE_14__** %30, i32* null, i32* %248, i32* %249, i32* %250, i32* %251)
  %253 = call i32 @SVN_ERR(i32* %252)
  %254 = load i32*, i32** %16, align 8
  %255 = load i32*, i32** %20, align 8
  %256 = load i32*, i32** %21, align 8
  %257 = load i32*, i32** %21, align 8
  %258 = call i32* @svn_client_conflict_tree_get_description(i8** %28, i8** %27, i32* %254, i32* %255, i32* %256, i32* %257)
  %259 = call i32 @SVN_ERR(i32* %258)
  %260 = load i32*, i32** %21, align 8
  %261 = load i8*, i8** %28, align 8
  %262 = load i8*, i8** %27, align 8
  %263 = call i8* @apr_psprintf(i32* %260, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %261, i8* %262)
  store i8* %263, i8** %26, align 8
  br label %264

264:                                              ; preds = %239, %236
  br label %148

265:                                              ; preds = %206
  %266 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %267 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i64 @strcmp(i32 %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0))
  %270 = icmp eq i64 %269, 0
  br i1 %270, label %271, label %313

271:                                              ; preds = %265
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %273 = load i32, i32* @TRUE, align 4
  %274 = load i32*, i32** %18, align 8
  %275 = load i8*, i8** %25, align 8
  %276 = load i32*, i32** %20, align 8
  %277 = load i32*, i32** %22, align 8
  %278 = call i32* @prompt_move_target_path(i32* %41, %struct.TYPE_14__* %272, i32 %273, i32* %274, i8* %275, i32* %276, i32* %277)
  %279 = call i32 @SVN_ERR(i32* %278)
  %280 = load i32*, i32** %16, align 8
  %281 = load i32*, i32** %20, align 8
  %282 = load i32*, i32** %22, align 8
  %283 = load i32*, i32** %22, align 8
  %284 = call i32* @svn_client_conflict_tree_get_resolution_options(%struct.TYPE_14__** %42, i32* %280, i32* %281, i32* %282, i32* %283)
  %285 = call i32 @SVN_ERR(i32* %284)
  %286 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %287 = load i32, i32* @svn_client_conflict_option_incoming_move_file_text_merge, align 4
  %288 = call i32* @svn_client_conflict_option_find_by_id(%struct.TYPE_14__* %286, i32 %287)
  store i32* %288, i32** %43, align 8
  %289 = load i32*, i32** %43, align 8
  %290 = icmp eq i32* %289, null
  br i1 %290, label %291, label %295

291:                                              ; preds = %271
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %293 = load i32, i32* @svn_client_conflict_option_incoming_move_dir_merge, align 4
  %294 = call i32* @svn_client_conflict_option_find_by_id(%struct.TYPE_14__* %292, i32 %293)
  store i32* %294, i32** %43, align 8
  br label %295

295:                                              ; preds = %291, %271
  %296 = load i32*, i32** %43, align 8
  %297 = icmp ne i32* %296, null
  br i1 %297, label %298, label %312

298:                                              ; preds = %295
  %299 = load i32*, i32** %43, align 8
  %300 = load i32, i32* %41, align 4
  %301 = load i32*, i32** %20, align 8
  %302 = load i32*, i32** %22, align 8
  %303 = call i32* @svn_client_conflict_option_set_moved_to_abspath(i32* %299, i32 %300, i32* %301, i32* %302)
  %304 = call i32 @SVN_ERR(i32* %303)
  %305 = load i32, i32* @TRUE, align 4
  store i32 %305, i32* %34, align 4
  %306 = load i32*, i32** %16, align 8
  %307 = load i32*, i32** %20, align 8
  %308 = load i32*, i32** %21, align 8
  %309 = load i32*, i32** %21, align 8
  %310 = call i32* @build_tree_conflict_options(%struct.TYPE_14__** %23, %struct.TYPE_14__** %29, %struct.TYPE_14__** %30, i32* null, i32* %306, i32* %307, i32* %308, i32* %309)
  %311 = call i32 @SVN_ERR(i32* %310)
  br label %312

312:                                              ; preds = %298, %295
  br label %148

313:                                              ; preds = %265
  %314 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %315 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load i64, i64* @svn_client_conflict_option_undefined, align 8
  %318 = icmp ne i64 %316, %317
  br i1 %318, label %319, label %323

319:                                              ; preds = %313
  %320 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %321 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  store i64 %322, i64* %24, align 8
  br label %327

323:                                              ; preds = %313
  br label %324

324:                                              ; preds = %323
  br label %325

325:                                              ; preds = %324
  br label %326

326:                                              ; preds = %325
  br label %148

327:                                              ; preds = %319, %200
  %328 = load i32*, i32** %22, align 8
  %329 = call i32 @svn_pool_destroy(i32* %328)
  %330 = load i64, i64* %24, align 8
  %331 = load i64, i64* @svn_client_conflict_option_unspecified, align 8
  %332 = icmp ne i64 %330, %331
  br i1 %332, label %333, label %350

333:                                              ; preds = %327
  %334 = load i64, i64* %24, align 8
  %335 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %336 = icmp ne i64 %334, %335
  br i1 %336, label %337, label %350

337:                                              ; preds = %333
  %338 = load i32*, i32** %16, align 8
  %339 = load i64, i64* %24, align 8
  %340 = load i32, i32* @FALSE, align 4
  %341 = load i32, i32* @TRUE, align 4
  %342 = load i8*, i8** %17, align 8
  %343 = load i32*, i32** %19, align 8
  %344 = load i32*, i32** %20, align 8
  %345 = load i32*, i32** %21, align 8
  %346 = call i32* @mark_conflict_resolved(i32* %338, i64 %339, i32 %340, i32* null, i32 %341, i8* %342, i32* %343, i32* %344, i32* %345)
  %347 = call i32 @SVN_ERR(i32* %346)
  %348 = load i32, i32* @TRUE, align 4
  %349 = load i32*, i32** %12, align 8
  store i32 %348, i32* %349, align 4
  br label %358

350:                                              ; preds = %333, %327
  %351 = load i32, i32* @FALSE, align 4
  %352 = load i32*, i32** %12, align 8
  store i32 %351, i32* %352, align 4
  %353 = load i64, i64* %24, align 8
  %354 = load i64, i64* @svn_client_conflict_option_postpone, align 8
  %355 = icmp eq i64 %353, %354
  %356 = zext i1 %355 to i32
  %357 = load i32*, i32** %13, align 8
  store i32 %356, i32* %357, align 4
  br label %358

358:                                              ; preds = %350, %337
  %359 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %359, i32** %11, align 8
  br label %360

360:                                              ; preds = %358, %130, %110
  %361 = load i32*, i32** %11, align 8
  ret i32* %361
}

declare dso_local i8* @svn_client_conflict_get_local_abspath(i32*) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_client_conflict_tree_get_details(i32*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_tree_get_description(i8**, i8**, i32*, i32*, i32*, i32*) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i32* @svn_cmdline_fprintf(i32, i32*, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_cl__local_style_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32* @build_tree_conflict_options(%struct.TYPE_14__**, %struct.TYPE_14__**, %struct.TYPE_14__**, i32*, i32*, i32*, i32*, i32*) #1

declare dso_local %struct.client_option_t* @find_recommended_option(%struct.TYPE_14__*) #1

declare dso_local i32* @svn_cmdline_printf(i32*, i32, ...) #1

declare dso_local i32* @mark_conflict_resolved(i32*, i64, i32, i32*, i32, i8*, i32*, i32*, i32*) #1

declare dso_local %struct.TYPE_15__* @svn_error_root_cause(i32*) #1

declare dso_local i32* @svn_error_trace(i32*) #1

declare dso_local i32 @svn_error_clear(i32*) #1

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @prompt_user(%struct.TYPE_13__**, %struct.TYPE_14__*, i32*, i8*, i32*, i32*) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32* @prompt_move_target_path(i32*, %struct.TYPE_14__*, i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_tree_get_resolution_options(%struct.TYPE_14__**, i32*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_option_find_by_id(%struct.TYPE_14__*, i32) #1

declare dso_local i32* @svn_client_conflict_option_set_moved_to_repos_relpath(i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_client_conflict_option_set_moved_to_abspath(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
