; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_preserve_pre_merge_files.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_preserve_pre_merge_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i8**, i8**, i8**, %struct.TYPE_4__*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i32*, i32*)* @preserve_pre_merge_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @preserve_pre_merge_files(i32** %0, i8** %1, i8** %2, i8** %3, %struct.TYPE_4__* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i32 %11, i8* %12, i32* %13, i32* %14) #0 {
  %16 = alloca i32**, align 8
  %17 = alloca i8**, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i8**, align 8
  %20 = alloca %struct.TYPE_4__*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca i8*, align 8
  %37 = alloca i8*, align 8
  %38 = alloca i32*, align 8
  %39 = alloca i32*, align 8
  store i32** %0, i32*** %16, align 8
  store i8** %1, i8*** %17, align 8
  store i8** %2, i8*** %18, align 8
  store i8** %3, i8*** %19, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i8* %8, i8** %24, align 8
  store i8* %9, i8** %25, align 8
  store i8* %10, i8** %26, align 8
  store i32 %11, i32* %27, align 4
  store i8* %12, i8** %28, align 8
  store i32* %13, i32** %29, align 8
  store i32* %14, i32** %30, align 8
  store i32* null, i32** %39, align 8
  %40 = load i32**, i32*** %16, align 8
  store i32* null, i32** %40, align 8
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %30, align 8
  %45 = call i32 @svn_dirent_split(i8** %34, i8** %35, i32 %43, i32* %44)
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %30, align 8
  %53 = load i32*, i32** %30, align 8
  %54 = call i32 @svn_wc__db_get_wcroot(i8** %36, i32 %48, i32 %51, i32* %52, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %30, align 8
  %63 = load i32*, i32** %30, align 8
  %64 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %37, i32 %58, i32 %61, i32* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  %66 = load i8**, i8*** %17, align 8
  %67 = load i8*, i8** %34, align 8
  %68 = load i8*, i8** %35, align 8
  %69 = load i8*, i8** %23, align 8
  %70 = load i32, i32* @svn_io_file_del_none, align 4
  %71 = load i32*, i32** %29, align 8
  %72 = load i32*, i32** %30, align 8
  %73 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %66, i8* %67, i8* %68, i8* %69, i32 %70, i32* %71, i32* %72)
  %74 = call i32 @SVN_ERR(i32 %73)
  %75 = load i8**, i8*** %18, align 8
  %76 = load i8*, i8** %34, align 8
  %77 = load i8*, i8** %35, align 8
  %78 = load i8*, i8** %24, align 8
  %79 = load i32, i32* @svn_io_file_del_none, align 4
  %80 = load i32*, i32** %29, align 8
  %81 = load i32*, i32** %30, align 8
  %82 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %75, i8* %76, i8* %77, i8* %78, i32 %79, i32* %80, i32* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load i8**, i8*** %19, align 8
  %85 = load i8*, i8** %34, align 8
  %86 = load i8*, i8** %35, align 8
  %87 = load i8*, i8** %25, align 8
  %88 = load i32, i32* @svn_io_file_del_none, align 4
  %89 = load i32*, i32** %29, align 8
  %90 = load i32*, i32** %30, align 8
  %91 = call i32 @svn_io_open_uniquely_named(i32* null, i8** %84, i8* %85, i8* %86, i8* %87, i32 %88, i32* %89, i32* %90)
  %92 = call i32 @SVN_ERR(i32 %91)
  %93 = load i8*, i8** %36, align 8
  %94 = load i8*, i8** %21, align 8
  %95 = call i32 @svn_dirent_is_ancestor(i8* %93, i8* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %123, label %97

97:                                               ; preds = %15
  %98 = load i8*, i8** %37, align 8
  %99 = load i32, i32* @svn_io_file_del_none, align 4
  %100 = load i32*, i32** %30, align 8
  %101 = load i32*, i32** %30, align 8
  %102 = call i32 @svn_io_open_unique_file3(i32* null, i8** %31, i8* %98, i32 %99, i32* %100, i32* %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i8*, i8** %21, align 8
  %105 = load i8*, i8** %31, align 8
  %106 = load i32, i32* @TRUE, align 4
  %107 = load i32*, i32** %30, align 8
  %108 = call i32 @svn_io_copy_file(i8* %104, i8* %105, i32 %106, i32* %107)
  %109 = call i32 @SVN_ERR(i32 %108)
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i8*, i8** %36, align 8
  %114 = load i8*, i8** %31, align 8
  %115 = load i32*, i32** %29, align 8
  %116 = load i32*, i32** %30, align 8
  %117 = call i32 @svn_wc__wq_build_file_remove(i32** %38, i32 %112, i8* %113, i8* %114, i32* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32*, i32** %39, align 8
  %120 = load i32*, i32** %38, align 8
  %121 = load i32*, i32** %29, align 8
  %122 = call i32* @svn_wc__wq_merge(i32* %119, i32* %120, i32* %121)
  store i32* %122, i32** %39, align 8
  br label %125

123:                                              ; preds = %15
  %124 = load i8*, i8** %21, align 8
  store i8* %124, i8** %31, align 8
  br label %125

125:                                              ; preds = %123, %97
  %126 = load i8*, i8** %36, align 8
  %127 = load i8*, i8** %22, align 8
  %128 = call i32 @svn_dirent_is_ancestor(i8* %126, i8* %127)
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %156, label %130

130:                                              ; preds = %125
  %131 = load i8*, i8** %37, align 8
  %132 = load i32, i32* @svn_io_file_del_none, align 4
  %133 = load i32*, i32** %30, align 8
  %134 = load i32*, i32** %30, align 8
  %135 = call i32 @svn_io_open_unique_file3(i32* null, i8** %32, i8* %131, i32 %132, i32* %133, i32* %134)
  %136 = call i32 @SVN_ERR(i32 %135)
  %137 = load i8*, i8** %22, align 8
  %138 = load i8*, i8** %32, align 8
  %139 = load i32, i32* @TRUE, align 4
  %140 = load i32*, i32** %30, align 8
  %141 = call i32 @svn_io_copy_file(i8* %137, i8* %138, i32 %139, i32* %140)
  %142 = call i32 @SVN_ERR(i32 %141)
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i8*, i8** %36, align 8
  %147 = load i8*, i8** %32, align 8
  %148 = load i32*, i32** %29, align 8
  %149 = load i32*, i32** %30, align 8
  %150 = call i32 @svn_wc__wq_build_file_remove(i32** %38, i32 %145, i8* %146, i8* %147, i32* %148, i32* %149)
  %151 = call i32 @SVN_ERR(i32 %150)
  %152 = load i32*, i32** %39, align 8
  %153 = load i32*, i32** %38, align 8
  %154 = load i32*, i32** %29, align 8
  %155 = call i32* @svn_wc__wq_merge(i32* %152, i32* %153, i32* %154)
  store i32* %155, i32** %39, align 8
  br label %158

156:                                              ; preds = %125
  %157 = load i8*, i8** %22, align 8
  store i8* %157, i8** %32, align 8
  br label %158

158:                                              ; preds = %156, %130
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i8*, i8** %31, align 8
  %166 = load i8**, i8*** %17, align 8
  %167 = load i8*, i8** %166, align 8
  %168 = load i32*, i32** %29, align 8
  %169 = load i32*, i32** %30, align 8
  %170 = call i32 @svn_wc__wq_build_file_copy_translated(i32** %38, i32 %161, i32 %164, i8* %165, i8* %167, i32* %168, i32* %169)
  %171 = call i32 @SVN_ERR(i32 %170)
  %172 = load i32**, i32*** %16, align 8
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %38, align 8
  %175 = load i32*, i32** %29, align 8
  %176 = call i32* @svn_wc__wq_merge(i32* %173, i32* %174, i32* %175)
  %177 = load i32**, i32*** %16, align 8
  store i32* %176, i32** %177, align 8
  %178 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %179 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %182 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i8*, i8** %32, align 8
  %185 = load i8**, i8*** %18, align 8
  %186 = load i8*, i8** %185, align 8
  %187 = load i32*, i32** %29, align 8
  %188 = load i32*, i32** %30, align 8
  %189 = call i32 @svn_wc__wq_build_file_copy_translated(i32** %38, i32 %180, i32 %183, i8* %184, i8* %186, i32* %187, i32* %188)
  %190 = call i32 @SVN_ERR(i32 %189)
  %191 = load i32**, i32*** %16, align 8
  %192 = load i32*, i32** %191, align 8
  %193 = load i32*, i32** %38, align 8
  %194 = load i32*, i32** %29, align 8
  %195 = call i32* @svn_wc__wq_merge(i32* %192, i32* %193, i32* %194)
  %196 = load i32**, i32*** %16, align 8
  store i32* %195, i32** %196, align 8
  %197 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %198 = load i32, i32* @TRUE, align 4
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = load i32, i32* %27, align 4
  %203 = load i8*, i8** %28, align 8
  %204 = load i32*, i32** %30, align 8
  %205 = load i32*, i32** %30, align 8
  %206 = call i32 @detranslate_wc_file(i8** %33, %struct.TYPE_4__* %197, i32 %198, i32 %201, i32 %202, i8* %203, i32* %204, i32* %205)
  %207 = call i32 @SVN_ERR(i32 %206)
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i8*, i8** %33, align 8
  %215 = load i8**, i8*** %19, align 8
  %216 = load i8*, i8** %215, align 8
  %217 = load i32*, i32** %29, align 8
  %218 = load i32*, i32** %30, align 8
  %219 = call i32 @svn_wc__wq_build_file_copy_translated(i32** %38, i32 %210, i32 %213, i8* %214, i8* %216, i32* %217, i32* %218)
  %220 = call i32 @SVN_ERR(i32 %219)
  %221 = load i32**, i32*** %16, align 8
  %222 = load i32*, i32** %221, align 8
  %223 = load i32*, i32** %38, align 8
  %224 = load i32*, i32** %29, align 8
  %225 = call i32* @svn_wc__wq_merge(i32* %222, i32* %223, i32* %224)
  %226 = load i32**, i32*** %16, align 8
  store i32* %225, i32** %226, align 8
  %227 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %228 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = load i8*, i8** %36, align 8
  %231 = load i8*, i8** %33, align 8
  %232 = load i32*, i32** %29, align 8
  %233 = load i32*, i32** %30, align 8
  %234 = call i32 @svn_wc__wq_build_file_remove(i32** %38, i32 %229, i8* %230, i8* %231, i32* %232, i32* %233)
  %235 = call i32 @SVN_ERR(i32 %234)
  %236 = load i32**, i32*** %16, align 8
  %237 = load i32*, i32** %236, align 8
  %238 = load i32*, i32** %38, align 8
  %239 = load i32*, i32** %29, align 8
  %240 = call i32* @svn_wc__wq_merge(i32* %237, i32* %238, i32* %239)
  %241 = load i32**, i32*** %16, align 8
  store i32* %240, i32** %241, align 8
  %242 = load i32**, i32*** %16, align 8
  %243 = load i32*, i32** %242, align 8
  %244 = load i32*, i32** %39, align 8
  %245 = load i32*, i32** %29, align 8
  %246 = call i32* @svn_wc__wq_merge(i32* %243, i32* %244, i32* %245)
  %247 = load i32**, i32*** %16, align 8
  store i32* %246, i32** %247, align 8
  %248 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %248
}

declare dso_local i32 @svn_dirent_split(i8**, i8**, i32, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_get_wcroot(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_open_uniquely_named(i32*, i8**, i8*, i8*, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_is_ancestor(i8*, i8*) #1

declare dso_local i32 @svn_io_open_unique_file3(i32*, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_io_copy_file(i8*, i8*, i32, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_copy_translated(i32**, i32, i32, i8*, i8*, i32*, i32*) #1

declare dso_local i32 @detranslate_wc_file(i8**, %struct.TYPE_4__*, i32, i32, i32, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
