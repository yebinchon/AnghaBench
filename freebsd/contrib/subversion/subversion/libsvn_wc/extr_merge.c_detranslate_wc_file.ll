; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_detranslate_wc_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_detranslate_wc_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i8* }

@SVN_PROP_MIME_TYPE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@svn_subst_eol_style_none = common dso_local global i64 0, align 8
@SVN_PROP_EOL_STYLE = common dso_local global i32 0, align 4
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_io_file_del_on_pool_cleanup = common dso_local global i32 0, align 4
@svn_subst_eol_style_native = common dso_local global i64 0, align 8
@SVN_SUBST_NATIVE_EOL_STR = common dso_local global i8* null, align 8
@svn_subst_eol_style_fixed = common dso_local global i64 0, align 8
@SVN_ERR_IO_UNKNOWN_EOL = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8**, %struct.TYPE_8__*, i32, i8*, i32, i8*, i32*, i32*)* @detranslate_wc_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @detranslate_wc_file(i8** %0, %struct.TYPE_8__* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.TYPE_8__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca %struct.TYPE_7__*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca %struct.TYPE_7__*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  store i8** %0, i8*** %10, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %11, align 8
  store i32 %2, i32* %12, align 4
  store i8* %3, i8** %13, align 8
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %34 = call i8* @svn_prop_get_value(i32 %32, i32 %33)
  store i8* %34, i8** %24, align 8
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SVN_PROP_MIME_TYPE, align 4
  %39 = call %struct.TYPE_7__* @get_prop(i32 %37, i32 %38)
  store %struct.TYPE_7__* %39, %struct.TYPE_7__** %25, align 8
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %41 = icmp ne %struct.TYPE_7__* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = icmp ne %struct.TYPE_6__* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  br label %54

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i8* [ %52, %47 ], [ null, %53 ]
  br label %58

56:                                               ; preds = %8
  %57 = load i8*, i8** %24, align 8
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i8* [ %55, %54 ], [ %57, %56 ]
  store i8* %59, i8** %26, align 8
  %60 = load i8*, i8** %24, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i8*, i8** %24, align 8
  %64 = call i64 @svn_mime_type_is_binary(i8* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %18, align 4
  %69 = load i8*, i8** %26, align 8
  %70 = icmp ne i8* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i8*, i8** %26, align 8
  %73 = call i64 @svn_mime_type_is_binary(i8* %72)
  %74 = icmp ne i64 %73, 0
  br label %75

75:                                               ; preds = %71, %66
  %76 = phi i1 [ false, %66 ], [ %74, %71 ]
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %19, align 4
  %78 = load i32, i32* %18, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  %81 = load i32, i32* %19, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %100

83:                                               ; preds = %80
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @TRUE, align 4
  %94 = load i32*, i32** %17, align 8
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @svn_wc__get_translate_info(i64* null, i8** null, i32** %22, i32* null, i32 %86, i32 %89, i32 %92, i32 %93, i32* %94, i32* %95)
  %97 = call i32 @SVN_ERR(i32 %96)
  %98 = load i32, i32* @FALSE, align 4
  store i32 %98, i32* %23, align 4
  store i8* null, i8** %21, align 8
  %99 = load i64, i64* @svn_subst_eol_style_none, align 8
  store i64 %99, i64* %20, align 8
  br label %169

100:                                              ; preds = %80, %75
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %121, label %103

103:                                              ; preds = %100
  %104 = load i32, i32* %19, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %121

106:                                              ; preds = %103
  %107 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @TRUE, align 4
  %117 = load i32*, i32** %17, align 8
  %118 = load i32*, i32** %17, align 8
  %119 = call i32 @svn_wc__get_translate_info(i64* %20, i8** %21, i32** %22, i32* %23, i32 %109, i32 %112, i32 %115, i32 %116, i32* %117, i32* %118)
  %120 = call i32 @SVN_ERR(i32 %119)
  br label %168

121:                                              ; preds = %103, %100
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @TRUE, align 4
  %132 = load i32*, i32** %17, align 8
  %133 = load i32*, i32** %17, align 8
  %134 = call i32 @svn_wc__get_translate_info(i64* %20, i8** %21, i32** %22, i32* %23, i32 %124, i32 %127, i32 %130, i32 %131, i32* %132, i32* %133)
  %135 = call i32 @SVN_ERR(i32 %134)
  %136 = load i32, i32* %23, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %121
  store i32* null, i32** %22, align 8
  store i8* null, i8** %21, align 8
  %139 = load i64, i64* @svn_subst_eol_style_none, align 8
  store i64 %139, i64* %20, align 8
  br label %167

140:                                              ; preds = %121
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @SVN_PROP_EOL_STYLE, align 4
  %145 = call %struct.TYPE_7__* @get_prop(i32 %143, i32 %144)
  store %struct.TYPE_7__* %145, %struct.TYPE_7__** %27, align 8
  %146 = icmp ne %struct.TYPE_7__* %145, null
  br i1 %146, label %147, label %159

147:                                              ; preds = %140
  %148 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = load %struct.TYPE_6__*, %struct.TYPE_6__** %149, align 8
  %151 = icmp ne %struct.TYPE_6__* %150, null
  br i1 %151, label %152, label %159

152:                                              ; preds = %147
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  %158 = call i32 @svn_subst_eol_style_from_value(i64* %20, i8** %21, i8* %157)
  br label %166

159:                                              ; preds = %147, %140
  %160 = load i32, i32* %18, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %163, label %162

162:                                              ; preds = %159
  br label %165

163:                                              ; preds = %159
  store i8* null, i8** %21, align 8
  %164 = load i64, i64* @svn_subst_eol_style_none, align 8
  store i64 %164, i64* %20, align 8
  br label %165

165:                                              ; preds = %163, %162
  br label %166

166:                                              ; preds = %165, %152
  br label %167

167:                                              ; preds = %166, %138
  br label %168

168:                                              ; preds = %167, %106
  br label %169

169:                                              ; preds = %168, %83
  %170 = load i32, i32* %12, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %169
  %173 = load i32*, i32** %22, align 8
  %174 = icmp ne i32* %173, null
  br i1 %174, label %181, label %175

175:                                              ; preds = %172
  %176 = load i8*, i8** %21, align 8
  %177 = icmp ne i8* %176, null
  br i1 %177, label %181, label %178

178:                                              ; preds = %175
  %179 = load i32, i32* %23, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %240

181:                                              ; preds = %178, %175, %172, %169
  %182 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32*, i32** %17, align 8
  %189 = load i32*, i32** %17, align 8
  %190 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %28, i32 %184, i32 %187, i32* %188, i32* %189)
  %191 = call i32 @SVN_ERR(i32 %190)
  %192 = load i8*, i8** %28, align 8
  %193 = load i32, i32* %12, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %181
  %196 = load i32, i32* @svn_io_file_del_none, align 4
  br label %199

197:                                              ; preds = %181
  %198 = load i32, i32* @svn_io_file_del_on_pool_cleanup, align 4
  br label %199

199:                                              ; preds = %197, %195
  %200 = phi i32 [ %196, %195 ], [ %198, %197 ]
  %201 = load i32*, i32** %16, align 8
  %202 = load i32*, i32** %17, align 8
  %203 = call i32 @svn_io_open_unique_file3(i32* null, i8** %29, i8* %192, i32 %200, i32* %201, i32* %202)
  %204 = call i32 @SVN_ERR(i32 %203)
  %205 = load i64, i64* %20, align 8
  %206 = load i64, i64* @svn_subst_eol_style_native, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %208, label %210

208:                                              ; preds = %199
  %209 = load i8*, i8** @SVN_SUBST_NATIVE_EOL_STR, align 8
  store i8* %209, i8** %21, align 8
  br label %222

210:                                              ; preds = %199
  %211 = load i64, i64* %20, align 8
  %212 = load i64, i64* @svn_subst_eol_style_fixed, align 8
  %213 = icmp ne i64 %211, %212
  br i1 %213, label %214, label %221

214:                                              ; preds = %210
  %215 = load i64, i64* %20, align 8
  %216 = load i64, i64* @svn_subst_eol_style_none, align 8
  %217 = icmp ne i64 %215, %216
  br i1 %217, label %218, label %221

218:                                              ; preds = %214
  %219 = load i32, i32* @SVN_ERR_IO_UNKNOWN_EOL, align 4
  %220 = call i32* @svn_error_create(i32 %219, i32* null, i32* null)
  store i32* %220, i32** %9, align 8
  br label %247

221:                                              ; preds = %214, %210
  br label %222

222:                                              ; preds = %221, %208
  %223 = load i8*, i8** %13, align 8
  %224 = load i8*, i8** %29, align 8
  %225 = load i8*, i8** %21, align 8
  %226 = load i32, i32* @TRUE, align 4
  %227 = load i32*, i32** %22, align 8
  %228 = load i32, i32* @FALSE, align 4
  %229 = load i32, i32* %23, align 4
  %230 = load i32, i32* %14, align 4
  %231 = load i8*, i8** %15, align 8
  %232 = load i32*, i32** %17, align 8
  %233 = call i32 @svn_subst_copy_and_translate4(i8* %223, i8* %224, i8* %225, i32 %226, i32* %227, i32 %228, i32 %229, i32 %230, i8* %231, i32* %232)
  %234 = call i32 @SVN_ERR(i32 %233)
  %235 = load i8**, i8*** %10, align 8
  %236 = load i8*, i8** %29, align 8
  %237 = load i32*, i32** %16, align 8
  %238 = call i32 @svn_dirent_get_absolute(i8** %235, i8* %236, i32* %237)
  %239 = call i32 @SVN_ERR(i32 %238)
  br label %245

240:                                              ; preds = %178
  %241 = load i32*, i32** %16, align 8
  %242 = load i8*, i8** %13, align 8
  %243 = call i8* @apr_pstrdup(i32* %241, i8* %242)
  %244 = load i8**, i8*** %10, align 8
  store i8* %243, i8** %244, align 8
  br label %245

245:                                              ; preds = %240, %222
  %246 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %246, i32** %9, align 8
  br label %247

247:                                              ; preds = %245, %218
  %248 = load i32*, i32** %9, align 8
  ret i32* %248
}

declare dso_local i8* @svn_prop_get_value(i32, i32) #1

declare dso_local %struct.TYPE_7__* @get_prop(i32, i32) #1

declare dso_local i64 @svn_mime_type_is_binary(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__get_translate_info(i64*, i8**, i32**, i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_eol_style_from_value(i64*, i8**, i8*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

declare dso_local i32 @svn_subst_copy_and_translate4(i8*, i8*, i8*, i32, i32*, i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i8* @apr_pstrdup(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
