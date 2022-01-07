; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_restore_file.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_adm_crawler.c_restore_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i64, i64, i32, i8*, i32*)* @restore_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @restore_file(i32* %0, i8* %1, i64 %2, i64 %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32* %0, i32** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32* %6, i32** %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = load i64, i64* %10, align 8
  %19 = load i32, i32* @TRUE, align 4
  %20 = load i32*, i32** %14, align 8
  %21 = load i32*, i32** %14, align 8
  %22 = call i32 @svn_wc__wq_build_file_install(i32** %15, i32* %16, i8* %17, i32* null, i64 %18, i32 %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %8, align 8
  %25 = load i8*, i8** %9, align 8
  %26 = load i32*, i32** %14, align 8
  %27 = call i32 @svn_dirent_dirname(i8* %25, i32* %26)
  %28 = load i32*, i32** %15, align 8
  %29 = load i32*, i32** %14, align 8
  %30 = call i32 @svn_wc__db_wq_add(i32* %24, i32 %27, i32* %28, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = load i8*, i8** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load i8*, i8** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = call i32 @svn_wc__wq_run(i32* %32, i8* %33, i32 %34, i8* %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i64, i64* %11, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %7
  %42 = load i32*, i32** %8, align 8
  %43 = load i8*, i8** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = load i8*, i8** %13, align 8
  %46 = load i32*, i32** %14, align 8
  %47 = call i32 @svn_wc__mark_resolved_text_conflict(i32* %42, i8* %43, i32 %44, i8* %45, i32* %46)
  %48 = call i32 @SVN_ERR(i32 %47)
  br label %49

49:                                               ; preds = %41, %7
  %50 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %50
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__wq_build_file_install(i32**, i32*, i8*, i32*, i64, i32, i32*, i32*) #1

declare dso_local i32 @svn_wc__db_wq_add(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_dirent_dirname(i8*, i32*) #1

declare dso_local i32 @svn_wc__wq_run(i32*, i8*, i32, i8*, i32*) #1

declare dso_local i32 @svn_wc__mark_resolved_text_conflict(i32*, i8*, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
