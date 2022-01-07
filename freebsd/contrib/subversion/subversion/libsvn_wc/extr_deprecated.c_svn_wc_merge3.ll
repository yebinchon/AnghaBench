; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_merge3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conflict_func_1to2_baton = type { i8*, i64 }

@conflict_func_1to2_wrapper = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_merge3(i32* %0, i8* %1, i8* %2, i8* %3, i32* %4, i8* %5, i8* %6, i8* %7, i32 %8, i8* %9, i32* %10, i32* %11, i64 %12, i8* %13, i32* %14) #0 {
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i8*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i64, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i8*, align 8
  %34 = alloca i8*, align 8
  %35 = alloca i8*, align 8
  %36 = alloca %struct.conflict_func_1to2_baton, align 8
  store i32* %0, i32** %16, align 8
  store i8* %1, i8** %17, align 8
  store i8* %2, i8** %18, align 8
  store i8* %3, i8** %19, align 8
  store i32* %4, i32** %20, align 8
  store i8* %5, i8** %21, align 8
  store i8* %6, i8** %22, align 8
  store i8* %7, i8** %23, align 8
  store i32 %8, i32* %24, align 4
  store i8* %9, i8** %25, align 8
  store i32* %10, i32** %26, align 8
  store i32* %11, i32** %27, align 8
  store i64 %12, i64* %28, align 8
  store i8* %13, i8** %29, align 8
  store i32* %14, i32** %30, align 8
  %37 = load i32*, i32** %20, align 8
  %38 = call i32* @svn_wc__adm_get_db(i32* %37)
  store i32* %38, i32** %32, align 8
  %39 = load i8*, i8** %17, align 8
  %40 = load i32*, i32** %30, align 8
  %41 = call i32 @svn_dirent_get_absolute(i8** %33, i8* %39, i32* %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i8*, i8** %18, align 8
  %44 = load i32*, i32** %30, align 8
  %45 = call i32 @svn_dirent_get_absolute(i8** %34, i8* %43, i32* %44)
  %46 = call i32 @SVN_ERR(i32 %45)
  %47 = load i8*, i8** %19, align 8
  %48 = load i32*, i32** %30, align 8
  %49 = call i32 @svn_dirent_get_absolute(i8** %35, i8* %47, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i32*, i32** %32, align 8
  %52 = load i32*, i32** %30, align 8
  %53 = call i32 @svn_wc__context_create_with_db(i32** %31, i32* null, i32* %51, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %28, align 8
  %56 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %36, i32 0, i32 1
  store i64 %55, i64* %56, align 8
  %57 = load i8*, i8** %29, align 8
  %58 = getelementptr inbounds %struct.conflict_func_1to2_baton, %struct.conflict_func_1to2_baton* %36, i32 0, i32 0
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %25, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %66

61:                                               ; preds = %15
  %62 = load i8*, i8** %25, align 8
  %63 = load i32*, i32** %30, align 8
  %64 = call i32 @svn_path_cstring_to_utf8(i8** %25, i8* %62, i32* %63)
  %65 = call i32 @SVN_ERR(i32 %64)
  br label %66

66:                                               ; preds = %61, %15
  %67 = load i32*, i32** %16, align 8
  %68 = load i32*, i32** %31, align 8
  %69 = load i8*, i8** %33, align 8
  %70 = load i8*, i8** %34, align 8
  %71 = load i8*, i8** %35, align 8
  %72 = load i8*, i8** %21, align 8
  %73 = load i8*, i8** %22, align 8
  %74 = load i8*, i8** %23, align 8
  %75 = load i32, i32* %24, align 4
  %76 = load i8*, i8** %25, align 8
  %77 = load i32*, i32** %26, align 8
  %78 = load i32*, i32** %27, align 8
  %79 = load i64, i64* %28, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32*, i32** @conflict_func_1to2_wrapper, align 8
  br label %84

83:                                               ; preds = %66
  br label %84

84:                                               ; preds = %83, %81
  %85 = phi i32* [ %82, %81 ], [ null, %83 ]
  %86 = load i32*, i32** %30, align 8
  %87 = call i32 @svn_wc_merge4(i32* %67, i32* %68, i8* %69, i8* %70, i8* %71, i8* %72, i8* %73, i8* %74, i32* null, i32* null, i32 %75, i8* %76, i32* %77, i32* %78, i32* %85, %struct.conflict_func_1to2_baton* %36, i32* null, i32* null, i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** %31, align 8
  %90 = call i32 @svn_wc_context_destroy(i32* %89)
  %91 = call i32* @svn_error_trace(i32 %90)
  ret i32* %91
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_path_cstring_to_utf8(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_merge4(i32*, i32*, i8*, i8*, i8*, i8*, i8*, i8*, i32*, i32*, i32, i8*, i32*, i32*, i32*, %struct.conflict_func_1to2_baton*, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
