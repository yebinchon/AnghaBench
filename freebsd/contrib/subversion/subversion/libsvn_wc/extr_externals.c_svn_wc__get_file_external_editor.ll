; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__get_file_external_editor.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_externals.c_svn_wc__get_file_external_editor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i8* }
%struct.edit_baton = type { i8*, i8*, i32, i8*, i32, i8*, i32, i8*, i32, i8*, i8*, i8*, i8*, i8*, i32*, i32, i32*, i8*, i8*, i8*, i8*, i32*, i8*, i32, i8*, i32*, i32* }

@SVN_INVALID_REVNUM = common dso_local global i8* null, align 8
@svn_opt_revision_number = common dso_local global i64 0, align 8
@open_root = common dso_local global i32 0, align 4
@set_target_revision = common dso_local global i32 0, align 4
@add_file = common dso_local global i32 0, align 4
@open_file = common dso_local global i32 0, align 4
@apply_textdelta = common dso_local global i32 0, align 4
@change_file_prop = common dso_local global i32 0, align 4
@close_file = common dso_local global i32 0, align 4
@close_edit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__get_file_external_editor(%struct.TYPE_15__** %0, i8** %1, i32* %2, %struct.TYPE_13__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i32* %9, i32 %10, i8* %11, i32* %12, i8* %13, i8* %14, %struct.TYPE_14__* %15, %struct.TYPE_14__* %16, i32 %17, i8* %18, i32 %19, i8* %20, i32 %21, i8* %22, i32* %23, i32* %24) #0 {
  %26 = alloca %struct.TYPE_15__**, align 8
  %27 = alloca i8**, align 8
  %28 = alloca i32*, align 8
  %29 = alloca %struct.TYPE_13__*, align 8
  %30 = alloca i8*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i32, align 4
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca %struct.TYPE_14__*, align 8
  %42 = alloca %struct.TYPE_14__*, align 8
  %43 = alloca i32, align 4
  %44 = alloca i8*, align 8
  %45 = alloca i32, align 4
  %46 = alloca i8*, align 8
  %47 = alloca i32, align 4
  %48 = alloca i8*, align 8
  %49 = alloca i32*, align 8
  %50 = alloca i32*, align 8
  %51 = alloca i32*, align 8
  %52 = alloca i32*, align 8
  %53 = alloca %struct.edit_baton*, align 8
  %54 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_15__** %0, %struct.TYPE_15__*** %26, align 8
  store i8** %1, i8*** %27, align 8
  store i32* %2, i32** %28, align 8
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %29, align 8
  store i8* %4, i8** %30, align 8
  store i8* %5, i8** %31, align 8
  store i8* %6, i8** %32, align 8
  store i8* %7, i8** %33, align 8
  store i8* %8, i8** %34, align 8
  store i32* %9, i32** %35, align 8
  store i32 %10, i32* %36, align 4
  store i8* %11, i8** %37, align 8
  store i32* %12, i32** %38, align 8
  store i8* %13, i8** %39, align 8
  store i8* %14, i8** %40, align 8
  store %struct.TYPE_14__* %15, %struct.TYPE_14__** %41, align 8
  store %struct.TYPE_14__* %16, %struct.TYPE_14__** %42, align 8
  store i32 %17, i32* %43, align 4
  store i8* %18, i8** %44, align 8
  store i32 %19, i32* %45, align 4
  store i8* %20, i8** %46, align 8
  store i32 %21, i32* %47, align 4
  store i8* %22, i8** %48, align 8
  store i32* %23, i32** %49, align 8
  store i32* %24, i32** %50, align 8
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  store i32* %57, i32** %51, align 8
  %58 = load i32*, i32** %49, align 8
  store i32* %58, i32** %52, align 8
  %59 = load i32*, i32** %52, align 8
  %60 = call %struct.edit_baton* @apr_pcalloc(i32* %59, i32 216)
  store %struct.edit_baton* %60, %struct.edit_baton** %53, align 8
  %61 = load i32*, i32** %52, align 8
  %62 = call %struct.TYPE_15__* @svn_delta_default_editor(i32* %61)
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %54, align 8
  %63 = load i32*, i32** %52, align 8
  %64 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %65 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %64, i32 0, i32 26
  store i32* %63, i32** %65, align 8
  %66 = load i32*, i32** %51, align 8
  %67 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %68 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %67, i32 0, i32 25
  store i32* %66, i32** %68, align 8
  %69 = load i32*, i32** %52, align 8
  %70 = load i8*, i8** %30, align 8
  %71 = call i8* @apr_pstrdup(i32* %69, i8* %70)
  %72 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %73 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %72, i32 0, i32 22
  store i8* %71, i8** %73, align 8
  %74 = load i8*, i8** %31, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %82

76:                                               ; preds = %25
  %77 = load i32*, i32** %52, align 8
  %78 = load i8*, i8** %31, align 8
  %79 = call i8* @apr_pstrdup(i32* %77, i8* %78)
  %80 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %81 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %80, i32 0, i32 24
  store i8* %79, i8** %81, align 8
  br label %88

82:                                               ; preds = %25
  %83 = load i8*, i8** %30, align 8
  %84 = load i32*, i32** %52, align 8
  %85 = call i8* @svn_dirent_dirname(i8* %83, i32* %84)
  %86 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %87 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %86, i32 0, i32 24
  store i8* %85, i8** %87, align 8
  br label %88

88:                                               ; preds = %82, %76
  %89 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %90 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %89, i32 0, i32 22
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @svn_dirent_basename(i8* %91, i32* null)
  %93 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %94 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %93, i32 0, i32 23
  store i32 %92, i32* %94, align 8
  %95 = load i32*, i32** %28, align 8
  %96 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %97 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %96, i32 0, i32 21
  store i32* %95, i32** %97, align 8
  %98 = load i32*, i32** %52, align 8
  %99 = load i8*, i8** %33, align 8
  %100 = call i8* @apr_pstrdup(i32* %98, i8* %99)
  %101 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %102 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  %103 = load i32*, i32** %52, align 8
  %104 = load i8*, i8** %34, align 8
  %105 = call i8* @apr_pstrdup(i32* %103, i8* %104)
  %106 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %107 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %106, i32 0, i32 20
  store i8* %105, i8** %107, align 8
  %108 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %109 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %108, i32 0, i32 0
  %110 = load i8*, i8** %109, align 8
  %111 = load i8*, i8** %32, align 8
  %112 = load i32*, i32** %52, align 8
  %113 = call i8* @svn_uri_skip_ancestor(i8* %110, i8* %111, i32* %112)
  %114 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %115 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %114, i32 0, i32 18
  store i8* %113, i8** %115, align 8
  %116 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %117 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %116, i32 0, i32 18
  %118 = load i8*, i8** %117, align 8
  %119 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %120 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %119, i32 0, i32 19
  store i8* %118, i8** %120, align 8
  %121 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %122 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %123 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %122, i32 0, i32 17
  store i8* %121, i8** %123, align 8
  %124 = load i32*, i32** %35, align 8
  %125 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %126 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %125, i32 0, i32 16
  store i32* %124, i32** %126, align 8
  %127 = load i32, i32* %36, align 4
  %128 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %129 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %128, i32 0, i32 15
  store i32 %127, i32* %129, align 8
  %130 = load i32*, i32** %38, align 8
  %131 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %132 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %131, i32 0, i32 14
  store i32* %130, i32** %132, align 8
  %133 = load i8*, i8** %37, align 8
  %134 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %135 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load i32*, i32** %52, align 8
  %137 = load i8*, i8** %39, align 8
  %138 = call i8* @apr_pstrdup(i32* %136, i8* %137)
  %139 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %140 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %139, i32 0, i32 13
  store i8* %138, i8** %140, align 8
  %141 = load i8*, i8** %33, align 8
  %142 = load i8*, i8** %40, align 8
  %143 = load i32*, i32** %52, align 8
  %144 = call i8* @svn_uri_skip_ancestor(i8* %141, i8* %142, i32* %143)
  %145 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %146 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %145, i32 0, i32 12
  store i8* %144, i8** %146, align 8
  %147 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %148 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %149 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %148, i32 0, i32 11
  store i8* %147, i8** %149, align 8
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @svn_opt_revision_number, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %162

155:                                              ; preds = %88
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %41, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i8*, i8** %158, align 8
  %160 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %161 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %160, i32 0, i32 10
  store i8* %159, i8** %161, align 8
  br label %166

162:                                              ; preds = %88
  %163 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %164 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %165 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %164, i32 0, i32 10
  store i8* %163, i8** %165, align 8
  br label %166

166:                                              ; preds = %162, %155
  %167 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %168 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @svn_opt_revision_number, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %179

172:                                              ; preds = %166
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 0
  %176 = load i8*, i8** %175, align 8
  %177 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %178 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %177, i32 0, i32 9
  store i8* %176, i8** %178, align 8
  br label %183

179:                                              ; preds = %166
  %180 = load i8*, i8** @SVN_INVALID_REVNUM, align 8
  %181 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %182 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %181, i32 0, i32 9
  store i8* %180, i8** %182, align 8
  br label %183

183:                                              ; preds = %179, %172
  %184 = load i32, i32* %43, align 4
  %185 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %186 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %185, i32 0, i32 8
  store i32 %184, i32* %186, align 8
  %187 = load i8*, i8** %44, align 8
  %188 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %189 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %188, i32 0, i32 7
  store i8* %187, i8** %189, align 8
  %190 = load i32, i32* %45, align 4
  %191 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %192 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 8
  %193 = load i8*, i8** %46, align 8
  %194 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %195 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %194, i32 0, i32 5
  store i8* %193, i8** %195, align 8
  %196 = load i32, i32* %47, align 4
  %197 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %198 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %197, i32 0, i32 4
  store i32 %196, i32* %198, align 8
  %199 = load i8*, i8** %48, align 8
  %200 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %201 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %200, i32 0, i32 3
  store i8* %199, i8** %201, align 8
  %202 = load i32*, i32** %52, align 8
  %203 = call i32 @apr_array_make(i32* %202, i32 1, i32 4)
  %204 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %205 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %204, i32 0, i32 2
  store i32 %203, i32* %205, align 8
  %206 = load i32, i32* @open_root, align 4
  %207 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %208 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %207, i32 0, i32 7
  store i32 %206, i32* %208, align 4
  %209 = load i32, i32* @set_target_revision, align 4
  %210 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %211 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %210, i32 0, i32 6
  store i32 %209, i32* %211, align 4
  %212 = load i32, i32* @add_file, align 4
  %213 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 5
  store i32 %212, i32* %214, align 4
  %215 = load i32, i32* @open_file, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 4
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @apply_textdelta, align 4
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 4
  %221 = load i32, i32* @change_file_prop, align 4
  %222 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %223 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %222, i32 0, i32 2
  store i32 %221, i32* %223, align 4
  %224 = load i32, i32* @close_file, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  store i32 %224, i32* %226, align 4
  %227 = load i32, i32* @close_edit, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 0
  store i32 %227, i32* %229, align 4
  %230 = load i32, i32* %45, align 4
  %231 = load i8*, i8** %46, align 8
  %232 = load %struct.TYPE_15__*, %struct.TYPE_15__** %54, align 8
  %233 = load %struct.edit_baton*, %struct.edit_baton** %53, align 8
  %234 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %26, align 8
  %235 = load i8**, i8*** %27, align 8
  %236 = load i32*, i32** %49, align 8
  %237 = call i32* @svn_delta_get_cancellation_editor(i32 %230, i8* %231, %struct.TYPE_15__* %232, %struct.edit_baton* %233, %struct.TYPE_15__** %234, i8** %235, i32* %236)
  ret i32* %237
}

declare dso_local %struct.edit_baton* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_15__* @svn_delta_default_editor(i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

declare dso_local i8* @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_dirent_basename(i8*, i32*) #1

declare dso_local i8* @svn_uri_skip_ancestor(i8*, i8*, i32*) #1

declare dso_local i32 @apr_array_make(i32*, i32, i32) #1

declare dso_local i32* @svn_delta_get_cancellation_editor(i32, i8*, %struct.TYPE_15__*, %struct.edit_baton*, %struct.TYPE_15__**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
