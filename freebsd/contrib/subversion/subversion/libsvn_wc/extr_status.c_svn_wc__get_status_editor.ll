; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc__get_status_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_status.c_svn_wc__get_status_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32 }
%struct.edit_baton = type { i8*, i32, i32*, i32, %struct.TYPE_16__, i8*, i8*, i8*, i32, i8*, i32, i8*, i8*, i32, i32*, i32 }
%struct.TYPE_16__ = type { i32, i32, i32*, i32*, i8*, i32, i32 }
%struct.svn_wc__shim_fetch_baton_t = type { i8*, i8*, i32 }
%struct.TYPE_18__ = type { %struct.svn_wc__shim_fetch_baton_t*, i32, i32, i32 }

@FALSE = common dso_local global i8* null, align 8
@set_target_revision = common dso_local global i32 0, align 4
@open_root = common dso_local global i32 0, align 4
@delete_entry = common dso_local global i32 0, align 4
@add_directory = common dso_local global i32 0, align 4
@open_directory = common dso_local global i32 0, align 4
@change_dir_prop = common dso_local global i32 0, align 4
@close_directory = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4
@svn_wc__fetch_kind_func = common dso_local global i32 0, align 4
@svn_wc__fetch_props_func = common dso_local global i32 0, align 4
@svn_wc__fetch_base_func = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_status_editor(%struct.TYPE_19__** %0, i8** %1, i8** %2, i32* %3, %struct.TYPE_17__* %4, i8* %5, i8* %6, i32 %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i32* %13, i32 %14, i8* %15, i32 %16, i8* %17, i32* %18, i32* %19) #0 {
  %21 = alloca %struct.TYPE_19__**, align 8
  %22 = alloca i8**, align 8
  %23 = alloca i8**, align 8
  %24 = alloca i32*, align 8
  %25 = alloca %struct.TYPE_17__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32, align 4
  %36 = alloca i8*, align 8
  %37 = alloca i32, align 4
  %38 = alloca i8*, align 8
  %39 = alloca i32*, align 8
  %40 = alloca i32*, align 8
  %41 = alloca %struct.edit_baton*, align 8
  %42 = alloca %struct.TYPE_19__*, align 8
  %43 = alloca i8*, align 8
  %44 = alloca %struct.svn_wc__shim_fetch_baton_t*, align 8
  %45 = alloca %struct.TYPE_19__*, align 8
  %46 = alloca %struct.TYPE_18__*, align 8
  %47 = alloca i32*, align 8
  store %struct.TYPE_19__** %0, %struct.TYPE_19__*** %21, align 8
  store i8** %1, i8*** %22, align 8
  store i8** %2, i8*** %23, align 8
  store i32* %3, i32** %24, align 8
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %25, align 8
  store i8* %5, i8** %26, align 8
  store i8* %6, i8** %27, align 8
  store i32 %7, i32* %28, align 4
  store i8* %8, i8** %29, align 8
  store i8* %9, i8** %30, align 8
  store i8* %10, i8** %31, align 8
  store i8* %11, i8** %32, align 8
  store i8* %12, i8** %33, align 8
  store i32* %13, i32** %34, align 8
  store i32 %14, i32* %35, align 4
  store i8* %15, i8** %36, align 8
  store i32 %16, i32* %37, align 4
  store i8* %17, i8** %38, align 8
  store i32* %18, i32** %39, align 8
  store i32* %19, i32** %40, align 8
  %48 = load i32*, i32** %39, align 8
  %49 = call %struct.TYPE_19__* @svn_delta_default_editor(i32* %48)
  store %struct.TYPE_19__* %49, %struct.TYPE_19__** %42, align 8
  %50 = load i32*, i32** %39, align 8
  %51 = call %struct.TYPE_18__* @svn_delta_shim_callbacks_default(i32* %50)
  store %struct.TYPE_18__* %51, %struct.TYPE_18__** %46, align 8
  %52 = load i32*, i32** %39, align 8
  %53 = call %struct.edit_baton* @apr_pcalloc(i32* %52, i32 160)
  store %struct.edit_baton* %53, %struct.edit_baton** %41, align 8
  %54 = load i32, i32* %28, align 4
  %55 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %56 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %55, i32 0, i32 15
  store i32 %54, i32* %56, align 8
  %57 = load i32*, i32** %24, align 8
  %58 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %59 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %58, i32 0, i32 14
  store i32* %57, i32** %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %64 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %63, i32 0, i32 13
  store i32 %62, i32* %64, align 8
  %65 = load i8*, i8** %29, align 8
  %66 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %67 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %66, i32 0, i32 12
  store i8* %65, i8** %67, align 8
  %68 = load i8*, i8** %31, align 8
  %69 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %70 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %69, i32 0, i32 11
  store i8* %68, i8** %70, align 8
  %71 = load i32, i32* %35, align 4
  %72 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %73 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %72, i32 0, i32 10
  store i32 %71, i32* %73, align 8
  %74 = load i8*, i8** %36, align 8
  %75 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %76 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %75, i32 0, i32 9
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* %37, align 4
  %78 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %79 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %78, i32 0, i32 8
  store i32 %77, i32* %79, align 8
  %80 = load i8*, i8** %38, align 8
  %81 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %82 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = load i32*, i32** %39, align 8
  %84 = load i8*, i8** %26, align 8
  %85 = call i8* @apr_pstrdup(i32* %83, i8* %84)
  %86 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %87 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %86, i32 0, i32 0
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %26, align 8
  %89 = load i8*, i8** %27, align 8
  %90 = load i32*, i32** %39, align 8
  %91 = call i32 @svn_dirent_join(i8* %88, i8* %89, i32* %90)
  %92 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %93 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 8
  %94 = load i32*, i32** %39, align 8
  %95 = load i8*, i8** %27, align 8
  %96 = call i8* @apr_pstrdup(i32* %94, i8* %95)
  %97 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %98 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %97, i32 0, i32 6
  store i8* %96, i8** %98, align 8
  %99 = load i8*, i8** @FALSE, align 8
  %100 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %101 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %100, i32 0, i32 5
  store i8* %99, i8** %101, align 8
  %102 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %103 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %106 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %105, i32 0, i32 4
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 6
  store i32 %104, i32* %107, align 4
  %108 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %109 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %112 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %111, i32 0, i32 4
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 5
  store i32 %110, i32* %113, align 8
  %114 = load i8*, i8** %30, align 8
  %115 = icmp ne i8* %114, null
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %119 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %118, i32 0, i32 4
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load i8*, i8** %30, align 8
  %122 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %123 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %122, i32 0, i32 4
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 4
  store i8* %121, i8** %124, align 8
  %125 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %126 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %125, i32 0, i32 4
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  store i32* null, i32** %127, align 8
  %128 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %129 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %128, i32 0, i32 4
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  store i32* null, i32** %130, align 8
  %131 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %132 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %131, i32 0, i32 4
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %138 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 8
  %140 = load i32*, i32** %39, align 8
  %141 = load i32*, i32** %40, align 8
  %142 = call i32 @svn_wc__db_externals_defined_below(i32* %133, i32 %136, i32 %139, i32* %140, i32* %141)
  %143 = call i32 @SVN_ERR(i32 %142)
  %144 = load i32*, i32** %34, align 8
  %145 = icmp ne i32* %144, null
  br i1 %145, label %146, label %150

146:                                              ; preds = %20
  %147 = load i32*, i32** %34, align 8
  %148 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %149 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %148, i32 0, i32 2
  store i32* %147, i32** %149, align 8
  br label %157

150:                                              ; preds = %20
  %151 = load i32*, i32** %39, align 8
  %152 = call i32 @svn_wc_get_default_ignores(i32** %47, i32* null, i32* %151)
  %153 = call i32 @SVN_ERR(i32 %152)
  %154 = load i32*, i32** %47, align 8
  %155 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %156 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %155, i32 0, i32 2
  store i32* %154, i32** %156, align 8
  br label %157

157:                                              ; preds = %150, %146
  %158 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %159 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %158, i32 0, i32 1
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i8*, i8** %26, align 8
  %164 = load i8*, i8** %30, align 8
  %165 = load i32*, i32** %39, align 8
  %166 = load i32*, i32** %40, align 8
  %167 = call i32 @internal_status(i32* %159, i32 %162, i8* %163, i8* %164, i32* %165, i32* %166)
  %168 = call i32 @SVN_ERR(i32 %167)
  %169 = load i32, i32* @set_target_revision, align 4
  %170 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %171 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %170, i32 0, i32 12
  store i32 %169, i32* %171, align 4
  %172 = load i32, i32* @open_root, align 4
  %173 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 11
  store i32 %172, i32* %174, align 4
  %175 = load i32, i32* @delete_entry, align 4
  %176 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %177 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %176, i32 0, i32 10
  store i32 %175, i32* %177, align 4
  %178 = load i32, i32* @add_directory, align 4
  %179 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %180 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %179, i32 0, i32 9
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @open_directory, align 4
  %182 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %183 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %182, i32 0, i32 8
  store i32 %181, i32* %183, align 4
  %184 = load i32, i32* @change_dir_prop, align 4
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %186 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %185, i32 0, i32 7
  store i32 %184, i32* %186, align 4
  %187 = load i32, i32* @close_directory, align 4
  %188 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %189 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %188, i32 0, i32 6
  store i32 %187, i32* %189, align 4
  %190 = load i32, i32* @add_file, align 4
  %191 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %192 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %191, i32 0, i32 5
  store i32 %190, i32* %192, align 4
  %193 = load i32, i32* @open_file, align 4
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %195 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %194, i32 0, i32 4
  store i32 %193, i32* %195, align 4
  %196 = load i32, i32* @apply_textdelta, align 4
  %197 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %198 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %197, i32 0, i32 3
  store i32 %196, i32* %198, align 4
  %199 = load i32, i32* @change_file_prop, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* @close_file, align 4
  %203 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %204 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %203, i32 0, i32 1
  store i32 %202, i32* %204, align 4
  %205 = load i32, i32* @close_edit, align 4
  %206 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  %207 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %206, i32 0, i32 0
  store i32 %205, i32* %207, align 4
  %208 = load %struct.TYPE_19__*, %struct.TYPE_19__** %42, align 8
  store %struct.TYPE_19__* %208, %struct.TYPE_19__** %45, align 8
  %209 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %210 = bitcast %struct.edit_baton* %209 to i8*
  store i8* %210, i8** %43, align 8
  %211 = load i8*, i8** %33, align 8
  %212 = icmp ne i8* %211, null
  br i1 %212, label %227, label %213

213:                                              ; preds = %157
  %214 = load i8*, i8** %32, align 8
  %215 = icmp ne i8* %214, null
  br i1 %215, label %227, label %216

216:                                              ; preds = %213
  %217 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %218 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = load i8*, i8** %26, align 8
  %221 = load i8*, i8** %27, align 8
  %222 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %223 = load i8*, i8** %43, align 8
  %224 = load i32*, i32** %39, align 8
  %225 = call i32 @svn_wc__ambient_depth_filter_editor(%struct.TYPE_19__** %45, i8** %43, i32 %219, i8* %220, i8* %221, %struct.TYPE_19__* %222, i8* %223, i32* %224)
  %226 = call i32 @SVN_ERR(i32 %225)
  br label %227

227:                                              ; preds = %216, %213, %157
  %228 = load i32, i32* %37, align 4
  %229 = load i8*, i8** %38, align 8
  %230 = load %struct.TYPE_19__*, %struct.TYPE_19__** %45, align 8
  %231 = load i8*, i8** %43, align 8
  %232 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %21, align 8
  %233 = load i8**, i8*** %22, align 8
  %234 = load i32*, i32** %39, align 8
  %235 = call i32 @svn_delta_get_cancellation_editor(i32 %228, i8* %229, %struct.TYPE_19__* %230, i8* %231, %struct.TYPE_19__** %232, i8** %233, i32* %234)
  %236 = call i32 @SVN_ERR(i32 %235)
  %237 = load i8**, i8*** %23, align 8
  %238 = icmp ne i8** %237, null
  br i1 %238, label %239, label %243

239:                                              ; preds = %227
  %240 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %241 = bitcast %struct.edit_baton* %240 to i8*
  %242 = load i8**, i8*** %23, align 8
  store i8* %241, i8** %242, align 8
  br label %243

243:                                              ; preds = %239, %227
  %244 = load i32*, i32** %39, align 8
  %245 = call %struct.svn_wc__shim_fetch_baton_t* @apr_palloc(i32* %244, i32 24)
  store %struct.svn_wc__shim_fetch_baton_t* %245, %struct.svn_wc__shim_fetch_baton_t** %44, align 8
  %246 = load %struct.TYPE_17__*, %struct.TYPE_17__** %25, align 8
  %247 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %44, align 8
  %250 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %249, i32 0, i32 2
  store i32 %248, i32* %250, align 8
  %251 = load %struct.edit_baton*, %struct.edit_baton** %41, align 8
  %252 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %44, align 8
  %255 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %254, i32 0, i32 1
  store i8* %253, i8** %255, align 8
  %256 = load i8*, i8** @FALSE, align 8
  %257 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %44, align 8
  %258 = getelementptr inbounds %struct.svn_wc__shim_fetch_baton_t, %struct.svn_wc__shim_fetch_baton_t* %257, i32 0, i32 0
  store i8* %256, i8** %258, align 8
  %259 = load i32, i32* @svn_wc__fetch_kind_func, align 4
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 3
  store i32 %259, i32* %261, align 8
  %262 = load i32, i32* @svn_wc__fetch_props_func, align 4
  %263 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %264 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %263, i32 0, i32 2
  store i32 %262, i32* %264, align 4
  %265 = load i32, i32* @svn_wc__fetch_base_func, align 4
  %266 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %267 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %266, i32 0, i32 1
  store i32 %265, i32* %267, align 8
  %268 = load %struct.svn_wc__shim_fetch_baton_t*, %struct.svn_wc__shim_fetch_baton_t** %44, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 0
  store %struct.svn_wc__shim_fetch_baton_t* %268, %struct.svn_wc__shim_fetch_baton_t** %270, align 8
  %271 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %21, align 8
  %272 = load i8**, i8*** %22, align 8
  %273 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %21, align 8
  %274 = load %struct.TYPE_19__*, %struct.TYPE_19__** %273, align 8
  %275 = load i8**, i8*** %22, align 8
  %276 = load i8*, i8** %275, align 8
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %46, align 8
  %278 = load i32*, i32** %39, align 8
  %279 = load i32*, i32** %40, align 8
  %280 = call i32 @svn_editor__insert_shims(%struct.TYPE_19__** %271, i8** %272, %struct.TYPE_19__* %274, i8* %276, i32* null, i32* null, %struct.TYPE_18__* %277, i32* %278, i32* %279)
  %281 = call i32 @SVN_ERR(i32 %280)
  %282 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %282
}

declare dso_local %struct.TYPE_19__* @svn_delta_default_editor(i32*) #1

declare dso_local %struct.TYPE_18__* @svn_delta_shim_callbacks_default(i32*) #1

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i32 @svn_dirent_join(i8*, i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_externals_defined_below(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc_get_default_ignores(i32**, i32*, i32*) #1

declare dso_local i32 @internal_status(i32*, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__ambient_depth_filter_editor(%struct.TYPE_19__**, i8**, i32, i8*, i8*, %struct.TYPE_19__*, i8*, i32*) #1

declare dso_local i32 @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_19__*, i8*, %struct.TYPE_19__**, i8**, i32*) #1

declare dso_local %struct.svn_wc__shim_fetch_baton_t* @apr_palloc(i32*, i32) #1

declare dso_local i32 @svn_editor__insert_shims(%struct.TYPE_19__**, i8**, %struct.TYPE_19__*, i8*, i32*, i32*, %struct.TYPE_18__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
