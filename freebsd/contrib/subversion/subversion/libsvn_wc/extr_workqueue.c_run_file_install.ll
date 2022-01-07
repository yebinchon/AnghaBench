; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_file_install.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_workqueue.c_run_file_install.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }

@SVN_ERR_WC_CORRUPT_TEXT_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"Can't install '%s' from pristine store, because no checksum is recorded for this file\00", align 1
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4
@SVN_PROP_EXECUTABLE = common dso_local global i32 0, align 4
@SVN_PROP_NEEDS_LOCK = common dso_local global i32 0, align 4
@svn_wc__db_status_added = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32*, %struct.TYPE_6__*, i8*, i32, i8*, i32*)* @run_file_install to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @run_file_install(i32* %0, i32* %1, %struct.TYPE_6__* %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.TYPE_6__*, align 8
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32*, align 8
  %29 = alloca i64, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i32*, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %11, align 8
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %16, align 8
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 2
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  store %struct.TYPE_6__* %48, %struct.TYPE_6__** %17, align 8
  %49 = load i32*, i32** %15, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i8* @apr_pstrmemdup(i32* %49, i32 %52, i32 %55)
  store i8* %56, i8** %18, align 8
  %57 = load i32*, i32** %10, align 8
  %58 = load i8*, i8** %12, align 8
  %59 = load i8*, i8** %18, align 8
  %60 = load i32*, i32** %15, align 8
  %61 = load i32*, i32** %15, align 8
  %62 = call i32 @svn_wc__db_from_relpath(i8** %19, i32* %57, i8* %58, i8* %59, i32* %60, i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = call i32 @svn_skel__parse_int(i64* %29, %struct.TYPE_6__* %66, i32* %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i64, i64* %29, align 8
  %71 = icmp ne i64 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, i32* %20, align 4
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @svn_skel__parse_int(i64* %29, %struct.TYPE_6__* %77, i32* %78)
  %80 = call i32 @SVN_ERR(i32 %79)
  %81 = load i64, i64* %29, align 8
  %82 = icmp ne i64 %81, 0
  %83 = zext i1 %82 to i32
  store i32 %83, i32* %21, align 4
  %84 = load i32*, i32** %10, align 8
  %85 = load i8*, i8** %19, align 8
  %86 = load i8*, i8** %12, align 8
  %87 = load i32*, i32** %15, align 8
  %88 = load i32*, i32** %15, align 8
  %89 = call i32 @svn_wc__db_read_node_install_info(i8** %30, i32** %32, i32** %33, i64* %34, i32* %84, i8* %85, i8* %86, i32* %87, i32* %88)
  %90 = call i32 @SVN_ERR(i32 %89)
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = icmp ne %struct.TYPE_6__* %91, null
  br i1 %92, label %93, label %109

93:                                               ; preds = %7
  %94 = load i32*, i32** %15, align 8
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = call i8* @apr_pstrmemdup(i32* %94, i32 %97, i32 %100)
  store i8* %101, i8** %18, align 8
  %102 = load i32*, i32** %10, align 8
  %103 = load i8*, i8** %12, align 8
  %104 = load i8*, i8** %18, align 8
  %105 = load i32*, i32** %15, align 8
  %106 = load i32*, i32** %15, align 8
  %107 = call i32 @svn_wc__db_from_relpath(i8** %31, i32* %102, i8* %103, i8* %104, i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  br label %127

109:                                              ; preds = %7
  %110 = load i32*, i32** %32, align 8
  %111 = icmp ne i32* %110, null
  br i1 %111, label %119, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @SVN_ERR_WC_CORRUPT_TEXT_BASE, align 4
  %114 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %115 = load i8*, i8** %19, align 8
  %116 = load i32*, i32** %15, align 8
  %117 = call i32 @svn_dirent_local_style(i8* %115, i32* %116)
  %118 = call i32* @svn_error_createf(i32 %113, i32* null, i32 %114, i32 %117)
  store i32* %118, i32** %8, align 8
  br label %265

119:                                              ; preds = %109
  %120 = load i8*, i8** %30, align 8
  %121 = load i32*, i32** %32, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %15, align 8
  %124 = call i32 @svn_wc__db_pristine_get_future_path(i8** %31, i8* %120, i32* %121, i32* %122, i32* %123)
  %125 = call i32 @SVN_ERR(i32 %124)
  br label %126

126:                                              ; preds = %119
  br label %127

127:                                              ; preds = %126, %93
  %128 = load i8*, i8** %31, align 8
  %129 = load i32*, i32** %15, align 8
  %130 = load i32*, i32** %15, align 8
  %131 = call i32 @svn_stream_open_readonly(i32** %23, i8* %128, i32* %129, i32* %130)
  %132 = call i32 @SVN_ERR(i32 %131)
  %133 = load i32*, i32** %10, align 8
  %134 = load i8*, i8** %19, align 8
  %135 = load i32*, i32** %33, align 8
  %136 = load i32, i32* @FALSE, align 4
  %137 = load i32*, i32** %15, align 8
  %138 = load i32*, i32** %15, align 8
  %139 = call i32 @svn_wc__get_translate_info(i32* %24, i8** %25, i32** %26, i32* %22, i32* %133, i8* %134, i32* %135, i32 %136, i32* %137, i32* %138)
  %140 = call i32 @SVN_ERR(i32 %139)
  %141 = load i32, i32* %22, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %157

143:                                              ; preds = %127
  %144 = load i8*, i8** %19, align 8
  %145 = load i32*, i32** %15, align 8
  %146 = load i32*, i32** %15, align 8
  %147 = call i32 @svn_subst_create_specialfile(i32** %28, i8* %144, i32* %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  %149 = load i32*, i32** %23, align 8
  %150 = load i32*, i32** %28, align 8
  %151 = load i32, i32* %13, align 4
  %152 = load i8*, i8** %14, align 8
  %153 = load i32*, i32** %15, align 8
  %154 = call i32 @svn_stream_copy3(i32* %149, i32* %150, i32 %151, i8* %152, i32* %153)
  %155 = call i32 @SVN_ERR(i32 %154)
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %8, align 8
  br label %265

157:                                              ; preds = %127
  %158 = load i32, i32* %24, align 4
  %159 = load i8*, i8** %25, align 8
  %160 = load i32*, i32** %26, align 8
  %161 = load i32, i32* @FALSE, align 4
  %162 = load i32, i32* @TRUE, align 4
  %163 = call i64 @svn_subst_translation_required(i32 %158, i8* %159, i32* %160, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %157
  %166 = load i32*, i32** %23, align 8
  %167 = load i8*, i8** %25, align 8
  %168 = load i32, i32* @TRUE, align 4
  %169 = load i32*, i32** %26, align 8
  %170 = load i32, i32* @TRUE, align 4
  %171 = load i32*, i32** %15, align 8
  %172 = call i32* @svn_subst_stream_translated(i32* %166, i8* %167, i32 %168, i32* %169, i32 %170, i32* %171)
  store i32* %172, i32** %23, align 8
  br label %173

173:                                              ; preds = %165, %157
  %174 = load i32*, i32** %10, align 8
  %175 = load i8*, i8** %30, align 8
  %176 = load i32*, i32** %15, align 8
  %177 = load i32*, i32** %15, align 8
  %178 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %27, i32* %174, i8* %175, i32* %176, i32* %177)
  %179 = call i32 @SVN_ERR(i32 %178)
  %180 = load i8*, i8** %27, align 8
  %181 = load i32*, i32** %15, align 8
  %182 = load i32*, i32** %15, align 8
  %183 = call i32 @svn_stream__create_for_install(i32** %28, i8* %180, i32* %181, i32* %182)
  %184 = call i32 @SVN_ERR(i32 %183)
  %185 = load i32*, i32** %23, align 8
  %186 = load i32*, i32** %28, align 8
  %187 = load i32, i32* %13, align 4
  %188 = load i8*, i8** %14, align 8
  %189 = load i32*, i32** %15, align 8
  %190 = call i32 @svn_stream_copy3(i32* %185, i32* %186, i32 %187, i8* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i32*, i32** %28, align 8
  %193 = load i8*, i8** %19, align 8
  %194 = load i32, i32* @TRUE, align 4
  %195 = load i32*, i32** %15, align 8
  %196 = call i32 @svn_stream__install_stream(i32* %192, i8* %193, i32 %194, i32* %195)
  %197 = call i32 @SVN_ERR(i32 %196)
  %198 = load i32*, i32** %33, align 8
  %199 = icmp ne i32* %198, null
  br i1 %199, label %200, label %212

200:                                              ; preds = %173
  %201 = load i32*, i32** %33, align 8
  %202 = load i32, i32* @SVN_PROP_EXECUTABLE, align 4
  %203 = call i64 @svn_hash_gets(i32* %201, i32 %202)
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %212

205:                                              ; preds = %200
  %206 = load i8*, i8** %19, align 8
  %207 = load i32, i32* @TRUE, align 4
  %208 = load i32, i32* @FALSE, align 4
  %209 = load i32*, i32** %15, align 8
  %210 = call i32 @svn_io_set_file_executable(i8* %206, i32 %207, i32 %208, i32* %209)
  %211 = call i32 @SVN_ERR(i32 %210)
  br label %212

212:                                              ; preds = %205, %200, %173
  %213 = load i32*, i32** %33, align 8
  %214 = icmp ne i32* %213, null
  br i1 %214, label %215, label %240

215:                                              ; preds = %212
  %216 = load i32*, i32** %33, align 8
  %217 = load i32, i32* @SVN_PROP_NEEDS_LOCK, align 4
  %218 = call i64 @svn_hash_gets(i32* %216, i32 %217)
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %240

220:                                              ; preds = %215
  %221 = load i32*, i32** %10, align 8
  %222 = load i8*, i8** %19, align 8
  %223 = load i32*, i32** %15, align 8
  %224 = load i32*, i32** %15, align 8
  %225 = call i32 @svn_wc__db_read_info(i64* %35, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32** %36, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %221, i8* %222, i32* %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  %227 = load i32*, i32** %36, align 8
  %228 = icmp ne i32* %227, null
  br i1 %228, label %239, label %229

229:                                              ; preds = %220
  %230 = load i64, i64* %35, align 8
  %231 = load i64, i64* @svn_wc__db_status_added, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %239

233:                                              ; preds = %229
  %234 = load i8*, i8** %19, align 8
  %235 = load i32, i32* @FALSE, align 4
  %236 = load i32*, i32** %15, align 8
  %237 = call i32 @svn_io_set_file_read_only(i8* %234, i32 %235, i32* %236)
  %238 = call i32 @SVN_ERR(i32 %237)
  br label %239

239:                                              ; preds = %233, %229, %220
  br label %240

240:                                              ; preds = %239, %215, %212
  %241 = load i32, i32* %20, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %253

243:                                              ; preds = %240
  %244 = load i64, i64* %34, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %252

246:                                              ; preds = %243
  %247 = load i64, i64* %34, align 8
  %248 = load i8*, i8** %19, align 8
  %249 = load i32*, i32** %15, align 8
  %250 = call i32 @svn_io_set_file_affected_time(i64 %247, i8* %248, i32* %249)
  %251 = call i32 @SVN_ERR(i32 %250)
  br label %252

252:                                              ; preds = %246, %243
  br label %253

253:                                              ; preds = %252, %240
  %254 = load i32, i32* %21, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %253
  %257 = load i32*, i32** %9, align 8
  %258 = load i8*, i8** %19, align 8
  %259 = load i32, i32* @FALSE, align 4
  %260 = load i32*, i32** %15, align 8
  %261 = call i32 @get_and_record_fileinfo(i32* %257, i8* %258, i32 %259, i32* %260)
  %262 = call i32 @SVN_ERR(i32 %261)
  br label %263

263:                                              ; preds = %256, %253
  %264 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %264, i32** %8, align 8
  br label %265

265:                                              ; preds = %263, %143, %112
  %266 = load i32*, i32** %8, align 8
  ret i32* %266
}

declare dso_local i8* @apr_pstrmemdup(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_from_relpath(i8**, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_skel__parse_int(i64*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @svn_wc__db_read_node_install_info(i8**, i32**, i32**, i64*, i32*, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @svn_dirent_local_style(i8*, i32*) #1

declare dso_local i32 @svn_wc__db_pristine_get_future_path(i8**, i8*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_translate_info(i32*, i8**, i32**, i32*, i32*, i8*, i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_create_specialfile(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i64 @svn_subst_translation_required(i32, i8*, i32*, i32, i32) #1

declare dso_local i32* @svn_subst_stream_translated(i32*, i8*, i32, i32*, i32, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream__create_for_install(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream__install_stream(i32*, i8*, i32, i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i32) #1

declare dso_local i32 @svn_io_set_file_executable(i8*, i32, i32, i32*) #1

declare dso_local i32 @svn_wc__db_read_info(i64*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_io_set_file_read_only(i8*, i32, i32*) #1

declare dso_local i32 @svn_io_set_file_affected_time(i64, i8*, i32*) #1

declare dso_local i32 @get_and_record_fileinfo(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
