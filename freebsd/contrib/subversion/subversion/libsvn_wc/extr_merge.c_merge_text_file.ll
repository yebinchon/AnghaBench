; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_text_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_text_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8*, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c".tmp\00", align 1
@svn_io_file_del_none = common dso_local global i32 0, align 4
@svn_wc_merge_conflict = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_wc_merge_unchanged = common dso_local global i32 0, align 4
@svn_wc_merge_merged = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32**, i32*, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i64, i8*, i32, i8*, i32*, i32*)* @merge_text_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_text_file(i32** %0, i32** %1, i32* %2, %struct.TYPE_4__* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i64 %9, i8* %10, i32 %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32**, align 8
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_4__*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i32*, align 8
  %38 = alloca i8*, align 8
  %39 = alloca i8*, align 8
  %40 = alloca i8*, align 8
  %41 = alloca i64, align 8
  %42 = alloca i64, align 8
  store i32** %0, i32*** %16, align 8
  store i32** %1, i32*** %17, align 8
  store i32* %2, i32** %18, align 8
  store %struct.TYPE_4__* %3, %struct.TYPE_4__** %19, align 8
  store i8* %4, i8** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i64 %9, i64* %25, align 8
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  %43 = load i32*, i32** %30, align 8
  store i32* %43, i32** %31, align 8
  %44 = load i32**, i32*** %16, align 8
  store i32* null, i32** %44, align 8
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load i32*, i32** %30, align 8
  %49 = call i8* @svn_dirent_basename(i8* %47, i32* %48)
  store i8* %49, i8** %35, align 8
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = load i32*, i32** %31, align 8
  %57 = load i32*, i32** %31, align 8
  %58 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %36, i32 %52, i32 %55, i32* %56, i32* %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i8*, i8** %36, align 8
  %61 = load i8*, i8** %35, align 8
  %62 = load i32, i32* @svn_io_file_del_none, align 4
  %63 = load i32*, i32** %31, align 8
  %64 = load i32*, i32** %31, align 8
  %65 = call i32 @svn_io_open_uniquely_named(i32** %33, i8** %34, i8* %60, i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %62, i32* %63, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %88

71:                                               ; preds = %15
  %72 = load i32*, i32** %33, align 8
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load i8*, i8** %26, align 8
  %80 = load i8*, i8** %20, align 8
  %81 = load i8*, i8** %21, align 8
  %82 = load i8*, i8** %24, align 8
  %83 = load i8*, i8** %22, align 8
  %84 = load i8*, i8** %23, align 8
  %85 = load i32*, i32** %31, align 8
  %86 = call i32 @do_text_merge_external(i64* %32, i32* %72, i32 %75, i32 %78, i8* %79, i8* %80, i8* %81, i8* %82, i8* %83, i8* %84, i32* %85)
  %87 = call i32 @SVN_ERR(i32 %86)
  br label %104

88:                                               ; preds = %15
  %89 = load i32*, i32** %33, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  %93 = load i8*, i8** %26, align 8
  %94 = load i8*, i8** %20, align 8
  %95 = load i8*, i8** %21, align 8
  %96 = load i8*, i8** %24, align 8
  %97 = load i8*, i8** %22, align 8
  %98 = load i8*, i8** %23, align 8
  %99 = load i32, i32* %27, align 4
  %100 = load i8*, i8** %28, align 8
  %101 = load i32*, i32** %31, align 8
  %102 = call i32 @do_text_merge(i64* %32, i32* %89, i32 %92, i8* %93, i8* %94, i8* %95, i8* %96, i8* %97, i8* %98, i32 %99, i8* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  br label %104

104:                                              ; preds = %88, %71
  %105 = load i32*, i32** %33, align 8
  %106 = load i32*, i32** %31, align 8
  %107 = call i32 @svn_io_file_close(i32* %105, i32* %106)
  %108 = call i32 @SVN_ERR(i32 %107)
  %109 = load i64, i64* %32, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %160

111:                                              ; preds = %104
  %112 = load i32, i32* @svn_wc_merge_conflict, align 4
  %113 = load i32*, i32** %18, align 8
  store i32 %112, i32* %113, align 4
  %114 = load i64, i64* %25, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %159, label %116

116:                                              ; preds = %111
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %118 = load i8*, i8** %20, align 8
  %119 = load i8*, i8** %21, align 8
  %120 = load i8*, i8** %22, align 8
  %121 = load i8*, i8** %23, align 8
  %122 = load i8*, i8** %24, align 8
  %123 = load i8*, i8** %26, align 8
  %124 = load i32, i32* %27, align 4
  %125 = load i8*, i8** %28, align 8
  %126 = load i32*, i32** %29, align 8
  %127 = load i32*, i32** %30, align 8
  %128 = call i32 @preserve_pre_merge_files(i32** %37, i8** %38, i8** %39, i8** %40, %struct.TYPE_4__* %117, i8* %118, i8* %119, i8* %120, i8* %121, i8* %122, i8* %123, i32 %124, i8* %125, i32* %126, i32* %127)
  %129 = call i32 @SVN_ERR(i32 %128)
  %130 = load i32**, i32*** %16, align 8
  %131 = load i32*, i32** %130, align 8
  %132 = load i32*, i32** %37, align 8
  %133 = load i32*, i32** %29, align 8
  %134 = call i32* @svn_wc__wq_merge(i32* %131, i32* %132, i32* %133)
  %135 = load i32**, i32*** %16, align 8
  store i32* %134, i32** %135, align 8
  %136 = load i32**, i32*** %17, align 8
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %116
  %140 = load i32*, i32** %29, align 8
  %141 = call i32* @svn_wc__conflict_skel_create(i32* %140)
  %142 = load i32**, i32*** %17, align 8
  store i32* %141, i32** %142, align 8
  br label %143

143:                                              ; preds = %139, %116
  %144 = load i32**, i32*** %17, align 8
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %149, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = load i8*, i8** %40, align 8
  %153 = load i8*, i8** %38, align 8
  %154 = load i8*, i8** %39, align 8
  %155 = load i32*, i32** %29, align 8
  %156 = load i32*, i32** %30, align 8
  %157 = call i32 @svn_wc__conflict_skel_add_text_conflict(i32* %145, i32 %148, i8* %151, i8* %152, i8* %153, i8* %154, i32* %155, i32* %156)
  %158 = call i32 @SVN_ERR(i32 %157)
  br label %159

159:                                              ; preds = %143, %111
  br label %198

160:                                              ; preds = %104
  %161 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %162 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* @TRUE, align 4
  %171 = load i32*, i32** %31, align 8
  %172 = load i32*, i32** %31, align 8
  %173 = call i32 @svn_wc__get_translate_info(i32* null, i32* null, i32* null, i64* %42, i32 %163, i8* %166, i32 %169, i32 %170, i32* %171, i32* %172)
  %174 = call i32 @SVN_ERR(i32 %173)
  %175 = load i8*, i8** %34, align 8
  %176 = load i64, i64* %42, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %180

178:                                              ; preds = %160
  %179 = load i8*, i8** %26, align 8
  br label %184

180:                                              ; preds = %160
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  br label %184

184:                                              ; preds = %180, %178
  %185 = phi i8* [ %179, %178 ], [ %183, %180 ]
  %186 = load i32*, i32** %31, align 8
  %187 = call i32 @svn_io_files_contents_same_p(i64* %41, i8* %175, i8* %185, i32* %186)
  %188 = call i32 @SVN_ERR(i32 %187)
  %189 = load i64, i64* %41, align 8
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %184
  %192 = load i32, i32* @svn_wc_merge_unchanged, align 4
  br label %195

193:                                              ; preds = %184
  %194 = load i32, i32* @svn_wc_merge_merged, align 4
  br label %195

195:                                              ; preds = %193, %191
  %196 = phi i32 [ %192, %191 ], [ %194, %193 ]
  %197 = load i32*, i32** %18, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %195, %159
  %199 = load i32*, i32** %18, align 8
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @svn_wc_merge_unchanged, align 4
  %202 = icmp ne i32 %200, %201
  br i1 %202, label %203, label %226

203:                                              ; preds = %198
  %204 = load i64, i64* %25, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %203
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 1
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 0
  %212 = load i8*, i8** %211, align 8
  %213 = load i8*, i8** %34, align 8
  %214 = load i32, i32* @FALSE, align 4
  %215 = load i32, i32* @FALSE, align 4
  %216 = load i32*, i32** %29, align 8
  %217 = load i32*, i32** %30, align 8
  %218 = call i32 @svn_wc__wq_build_file_install(i32** %37, i32 %209, i8* %212, i8* %213, i32 %214, i32 %215, i32* %216, i32* %217)
  %219 = call i32 @SVN_ERR(i32 %218)
  %220 = load i32**, i32*** %16, align 8
  %221 = load i32*, i32** %220, align 8
  %222 = load i32*, i32** %37, align 8
  %223 = load i32*, i32** %29, align 8
  %224 = call i32* @svn_wc__wq_merge(i32* %221, i32* %222, i32* %223)
  %225 = load i32**, i32*** %16, align 8
  store i32* %224, i32** %225, align 8
  br label %226

226:                                              ; preds = %206, %203, %198
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  %232 = load i8*, i8** %231, align 8
  %233 = load i8*, i8** %34, align 8
  %234 = load i32*, i32** %29, align 8
  %235 = load i32*, i32** %30, align 8
  %236 = call i32 @svn_wc__wq_build_file_remove(i32** %37, i32 %229, i8* %232, i8* %233, i32* %234, i32* %235)
  %237 = call i32 @SVN_ERR(i32 %236)
  %238 = load i32**, i32*** %16, align 8
  %239 = load i32*, i32** %238, align 8
  %240 = load i32*, i32** %37, align 8
  %241 = load i32*, i32** %29, align 8
  %242 = call i32* @svn_wc__wq_merge(i32* %239, i32* %240, i32* %241)
  %243 = load i32**, i32*** %16, align 8
  store i32* %242, i32** %243, align 8
  %244 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %244
}

declare dso_local i8* @svn_dirent_basename(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32**, i8**, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @do_text_merge_external(i64*, i32*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @do_text_merge(i64*, i32*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_io_file_close(i32*, i32*) #1

declare dso_local i32 @preserve_pre_merge_files(i32**, i8**, i8**, i8**, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32* @svn_wc__conflict_skel_create(i32*) #1

declare dso_local i32 @svn_wc__conflict_skel_add_text_conflict(i32*, i32, i8*, i8*, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__get_translate_info(i32*, i32*, i32*, i64*, i32, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_files_contents_same_p(i64*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32, i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
