; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_merge_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_update_editor.c_merge_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file_baton = type { i64, i32, i32, i32, i32*, i64, i64, i32, i32, i32, %struct.dir_baton*, %struct.edit_baton* }
%struct.dir_baton = type { i32 }
%struct.edit_baton = type { i32, i32, i32, i32, i32*, i32 }

@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@SVN_WC_TRANSLATE_TO_NF = common dso_local global i32 0, align 4
@SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP = common dso_local global i32 0, align 4
@svn_wc_notify_state_conflicted = common dso_local global i32 0, align 4
@svn_wc_notify_state_merged = common dso_local global i32 0, align 4
@svn_wc_notify_state_changed = common dso_local global i32 0, align 4
@svn_wc_notify_state_unchanged = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, i64*, i8**, i32*, %struct.file_baton*, i32*, i32, i32*, i32*)* @merge_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file(i32** %0, i32** %1, i64* %2, i8** %3, i32* %4, %struct.file_baton* %5, i32* %6, i32 %7, i32* %8, i32* %9) #0 {
  %11 = alloca i32**, align 8
  %12 = alloca i32**, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.file_baton*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca %struct.edit_baton*, align 8
  %22 = alloca %struct.dir_baton*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i64, align 8
  %27 = alloca i8*, align 8
  store i32** %0, i32*** %11, align 8
  store i32** %1, i32*** %12, align 8
  store i64* %2, i64** %13, align 8
  store i8** %3, i8*** %14, align 8
  store i32* %4, i32** %15, align 8
  store %struct.file_baton* %5, %struct.file_baton** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32* %8, i32** %19, align 8
  store i32* %9, i32** %20, align 8
  %28 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %29 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %28, i32 0, i32 11
  %30 = load %struct.edit_baton*, %struct.edit_baton** %29, align 8
  store %struct.edit_baton* %30, %struct.edit_baton** %21, align 8
  %31 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %32 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %31, i32 0, i32 10
  %33 = load %struct.dir_baton*, %struct.dir_baton** %32, align 8
  store %struct.dir_baton* %33, %struct.dir_baton** %22, align 8
  %34 = load i64, i64* @FALSE, align 8
  store i64 %34, i64* %24, align 8
  %35 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %36 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %35, i32 0, i32 9
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %10
  %40 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %41 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %39
  %45 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %46 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  %49 = xor i1 %48, true
  br label %50

50:                                               ; preds = %44, %39, %10
  %51 = phi i1 [ false, %39 ], [ false, %10 ], [ %49, %44 ]
  %52 = zext i1 %51 to i32
  %53 = call i32 @SVN_ERR_ASSERT(i32 %52)
  %54 = load i32**, i32*** %11, align 8
  store i32* null, i32** %54, align 8
  %55 = load i64, i64* @FALSE, align 8
  %56 = load i64*, i64** %13, align 8
  store i64 %55, i64* %56, align 8
  %57 = load i8**, i8*** %14, align 8
  store i8* null, i8** %57, align 8
  %58 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %59 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %58, i32 0, i32 6
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %50
  %63 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %64 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %63, i32 0, i32 5
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %69, label %67

67:                                               ; preds = %62
  %68 = load i64, i64* @FALSE, align 8
  store i64 %68, i64* %23, align 8
  br label %80

69:                                               ; preds = %62, %50
  %70 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %71 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %74 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* @FALSE, align 8
  %77 = load i32*, i32** %20, align 8
  %78 = call i32 @svn_wc__internal_file_modified_p(i64* %23, i32 %72, i32 %75, i64 %76, i32* %77)
  %79 = call i32 @SVN_ERR(i32 %78)
  br label %80

80:                                               ; preds = %69, %67
  %81 = load i64, i64* %23, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  %84 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %85 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load i64, i64* @TRUE, align 8
  %90 = load i64*, i64** %13, align 8
  store i64 %89, i64* %90, align 8
  br label %207

91:                                               ; preds = %83, %80
  %92 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %93 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %149

96:                                               ; preds = %91
  %97 = load i32**, i32*** %11, align 8
  %98 = load i32**, i32*** %12, align 8
  %99 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %100 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %103 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.dir_baton*, %struct.dir_baton** %22, align 8
  %106 = getelementptr inbounds %struct.dir_baton, %struct.dir_baton* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %109 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %112 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %96
  br label %120

116:                                              ; preds = %96
  %117 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %118 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  br label %120

120:                                              ; preds = %116, %115
  %121 = phi i32* [ null, %115 ], [ %119, %116 ]
  %122 = load i32*, i32** %17, align 8
  %123 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %124 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %127 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 8
  %129 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %130 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %134 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %137 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %136, i32 0, i32 3
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %140 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %143 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = load i32*, i32** %20, align 8
  %147 = call i32 @svn_wc__perform_file_merge(i32** %97, i32** %98, i64* %24, i32 %101, i32 %104, i32 %107, i64 %110, i32* %121, i32* %122, i32 %125, i32 %128, i32 %132, i32 %135, i32 %138, i32 %141, i32 %144, i32* %145, i32* %146)
  %148 = call i32 @SVN_ERR(i32 %147)
  br label %206

149:                                              ; preds = %91
  %150 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %151 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = call i64 @svn_wc__has_magic_property(i32 %152)
  store i64 %153, i64* %26, align 8
  %154 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %155 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %158 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %17, align 8
  %161 = load i64, i64* @TRUE, align 8
  %162 = load i32*, i32** %20, align 8
  %163 = load i32*, i32** %20, align 8
  %164 = call i32 @svn_wc__get_translate_info(i32* null, i32* null, i32** %25, i32* null, i32 %156, i32 %159, i32* %160, i64 %161, i32* %162, i32* %163)
  %165 = call i32 @SVN_ERR(i32 %164)
  %166 = load i64, i64* %26, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %171, label %168

168:                                              ; preds = %149
  %169 = load i32*, i32** %25, align 8
  %170 = icmp ne i32* %169, null
  br i1 %170, label %171, label %205

171:                                              ; preds = %168, %149
  %172 = load i64, i64* %23, align 8
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %201

174:                                              ; preds = %171
  %175 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %176 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %179 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %182 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @SVN_WC_TRANSLATE_TO_NF, align 4
  %185 = load i32, i32* @SVN_WC_TRANSLATE_NO_OUTPUT_CLEANUP, align 4
  %186 = or i32 %184, %185
  %187 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %188 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.edit_baton*, %struct.edit_baton** %21, align 8
  %191 = getelementptr inbounds %struct.edit_baton, %struct.edit_baton* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load i32*, i32** %19, align 8
  %194 = load i32*, i32** %20, align 8
  %195 = call i32 @svn_wc__internal_translated_file(i8** %27, i32 %177, i32 %180, i32 %183, i32 %186, i32 %189, i32 %192, i32* %193, i32* %194)
  %196 = call i32 @SVN_ERR(i32 %195)
  %197 = load i64, i64* @TRUE, align 8
  %198 = load i64*, i64** %13, align 8
  store i64 %197, i64* %198, align 8
  %199 = load i8*, i8** %27, align 8
  %200 = load i8**, i8*** %14, align 8
  store i8* %199, i8** %200, align 8
  br label %204

201:                                              ; preds = %171
  %202 = load i64, i64* @TRUE, align 8
  %203 = load i64*, i64** %13, align 8
  store i64 %202, i64* %203, align 8
  br label %204

204:                                              ; preds = %201, %174
  br label %205

205:                                              ; preds = %204, %168
  br label %206

206:                                              ; preds = %205, %120
  br label %207

207:                                              ; preds = %206, %88
  %208 = load i64, i64* %24, align 8
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32, i32* @svn_wc_notify_state_conflicted, align 4
  %212 = load i32*, i32** %15, align 8
  store i32 %211, i32* %212, align 4
  br label %232

213:                                              ; preds = %207
  %214 = load %struct.file_baton*, %struct.file_baton** %16, align 8
  %215 = getelementptr inbounds %struct.file_baton, %struct.file_baton* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %228

218:                                              ; preds = %213
  %219 = load i64, i64* %23, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %218
  %222 = load i32, i32* @svn_wc_notify_state_merged, align 4
  %223 = load i32*, i32** %15, align 8
  store i32 %222, i32* %223, align 4
  br label %227

224:                                              ; preds = %218
  %225 = load i32, i32* @svn_wc_notify_state_changed, align 4
  %226 = load i32*, i32** %15, align 8
  store i32 %225, i32* %226, align 4
  br label %227

227:                                              ; preds = %224, %221
  br label %231

228:                                              ; preds = %213
  %229 = load i32, i32* @svn_wc_notify_state_unchanged, align 4
  %230 = load i32*, i32** %15, align 8
  store i32 %229, i32* %230, align 4
  br label %231

231:                                              ; preds = %228, %227
  br label %232

232:                                              ; preds = %231, %210
  %233 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %233
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__internal_file_modified_p(i64*, i32, i32, i64, i32*) #1

declare dso_local i32 @svn_wc__perform_file_merge(i32**, i32**, i64*, i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i64 @svn_wc__has_magic_property(i32) #1

declare dso_local i32 @svn_wc__get_translate_info(i32*, i32*, i32**, i32*, i32, i32, i32*, i64, i32*, i32*) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i32, i32, i32, i32, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
