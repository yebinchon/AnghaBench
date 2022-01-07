; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_wq_fetch_next.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_wq_fetch_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_wq_fetch_next(i32* %0, i32** %1, i32* %2, i8* %3, i32 %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %8, align 8
  store i32** %1, i32*** %9, align 8
  store i32* %2, i32** %10, align 8
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32* %5, i32** %13, align 8
  store i32* %6, i32** %14, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  %19 = zext i1 %18 to i32
  %20 = call i32 @SVN_ERR_ASSERT(i32 %19)
  %21 = load i32**, i32*** %9, align 8
  %22 = icmp ne i32** %21, null
  %23 = zext i1 %22 to i32
  %24 = call i32 @SVN_ERR_ASSERT(i32 %23)
  %25 = load i8*, i8** %11, align 8
  %26 = call i32 @svn_dirent_is_absolute(i8* %25)
  %27 = call i32 @SVN_ERR_ASSERT(i32 %26)
  %28 = load i32*, i32** %10, align 8
  %29 = load i8*, i8** %11, align 8
  %30 = load i32*, i32** %14, align 8
  %31 = load i32*, i32** %14, align 8
  %32 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %15, i8** %16, i32* %28, i8* %29, i32* %30, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %15, align 8
  %35 = call i32 @VERIFY_USABLE_WCROOT(i32* %34)
  %36 = load i32*, i32** %8, align 8
  %37 = load i32**, i32*** %9, align 8
  %38 = load i32*, i32** %15, align 8
  %39 = load i8*, i8** %16, align 8
  %40 = load i32, i32* %12, align 4
  %41 = load i32*, i32** %13, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = call i32 @wq_fetch_next(i32* %36, i32** %37, i32* %38, i8* %39, i32 %40, i32* %41, i32* %42)
  %44 = load i32*, i32** %15, align 8
  %45 = call i32 @SVN_WC__DB_WITH_TXN(i32 %43, i32* %44)
  %46 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %46
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @wq_fetch_next(i32*, i32**, i32*, i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
