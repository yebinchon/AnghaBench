; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_min_max_revisions.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_min_max_revisions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_min_max_revisions(i32* %0, i32* %1, i32* %2, i8* %3, i32 %4, i32* %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32* %5, i32** %12, align 8
  %15 = load i8*, i8** %10, align 8
  %16 = call i32 @svn_dirent_is_absolute(i8* %15)
  %17 = call i32 @SVN_ERR_ASSERT(i32 %16)
  %18 = load i32*, i32** %9, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = load i32*, i32** %12, align 8
  %22 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %13, i8** %14, i32* %18, i8* %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %13, align 8
  %25 = call i32 @VERIFY_USABLE_WCROOT(i32* %24)
  %26 = load i32*, i32** %7, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i8*, i8** %14, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32*, i32** %12, align 8
  %32 = call i32 @get_min_max_revisions(i32* %26, i32* %27, i32* %28, i8* %29, i32 %30, i32* %31)
  %33 = call i32* @svn_error_trace(i32 %32)
  ret i32* %33
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @get_min_max_revisions(i32*, i32*, i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
