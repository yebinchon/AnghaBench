; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_add3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_deprecated.c_svn_wc_add3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@svn_node_dir = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_add3(i8* %0, i32* %1, i32 %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i8* %8, i32* %9) #0 {
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  store i8* %0, i8** %11, align 8
  store i32* %1, i32** %12, align 8
  store i32 %2, i32* %13, align 4
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i8* %8, i8** %19, align 8
  store i32* %9, i32** %20, align 8
  %26 = load i32*, i32** %12, align 8
  %27 = call i32* @svn_wc__adm_get_db(i32* %26)
  store i32* %27, i32** %22, align 8
  %28 = load i32*, i32** %22, align 8
  %29 = load i32*, i32** %20, align 8
  %30 = call i32 @svn_wc__context_create_with_db(i32** %21, i32* null, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %20, align 8
  %34 = call i32 @svn_dirent_get_absolute(i8** %23, i8* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %21, align 8
  %37 = load i8*, i8** %23, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i8*, i8** %14, align 8
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %16, align 4
  %42 = load i8*, i8** %17, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i8*, i8** %19, align 8
  %45 = load i32*, i32** %20, align 8
  %46 = call i32 @svn_wc_add4(i32* %36, i8* %37, i32 %38, i8* %39, i32 %40, i32 %41, i8* %42, i32 %43, i8* %44, i32* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %22, align 8
  %49 = load i8*, i8** %23, align 8
  %50 = load i32*, i32** %20, align 8
  %51 = call i32* @svn_wc__adm_retrieve_internal2(i32* %48, i8* %49, i32* %50)
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %80

53:                                               ; preds = %10
  %54 = load i32*, i32** %22, align 8
  %55 = load i8*, i8** %23, align 8
  %56 = load i32, i32* @FALSE, align 4
  %57 = load i32, i32* @TRUE, align 4
  %58 = load i32, i32* @FALSE, align 4
  %59 = load i32*, i32** %20, align 8
  %60 = call i32 @svn_wc__db_read_kind(i64* %24, i32* %54, i8* %55, i32 %56, i32 %57, i32 %58, i32* %59)
  %61 = call i32 @SVN_ERR(i32 %60)
  %62 = load i64, i64* %24, align 8
  %63 = load i64, i64* @svn_node_dir, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %79

65:                                               ; preds = %53
  %66 = load i32*, i32** %12, align 8
  %67 = load i8*, i8** %11, align 8
  %68 = load i32, i32* @TRUE, align 4
  %69 = load i8*, i8** %14, align 8
  %70 = icmp ne i8* %69, null
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 -1, i32 0
  %73 = load i32, i32* %16, align 4
  %74 = load i8*, i8** %17, align 8
  %75 = load i32*, i32** %12, align 8
  %76 = call i32 @svn_wc_adm_access_pool(i32* %75)
  %77 = call i32 @svn_wc_adm_open3(i32** %25, i32* %66, i8* %67, i32 %68, i32 %72, i32 %73, i8* %74, i32 %76)
  %78 = call i32 @SVN_ERR(i32 %77)
  br label %79

79:                                               ; preds = %65, %53
  br label %80

80:                                               ; preds = %79, %10
  %81 = load i32*, i32** %21, align 8
  %82 = call i32 @svn_wc_context_destroy(i32* %81)
  %83 = call i32* @svn_error_trace(i32 %82)
  ret i32* %83
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__context_create_with_db(i32**, i32*, i32*, i32*) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc_add4(i32*, i8*, i32, i8*, i32, i32, i8*, i32, i8*, i32*) #1

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32*, i8*, i32*) #1

declare dso_local i32 @svn_wc__db_read_kind(i64*, i32*, i8*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_wc_adm_open3(i32**, i32*, i8*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @svn_wc_adm_access_pool(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_wc_context_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
