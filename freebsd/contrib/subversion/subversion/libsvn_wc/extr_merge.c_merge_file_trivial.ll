; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_file_trivial.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_merge.c_merge_file_trivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@svn_node_file = common dso_local global i64 0, align 8
@svn_wc_merge_no_merge = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_wc_merge_unchanged = common dso_local global i32 0, align 4
@svn_wc_merge_merged = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@svn_io_file_del_none = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32**, i32*, i8*, i8*, i8*, i8*, i64, i32*, i32, i8*, i32*, i32*)* @merge_file_trivial to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @merge_file_trivial(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i8* %5, i64 %6, i32* %7, i32 %8, i8* %9, i32* %10, i32* %11) #0 {
  %13 = alloca i32*, align 8
  %14 = alloca i32**, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i32*, align 8
  %35 = alloca i32*, align 8
  %36 = alloca i8*, align 8
  store i32** %0, i32*** %14, align 8
  store i32* %1, i32** %15, align 8
  store i8* %2, i8** %16, align 8
  store i8* %3, i8** %17, align 8
  store i8* %4, i8** %18, align 8
  store i8* %5, i8** %19, align 8
  store i64 %6, i64* %20, align 8
  store i32* %7, i32** %21, align 8
  store i32 %8, i32* %22, align 4
  store i8* %9, i8** %23, align 8
  store i32* %10, i32** %24, align 8
  store i32* %11, i32** %25, align 8
  %37 = load i8*, i8** %18, align 8
  %38 = load i32*, i32** %25, align 8
  %39 = call i32 @svn_io_check_special_path(i8* %37, i64* %30, i64* %31, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  %41 = load i64, i64* %30, align 8
  %42 = load i64, i64* @svn_node_file, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %47, label %44

44:                                               ; preds = %12
  %45 = load i64, i64* %31, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %12
  %48 = load i32, i32* @svn_wc_merge_no_merge, align 4
  %49 = load i32*, i32** %15, align 8
  store i32 %48, i32* %49, align 4
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %50, i32** %13, align 8
  br label %157

51:                                               ; preds = %44
  %52 = load i8*, i8** %16, align 8
  %53 = load i8*, i8** %17, align 8
  %54 = load i8*, i8** %19, align 8
  %55 = load i32*, i32** %25, align 8
  %56 = call i32 @svn_io_files_contents_three_same_p(i64* %27, i64* %28, i64* %29, i8* %52, i8* %53, i8* %54, i32* %55)
  %57 = call i32 @SVN_ERR(i32 %56)
  %58 = load i64, i64* %29, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %145

60:                                               ; preds = %51
  %61 = load i64, i64* %27, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @svn_wc_merge_unchanged, align 4
  %65 = load i32*, i32** %15, align 8
  store i32 %64, i32* %65, align 4
  br label %143

66:                                               ; preds = %60
  %67 = load i32, i32* @svn_wc_merge_merged, align 4
  %68 = load i32*, i32** %15, align 8
  store i32 %67, i32* %68, align 4
  %69 = load i64, i64* %20, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %142, label %71

71:                                               ; preds = %66
  %72 = load i64, i64* @FALSE, align 8
  store i64 %72, i64* %33, align 8
  %73 = load i32*, i32** %21, align 8
  %74 = load i8*, i8** %18, align 8
  %75 = load i32*, i32** %25, align 8
  %76 = load i32*, i32** %25, align 8
  %77 = call i32 @svn_wc__db_get_wcroot(i8** %32, i32* %73, i8* %74, i32* %75, i32* %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  %79 = load i8*, i8** %32, align 8
  %80 = load i8*, i8** %17, align 8
  %81 = call i32 @svn_dirent_is_child(i8* %79, i8* %80, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %109, label %83

83:                                               ; preds = %71
  %84 = load i8*, i8** %17, align 8
  %85 = load i32*, i32** %25, align 8
  %86 = load i32*, i32** %25, align 8
  %87 = call i32 @svn_stream_open_readonly(i32** %34, i8* %84, i32* %85, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %21, align 8
  %90 = load i8*, i8** %18, align 8
  %91 = load i32*, i32** %25, align 8
  %92 = load i32*, i32** %25, align 8
  %93 = call i32 @svn_wc__db_temp_wcroot_tempdir(i8** %36, i32* %89, i8* %90, i32* %91, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i8*, i8** %36, align 8
  %96 = load i32, i32* @svn_io_file_del_none, align 4
  %97 = load i32*, i32** %25, align 8
  %98 = load i32*, i32** %25, align 8
  %99 = call i32 @svn_stream_open_unique(i32** %35, i8** %17, i8* %95, i32 %96, i32* %97, i32* %98)
  %100 = call i32 @SVN_ERR(i32 %99)
  %101 = load i32*, i32** %34, align 8
  %102 = load i32*, i32** %35, align 8
  %103 = load i32, i32* %22, align 4
  %104 = load i8*, i8** %23, align 8
  %105 = load i32*, i32** %25, align 8
  %106 = call i32 @svn_stream_copy3(i32* %101, i32* %102, i32 %103, i8* %104, i32* %105)
  %107 = call i32 @SVN_ERR(i32 %106)
  %108 = load i64, i64* @TRUE, align 8
  store i64 %108, i64* %33, align 8
  br label %109

109:                                              ; preds = %83, %71
  %110 = load i32*, i32** %21, align 8
  %111 = load i8*, i8** %18, align 8
  %112 = load i8*, i8** %17, align 8
  %113 = load i64, i64* @FALSE, align 8
  %114 = load i64, i64* @FALSE, align 8
  %115 = load i32*, i32** %24, align 8
  %116 = load i32*, i32** %25, align 8
  %117 = call i32 @svn_wc__wq_build_file_install(i32** %26, i32* %110, i8* %111, i8* %112, i64 %113, i64 %114, i32* %115, i32* %116)
  %118 = call i32 @SVN_ERR(i32 %117)
  %119 = load i32**, i32*** %14, align 8
  %120 = load i32*, i32** %119, align 8
  %121 = load i32*, i32** %26, align 8
  %122 = load i32*, i32** %24, align 8
  %123 = call i32* @svn_wc__wq_merge(i32* %120, i32* %121, i32* %122)
  %124 = load i32**, i32*** %14, align 8
  store i32* %123, i32** %124, align 8
  %125 = load i64, i64* %33, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %141

127:                                              ; preds = %109
  %128 = load i32*, i32** %21, align 8
  %129 = load i8*, i8** %32, align 8
  %130 = load i8*, i8** %17, align 8
  %131 = load i32*, i32** %24, align 8
  %132 = load i32*, i32** %25, align 8
  %133 = call i32 @svn_wc__wq_build_file_remove(i32** %26, i32* %128, i8* %129, i8* %130, i32* %131, i32* %132)
  %134 = call i32 @SVN_ERR(i32 %133)
  %135 = load i32**, i32*** %14, align 8
  %136 = load i32*, i32** %135, align 8
  %137 = load i32*, i32** %26, align 8
  %138 = load i32*, i32** %24, align 8
  %139 = call i32* @svn_wc__wq_merge(i32* %136, i32* %137, i32* %138)
  %140 = load i32**, i32*** %14, align 8
  store i32* %139, i32** %140, align 8
  br label %141

141:                                              ; preds = %127, %109
  br label %142

142:                                              ; preds = %141, %66
  br label %143

143:                                              ; preds = %142, %63
  %144 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %144, i32** %13, align 8
  br label %157

145:                                              ; preds = %51
  %146 = load i64, i64* %28, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  %149 = load i32, i32* @svn_wc_merge_unchanged, align 4
  %150 = load i32*, i32** %15, align 8
  store i32 %149, i32* %150, align 4
  %151 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %151, i32** %13, align 8
  br label %157

152:                                              ; preds = %145
  br label %153

153:                                              ; preds = %152
  %154 = load i32, i32* @svn_wc_merge_no_merge, align 4
  %155 = load i32*, i32** %15, align 8
  store i32 %154, i32* %155, align 4
  %156 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %156, i32** %13, align 8
  br label %157

157:                                              ; preds = %153, %148, %143, %47
  %158 = load i32*, i32** %13, align 8
  ret i32* %158
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_io_check_special_path(i8*, i64*, i64*, i32*) #1

declare dso_local i32 @svn_io_files_contents_three_same_p(i64*, i64*, i64*, i8*, i8*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_get_wcroot(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_is_child(i8*, i8*, i32*) #1

declare dso_local i32 @svn_stream_open_readonly(i32**, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_temp_wcroot_tempdir(i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_stream_open_unique(i32**, i8**, i8*, i32, i32*, i32*) #1

declare dso_local i32 @svn_stream_copy3(i32*, i32*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32*, i8*, i8*, i64, i64, i32*, i32*) #1

declare dso_local i32* @svn_wc__wq_merge(i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__wq_build_file_remove(i32**, i32*, i8*, i8*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
