; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_svn_wc_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_old-and-busted.c_svn_wc_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc_entry(i32** %0, i8* %1, i32* %2, i64 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store i32** %0, i32*** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32* %4, i32** %11, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = call i32* @svn_wc__adm_get_db(i32* %19)
  store i32* %20, i32** %12, align 8
  %21 = load i8*, i8** %8, align 8
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @svn_dirent_get_absolute(i8** %13, i8* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load i32*, i32** %12, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = call i32* @svn_wc__adm_retrieve_internal2(i32* %25, i8* %26, i32* %27)
  store i32* %28, i32** %14, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = icmp eq i32* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %5
  %32 = load i8*, i8** %13, align 8
  %33 = load i32*, i32** %11, align 8
  %34 = call i32 @svn_dirent_split(i8** %17, i8** %15, i8* %32, i32* %33)
  %35 = load i32*, i32** %12, align 8
  %36 = load i8*, i8** %17, align 8
  %37 = load i32*, i32** %11, align 8
  %38 = call i32* @svn_wc__adm_retrieve_internal2(i32* %35, i8* %36, i32* %37)
  store i32* %38, i32** %14, align 8
  br label %40

39:                                               ; preds = %5
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  br label %40

40:                                               ; preds = %39, %31
  %41 = load i32*, i32** %14, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i32**, i32*** %7, align 8
  store i32* null, i32** %44, align 8
  %45 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %45, i32** %6, align 8
  br label %74

46:                                               ; preds = %40
  %47 = load i32*, i32** %14, align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_wc__entries_read_internal(i32** %16, i32* %47, i32 %48, i32* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %16, align 8
  %53 = load i8*, i8** %15, align 8
  %54 = call i32* @svn_hash_gets(i32* %52, i8* %53)
  %55 = load i32**, i32*** %7, align 8
  store i32* %54, i32** %55, align 8
  %56 = load i64, i64* %10, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %72, label %58

58:                                               ; preds = %46
  %59 = load i32**, i32*** %7, align 8
  %60 = load i32*, i32** %59, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %72

62:                                               ; preds = %58
  %63 = load i32**, i32*** %7, align 8
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @svn_wc__entry_is_hidden(i64* %18, i32* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i64, i64* %18, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %62
  %70 = load i32**, i32*** %7, align 8
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %69, %62
  br label %72

72:                                               ; preds = %71, %58, %46
  %73 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %73, i32** %6, align 8
  br label %74

74:                                               ; preds = %72, %43
  %75 = load i32*, i32** %6, align 8
  ret i32* %75
}

declare dso_local i32* @svn_wc__adm_get_db(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_dirent_get_absolute(i8**, i8*, i32*) #1

declare dso_local i32* @svn_wc__adm_retrieve_internal2(i32*, i8*, i32*) #1

declare dso_local i32 @svn_dirent_split(i8**, i8**, i8*, i32*) #1

declare dso_local i32 @svn_wc__entries_read_internal(i32**, i32*, i32, i32*) #1

declare dso_local i32* @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @svn_wc__entry_is_hidden(i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
