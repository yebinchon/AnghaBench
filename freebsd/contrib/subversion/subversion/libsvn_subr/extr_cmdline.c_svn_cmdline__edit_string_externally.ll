; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__edit_string_externally.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_cmdline.c_svn_cmdline__edit_string_externally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_39__ = type { i64 }
%struct.TYPE_38__ = type { i8*, i32 }
%struct.TYPE_40__ = type { i64, i64 }

@SVN_NO_ERROR = common dso_local global %struct.TYPE_39__* null, align 8
@TRUE = common dso_local global i64 0, align 8
@APR_EOL_STR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@APR_FILEPATH_NATIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't get working directory\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Can't change working directory to '%s'\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@EROFS = common dso_local global i64 0, align 8
@APR_FINFO_MTIME = common dso_local global i32 0, align 4
@APR_FINFO_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@SVN_ERR_EXTERNAL_PROGRAM = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"system('%s') returned %d\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"Error normalizing edited contents to internal format\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Can't restore working directory\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"svn: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_39__* @svn_cmdline__edit_string_externally(%struct.TYPE_38__** %0, i8** %1, i8* %2, i8* %3, %struct.TYPE_38__* %4, i8* %5, i32* %6, i64 %7, i8* %8, i32* %9) #0 {
  %11 = alloca %struct.TYPE_39__*, align 8
  %12 = alloca %struct.TYPE_38__**, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_38__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca %struct.TYPE_38__*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i32, align 4
  %31 = alloca %struct.TYPE_40__, align 8
  %32 = alloca %struct.TYPE_40__, align 8
  %33 = alloca %struct.TYPE_39__*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  store %struct.TYPE_38__** %0, %struct.TYPE_38__*** %12, align 8
  store i8** %1, i8*** %13, align 8
  store i8* %2, i8** %14, align 8
  store i8* %3, i8** %15, align 8
  store %struct.TYPE_38__* %4, %struct.TYPE_38__** %16, align 8
  store i8* %5, i8** %17, align 8
  store i32* %6, i32** %18, align 8
  store i64 %7, i64* %19, align 8
  store i8* %8, i8** %20, align 8
  store i32* %9, i32** %21, align 8
  %40 = load %struct.TYPE_39__*, %struct.TYPE_39__** @SVN_NO_ERROR, align 8
  store %struct.TYPE_39__* %40, %struct.TYPE_39__** %33, align 8
  %41 = load i64, i64* @TRUE, align 8
  store i64 %41, i64* %36, align 8
  %42 = load i8*, i8** %14, align 8
  %43 = load i32*, i32** %18, align 8
  %44 = call %struct.TYPE_39__* @find_editor_binary(i8** %22, i8* %42, i32* %43)
  %45 = call i32 @SVN_ERR(%struct.TYPE_39__* %44)
  %46 = load i64, i64* %19, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %84

48:                                               ; preds = %10
  %49 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %50 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %49, i32 0, i32 0
  %51 = load i8*, i8** %50, align 8
  %52 = load i32, i32* @APR_EOL_STR, align 4
  %53 = load i64, i64* @FALSE, align 8
  %54 = load i64, i64* @FALSE, align 8
  %55 = load i32*, i32** %21, align 8
  %56 = call %struct.TYPE_39__* @svn_subst_translate_cstring2(i8* %51, i8** %37, i32 %52, i64 %53, i32* null, i64 %54, i32* %55)
  %57 = call i32 @SVN_ERR(%struct.TYPE_39__* %56)
  %58 = load i32*, i32** %21, align 8
  %59 = call %struct.TYPE_38__* @svn_string_create_empty(i32* %58)
  store %struct.TYPE_38__* %59, %struct.TYPE_38__** %28, align 8
  %60 = load i8*, i8** %20, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %70

62:                                               ; preds = %48
  %63 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %64 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %63, i32 0, i32 0
  %65 = load i8*, i8** %37, align 8
  %66 = load i8*, i8** %20, align 8
  %67 = load i32*, i32** %21, align 8
  %68 = call %struct.TYPE_39__* @svn_utf_cstring_from_utf8_ex2(i8** %64, i8* %65, i8* %66, i32* %67)
  %69 = call i32 @SVN_ERR(%struct.TYPE_39__* %68)
  br label %77

70:                                               ; preds = %48
  %71 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %72 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %71, i32 0, i32 0
  %73 = load i8*, i8** %37, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = call %struct.TYPE_39__* @svn_utf_cstring_from_utf8(i8** %72, i8* %73, i32* %74)
  %76 = call i32 @SVN_ERR(%struct.TYPE_39__* %75)
  br label %77

77:                                               ; preds = %70, %62
  %78 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %79 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = call i32 @strlen(i8* %80)
  %82 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %83 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %10
  %85 = load %struct.TYPE_38__*, %struct.TYPE_38__** %16, align 8
  %86 = load i32*, i32** %21, align 8
  %87 = call %struct.TYPE_38__* @svn_string_dup(%struct.TYPE_38__* %85, i32* %86)
  store %struct.TYPE_38__* %87, %struct.TYPE_38__** %28, align 8
  br label %88

88:                                               ; preds = %84, %77
  %89 = load i32, i32* @APR_FILEPATH_NATIVE, align 4
  %90 = load i32*, i32** %21, align 8
  %91 = call i64 @apr_filepath_get(i8** %34, i32 %89, i32* %90)
  store i64 %91, i64* %29, align 8
  %92 = load i64, i64* %29, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load i64, i64* %29, align 8
  %96 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %97 = call %struct.TYPE_39__* (i64, i32, ...) @svn_error_wrap_apr(i64 %95, i32 %96)
  store %struct.TYPE_39__* %97, %struct.TYPE_39__** %11, align 8
  br label %330

98:                                               ; preds = %88
  %99 = load i8*, i8** %15, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 0
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %27, align 8
  br label %110

105:                                              ; preds = %98
  %106 = load i8*, i8** %15, align 8
  %107 = load i32*, i32** %21, align 8
  %108 = call %struct.TYPE_39__* @svn_path_cstring_from_utf8(i8** %27, i8* %106, i32* %107)
  %109 = call i32 @SVN_ERR(%struct.TYPE_39__* %108)
  br label %110

110:                                              ; preds = %105, %104
  %111 = load i8*, i8** %27, align 8
  %112 = load i32*, i32** %21, align 8
  %113 = call i64 @apr_filepath_set(i8* %111, i32* %112)
  store i64 %113, i64* %29, align 8
  %114 = load i64, i64* %29, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %110
  %117 = load i64, i64* %29, align 8
  %118 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %119 = load i8*, i8** %15, align 8
  %120 = call %struct.TYPE_39__* (i64, i32, ...) @svn_error_wrap_apr(i64 %117, i32 %118, i8* %119)
  store %struct.TYPE_39__* %120, %struct.TYPE_39__** %11, align 8
  br label %330

121:                                              ; preds = %110
  %122 = load i8*, i8** %17, align 8
  %123 = load i32, i32* @svn_io_file_del_none, align 4
  %124 = load i32*, i32** %21, align 8
  %125 = load i32*, i32** %21, align 8
  %126 = call %struct.TYPE_39__* @svn_io_open_uniquely_named(i32** %24, i8** %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %122, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32* %124, i32* %125)
  store %struct.TYPE_39__* %126, %struct.TYPE_39__** %33, align 8
  %127 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %128 = icmp ne %struct.TYPE_39__* %127, null
  br i1 %128, label %129, label %167

129:                                              ; preds = %121
  %130 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %131 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = call i64 @APR_STATUS_IS_EACCES(i64 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %129
  %136 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %137 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @EROFS, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %167

141:                                              ; preds = %135, %129
  %142 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %143 = call i32 @svn_error_clear(%struct.TYPE_39__* %142)
  %144 = load i32*, i32** %21, align 8
  %145 = call %struct.TYPE_39__* @svn_io_temp_dir(i8** %15, i32* %144)
  %146 = call i32 @SVN_ERR(%struct.TYPE_39__* %145)
  %147 = load i8*, i8** %15, align 8
  %148 = load i32*, i32** %21, align 8
  %149 = call %struct.TYPE_39__* @svn_path_cstring_from_utf8(i8** %38, i8* %147, i32* %148)
  %150 = call i32 @SVN_ERR(%struct.TYPE_39__* %149)
  %151 = load i8*, i8** %38, align 8
  %152 = load i32*, i32** %21, align 8
  %153 = call i64 @apr_filepath_set(i8* %151, i32* %152)
  store i64 %153, i64* %29, align 8
  %154 = load i64, i64* %29, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %161

156:                                              ; preds = %141
  %157 = load i64, i64* %29, align 8
  %158 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %159 = load i8*, i8** %15, align 8
  %160 = call %struct.TYPE_39__* (i64, i32, ...) @svn_error_wrap_apr(i64 %157, i32 %158, i8* %159)
  store %struct.TYPE_39__* %160, %struct.TYPE_39__** %11, align 8
  br label %330

161:                                              ; preds = %141
  %162 = load i8*, i8** %17, align 8
  %163 = load i32, i32* @svn_io_file_del_none, align 4
  %164 = load i32*, i32** %21, align 8
  %165 = load i32*, i32** %21, align 8
  %166 = call %struct.TYPE_39__* @svn_io_open_uniquely_named(i32** %24, i8** %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i8* %162, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %163, i32* %164, i32* %165)
  store %struct.TYPE_39__* %166, %struct.TYPE_39__** %33, align 8
  br label %167

167:                                              ; preds = %161, %135, %121
  %168 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %169 = icmp ne %struct.TYPE_39__* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %314

171:                                              ; preds = %167
  %172 = load i32*, i32** %24, align 8
  %173 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %174 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %173, i32 0, i32 0
  %175 = load i8*, i8** %174, align 8
  %176 = load %struct.TYPE_38__*, %struct.TYPE_38__** %28, align 8
  %177 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 8
  %179 = load i32*, i32** %21, align 8
  %180 = call %struct.TYPE_39__* @svn_io_file_write_full(i32* %172, i8* %175, i32 %178, i32* %30, i32* %179)
  store %struct.TYPE_39__* %180, %struct.TYPE_39__** %33, align 8
  %181 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %182 = load i32*, i32** %24, align 8
  %183 = load i32*, i32** %21, align 8
  %184 = call i32 @svn_io_file_close(i32* %182, i32* %183)
  %185 = call %struct.TYPE_39__* @svn_error_compose_create(%struct.TYPE_39__* %181, i32 %184)
  store %struct.TYPE_39__* %185, %struct.TYPE_39__** %33, align 8
  %186 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %187 = icmp ne %struct.TYPE_39__* %186, null
  br i1 %187, label %188, label %189

188:                                              ; preds = %171
  br label %303

189:                                              ; preds = %171
  %190 = load i8*, i8** %25, align 8
  %191 = load i32, i32* @APR_FINFO_MTIME, align 4
  %192 = load i32*, i32** %21, align 8
  %193 = call %struct.TYPE_39__* @svn_io_stat(%struct.TYPE_40__* %31, i8* %190, i32 %191, i32* %192)
  store %struct.TYPE_39__* %193, %struct.TYPE_39__** %33, align 8
  %194 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %195 = icmp ne %struct.TYPE_39__* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %189
  br label %303

197:                                              ; preds = %189
  %198 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i64 @apr_time_from_sec(i32 2)
  %201 = sub nsw i64 %199, %200
  %202 = load i8*, i8** %25, align 8
  %203 = load i32*, i32** %21, align 8
  %204 = call %struct.TYPE_39__* @svn_io_set_file_affected_time(i64 %201, i8* %202, i32* %203)
  store %struct.TYPE_39__* %204, %struct.TYPE_39__** %33, align 8
  %205 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %206 = call i32 @svn_error_clear(%struct.TYPE_39__* %205)
  %207 = load i8*, i8** %25, align 8
  %208 = load i32, i32* @APR_FINFO_MTIME, align 4
  %209 = load i32, i32* @APR_FINFO_SIZE, align 4
  %210 = or i32 %208, %209
  %211 = load i32*, i32** %21, align 8
  %212 = call %struct.TYPE_39__* @svn_io_stat(%struct.TYPE_40__* %31, i8* %207, i32 %210, i32* %211)
  store %struct.TYPE_39__* %212, %struct.TYPE_39__** %33, align 8
  %213 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %214 = icmp ne %struct.TYPE_39__* %213, null
  br i1 %214, label %215, label %216

215:                                              ; preds = %197
  br label %303

216:                                              ; preds = %197
  %217 = load i8*, i8** %25, align 8
  %218 = load i32*, i32** %21, align 8
  %219 = call %struct.TYPE_39__* @svn_utf_cstring_from_utf8(i8** %26, i8* %217, i32* %218)
  store %struct.TYPE_39__* %219, %struct.TYPE_39__** %33, align 8
  %220 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %221 = icmp ne %struct.TYPE_39__* %220, null
  br i1 %221, label %222, label %223

222:                                              ; preds = %216
  br label %303

223:                                              ; preds = %216
  %224 = load i32*, i32** %21, align 8
  %225 = load i8*, i8** %22, align 8
  %226 = load i8*, i8** %26, align 8
  %227 = call i8* @apr_psprintf(i32* %224, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i8* %225, i8* %226)
  store i8* %227, i8** %23, align 8
  %228 = load i8**, i8*** %13, align 8
  %229 = icmp ne i8** %228, null
  br i1 %229, label %230, label %237

230:                                              ; preds = %223
  %231 = load i8*, i8** %15, align 8
  %232 = load i8*, i8** %25, align 8
  %233 = load i32*, i32** %21, align 8
  %234 = call i8* @svn_dirent_join(i8* %231, i8* %232, i32* %233)
  %235 = load i8**, i8*** %13, align 8
  store i8* %234, i8** %235, align 8
  %236 = load i64, i64* @FALSE, align 8
  store i64 %236, i64* %36, align 8
  br label %237

237:                                              ; preds = %230, %223
  %238 = load i8*, i8** %23, align 8
  %239 = call i32 @system(i8* %238)
  store i32 %239, i32* %35, align 4
  %240 = load i32, i32* %35, align 4
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %248

242:                                              ; preds = %237
  %243 = load i32, i32* @SVN_ERR_EXTERNAL_PROGRAM, align 4
  %244 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0))
  %245 = load i8*, i8** %23, align 8
  %246 = load i32, i32* %35, align 4
  %247 = call %struct.TYPE_39__* @svn_error_createf(i32 %243, i32* null, i32 %244, i8* %245, i32 %246)
  store %struct.TYPE_39__* %247, %struct.TYPE_39__** %33, align 8
  br label %303

248:                                              ; preds = %237
  %249 = load i8*, i8** %25, align 8
  %250 = load i32, i32* @APR_FINFO_MTIME, align 4
  %251 = load i32, i32* @APR_FINFO_SIZE, align 4
  %252 = or i32 %250, %251
  %253 = load i32*, i32** %21, align 8
  %254 = call %struct.TYPE_39__* @svn_io_stat(%struct.TYPE_40__* %32, i8* %249, i32 %252, i32* %253)
  store %struct.TYPE_39__* %254, %struct.TYPE_39__** %33, align 8
  %255 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %256 = icmp ne %struct.TYPE_39__* %255, null
  br i1 %256, label %257, label %258

257:                                              ; preds = %248
  br label %303

258:                                              ; preds = %248
  %259 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %32, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %260, %262
  br i1 %263, label %270, label %264

264:                                              ; preds = %258
  %265 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %31, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %32, i32 0, i32 1
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %266, %268
  br i1 %269, label %270, label %300

270:                                              ; preds = %264, %258
  %271 = load i8*, i8** %25, align 8
  %272 = load i32*, i32** %21, align 8
  %273 = call %struct.TYPE_39__* @svn_stringbuf_from_file2(i32** %39, i8* %271, i32* %272)
  store %struct.TYPE_39__* %273, %struct.TYPE_39__** %33, align 8
  %274 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %275 = icmp ne %struct.TYPE_39__* %274, null
  br i1 %275, label %276, label %277

276:                                              ; preds = %270
  br label %303

277:                                              ; preds = %270
  %278 = load i32*, i32** %39, align 8
  %279 = call %struct.TYPE_38__* @svn_stringbuf__morph_into_string(i32* %278)
  %280 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  store %struct.TYPE_38__* %279, %struct.TYPE_38__** %280, align 8
  %281 = load i64, i64* %19, align 8
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %299

283:                                              ; preds = %277
  %284 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  %285 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  %286 = load %struct.TYPE_38__*, %struct.TYPE_38__** %285, align 8
  %287 = load i8*, i8** %20, align 8
  %288 = load i64, i64* @FALSE, align 8
  %289 = load i32*, i32** %21, align 8
  %290 = load i32*, i32** %21, align 8
  %291 = call %struct.TYPE_39__* @svn_subst_translate_string2(%struct.TYPE_38__** %284, i32* null, i32* null, %struct.TYPE_38__* %286, i8* %287, i64 %288, i32* %289, i32* %290)
  store %struct.TYPE_39__* %291, %struct.TYPE_39__** %33, align 8
  %292 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %293 = icmp ne %struct.TYPE_39__* %292, null
  br i1 %293, label %294, label %298

294:                                              ; preds = %283
  %295 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %296 = call i32 @_(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0))
  %297 = call %struct.TYPE_39__* @svn_error_quick_wrap(%struct.TYPE_39__* %295, i32 %296)
  store %struct.TYPE_39__* %297, %struct.TYPE_39__** %33, align 8
  br label %303

298:                                              ; preds = %283
  br label %299

299:                                              ; preds = %298, %277
  br label %302

300:                                              ; preds = %264
  %301 = load %struct.TYPE_38__**, %struct.TYPE_38__*** %12, align 8
  store %struct.TYPE_38__* null, %struct.TYPE_38__** %301, align 8
  br label %302

302:                                              ; preds = %300, %299
  br label %303

303:                                              ; preds = %302, %294, %276, %257, %242, %222, %215, %196, %188
  %304 = load i64, i64* %36, align 8
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %313

306:                                              ; preds = %303
  %307 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %308 = load i8*, i8** %25, align 8
  %309 = load i64, i64* @FALSE, align 8
  %310 = load i32*, i32** %21, align 8
  %311 = call i32 @svn_io_remove_file2(i8* %308, i64 %309, i32* %310)
  %312 = call %struct.TYPE_39__* @svn_error_compose_create(%struct.TYPE_39__* %307, i32 %311)
  store %struct.TYPE_39__* %312, %struct.TYPE_39__** %33, align 8
  br label %313

313:                                              ; preds = %306, %303
  br label %314

314:                                              ; preds = %313, %170
  %315 = load i8*, i8** %34, align 8
  %316 = load i32*, i32** %21, align 8
  %317 = call i64 @apr_filepath_set(i8* %315, i32* %316)
  store i64 %317, i64* %29, align 8
  %318 = load i64, i64* %29, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %327

320:                                              ; preds = %314
  %321 = load i64, i64* %29, align 8
  %322 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %323 = call %struct.TYPE_39__* (i64, i32, ...) @svn_error_wrap_apr(i64 %321, i32 %322)
  %324 = load i32, i32* @stderr, align 4
  %325 = load i64, i64* @TRUE, align 8
  %326 = call i32 @svn_handle_error2(%struct.TYPE_39__* %323, i32 %324, i64 %325, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0))
  br label %327

327:                                              ; preds = %320, %314
  %328 = load %struct.TYPE_39__*, %struct.TYPE_39__** %33, align 8
  %329 = call %struct.TYPE_39__* @svn_error_trace(%struct.TYPE_39__* %328)
  store %struct.TYPE_39__* %329, %struct.TYPE_39__** %11, align 8
  br label %330

330:                                              ; preds = %327, %156, %116, %94
  %331 = load %struct.TYPE_39__*, %struct.TYPE_39__** %11, align 8
  ret %struct.TYPE_39__* %331
}

declare dso_local i32 @SVN_ERR(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_39__* @find_editor_binary(i8**, i8*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_subst_translate_cstring2(i8*, i8**, i32, i64, i32*, i64, i32*) #1

declare dso_local %struct.TYPE_38__* @svn_string_create_empty(i32*) #1

declare dso_local %struct.TYPE_39__* @svn_utf_cstring_from_utf8_ex2(i8**, i8*, i8*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_utf_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.TYPE_38__* @svn_string_dup(%struct.TYPE_38__*, i32*) #1

declare dso_local i64 @apr_filepath_get(i8**, i32, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_error_wrap_apr(i64, i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.TYPE_39__* @svn_path_cstring_from_utf8(i8**, i8*, i32*) #1

declare dso_local i64 @apr_filepath_set(i8*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_io_open_uniquely_named(i32**, i8**, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i64 @APR_STATUS_IS_EACCES(i64) #1

declare dso_local i32 @svn_error_clear(%struct.TYPE_39__*) #1

declare dso_local %struct.TYPE_39__* @svn_io_temp_dir(i8**, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_io_file_write_full(i32*, i8*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_error_compose_create(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_io_stat(%struct.TYPE_40__*, i8*, i32, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_io_set_file_affected_time(i64, i8*, i32*) #1

declare dso_local i64 @apr_time_from_sec(i32) #1

declare dso_local i8* @apr_psprintf(i32*, i8*, i8*, i8*) #1

declare dso_local i8* @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @system(i8*) #1

declare dso_local %struct.TYPE_39__* @svn_error_createf(i32, i32*, i32, i8*, i32) #1

declare dso_local %struct.TYPE_39__* @svn_stringbuf_from_file2(i32**, i8*, i32*) #1

declare dso_local %struct.TYPE_38__* @svn_stringbuf__morph_into_string(i32*) #1

declare dso_local %struct.TYPE_39__* @svn_subst_translate_string2(%struct.TYPE_38__**, i32*, i32*, %struct.TYPE_38__*, i8*, i64, i32*, i32*) #1

declare dso_local %struct.TYPE_39__* @svn_error_quick_wrap(%struct.TYPE_39__*, i32) #1

declare dso_local i32 @svn_io_remove_file2(i8*, i64, i32*) #1

declare dso_local i32 @svn_handle_error2(%struct.TYPE_39__*, i32, i64, i8*) #1

declare dso_local %struct.TYPE_39__* @svn_error_trace(%struct.TYPE_39__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
