; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_translated_file2.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_translated_file2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_translated_file2(i8** %0, i8* %1, i8* %2, i32* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i8**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = call i32 @svn_dirent_get_absolute(i8** %13, i8* %17, i32* %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %12, align 8
  %23 = call i32 @svn_dirent_get_absolute(i8** %16, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %16, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = call i32 @svn_wc__adm_get_db(i32* %27)
  %29 = load i8*, i8** %13, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_wc__internal_translated_file(i8** %25, i8* %26, i32 %28, i8* %29, i32 %30, i32* null, i32* null, i32* %31, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i8**, i8*** %7, align 8
  %36 = load i8*, i8** %35, align 8
  %37 = load i8*, i8** %16, align 8
  %38 = call i64 @strcmp(i8* %36, i8* %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %6
  %41 = load i8*, i8** %8, align 8
  %42 = load i8**, i8*** %7, align 8
  store i8* %41, i8** %42, align 8
  br label %77

43:                                               ; preds = %6
  %44 = load i8*, i8** %9, align 8
  %45 = call i32 @svn_dirent_is_absolute(i8* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %76, label %47

47:                                               ; preds = %43
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @svn_io_temp_dir(i8** %15, i32* %48)
  %50 = call i32 @SVN_ERR(i32 %49)
  %51 = load i8*, i8** %15, align 8
  %52 = load i8**, i8*** %7, align 8
  %53 = load i8*, i8** %52, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = call i8* @svn_dirent_is_child(i8* %51, i8* %53, i32* %54)
  %56 = icmp ne i8* %55, null
  br i1 %56, label %75, label %57

57:                                               ; preds = %47
  %58 = load i32*, i32** %12, align 8
  %59 = call i32 @svn_dirent_get_absolute(i8** %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i8*, i8** %14, align 8
  %62 = load i8**, i8*** %7, align 8
  %63 = load i8*, i8** %62, align 8
  %64 = load i32*, i32** %12, align 8
  %65 = call i8* @svn_dirent_is_child(i8* %61, i8* %63, i32* %64)
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %74

67:                                               ; preds = %57
  %68 = load i8*, i8** %14, align 8
  %69 = load i8**, i8*** %7, align 8
  %70 = load i8*, i8** %69, align 8
  %71 = load i32*, i32** %12, align 8
  %72 = call i8* @svn_dirent_is_child(i8* %68, i8* %70, i32* %71)
  %73 = load i8**, i8*** %7, align 8
  store i8* %72, i8** %73, align 8
  br label %74

74:                                               ; preds = %67, %57
  br label %75

75:                                               ; preds = %74, %47
  br label %76

76:                                               ; preds = %75, %43
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %78
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__internal_translated_file(i8**, i8*, i32, i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @svn_wc__adm_get_db(i32*) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @svn_io_temp_dir(i8**, i32*) #1

declare dso_local i8* @svn_dirent_is_child(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
