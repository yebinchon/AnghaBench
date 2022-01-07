; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__expand_keywords.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_translate.c_svn_wc__expand_keywords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_INVALID_REVNUM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"%ld\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__expand_keywords(i32** %0, i32* %1, i8* %2, i8* %3, i8* %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store i32** %0, i32*** %9, align 8
  store i32* %1, i32** %10, align 8
  store i8* %2, i8** %11, align 8
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %46, label %25

25:                                               ; preds = %8
  %26 = load i32*, i32** %10, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i32*, i32** %16, align 8
  %29 = load i32*, i32** %16, align 8
  %30 = call i32 @svn_wc__db_read_info(i32* null, i32* null, i32* null, i8** %22, i8** %21, i32* null, i32* %17, i64* %18, i8** %19, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* null, i32* %26, i8* %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i8*, i8** %22, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load i32*, i32** %10, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = load i32*, i32** %16, align 8
  %38 = load i32*, i32** %16, align 8
  %39 = call i32 @svn_wc__db_read_repos_info(i32* null, i8** %22, i8** %21, i32* null, i32* %35, i8* %36, i32* %37, i32* %38)
  %40 = call i32 @SVN_ERR(i32 %39)
  br label %41

41:                                               ; preds = %34, %25
  %42 = load i8*, i8** %21, align 8
  %43 = load i8*, i8** %22, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = call i8* @svn_path_url_add_component2(i8* %42, i8* %43, i32* %44)
  store i8* %45, i8** %20, align 8
  br label %48

46:                                               ; preds = %8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %20, align 8
  %47 = load i32, i32* @SVN_INVALID_REVNUM, align 4
  store i32 %47, i32* %17, align 4
  store i64 0, i64* %18, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %19, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  br label %48

48:                                               ; preds = %46, %41
  %49 = load i32**, i32*** %9, align 8
  %50 = load i8*, i8** %13, align 8
  %51 = load i32*, i32** %16, align 8
  %52 = load i32, i32* %17, align 4
  %53 = call i32 @apr_psprintf(i32* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i8*, i8** %20, align 8
  %55 = load i8*, i8** %21, align 8
  %56 = load i64, i64* %18, align 8
  %57 = load i8*, i8** %19, align 8
  %58 = load i32*, i32** %15, align 8
  %59 = call i32 @svn_subst_build_keywords3(i32** %49, i8* %50, i32 %53, i8* %54, i8* %55, i64 %56, i8* %57, i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32**, i32*** %9, align 8
  %62 = load i32*, i32** %61, align 8
  %63 = call i64 @apr_hash_count(i32* %62)
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %48
  %66 = load i32**, i32*** %9, align 8
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %65, %48
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %68
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_read_info(i32*, i32*, i32*, i8**, i8**, i32*, i32*, i64*, i8**, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_read_repos_info(i32*, i8**, i8**, i32*, i32*, i8*, i32*, i32*) #1

declare dso_local i8* @svn_path_url_add_component2(i8*, i8*, i32*) #1

declare dso_local i32 @svn_subst_build_keywords3(i32**, i8*, i32, i8*, i8*, i64, i8*, i32*) #1

declare dso_local i32 @apr_psprintf(i32*, i8*, i32) #1

declare dso_local i64 @apr_hash_count(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
