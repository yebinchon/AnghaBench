; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_make_copy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_make_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_make_copy(i32* %0, i8* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @svn_dirent_is_absolute(i8* %13)
  %15 = call i32 @SVN_ERR_ASSERT(i32 %14)
  %16 = load i32*, i32** %6, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = load i32*, i32** %10, align 8
  %20 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %11, i8** %12, i32* %16, i8* %17, i32* %18, i32* %19)
  %21 = call i32 @SVN_ERR(i32 %20)
  %22 = load i32*, i32** %11, align 8
  %23 = call i32 @VERIFY_USABLE_WCROOT(i32* %22)
  %24 = load i32*, i32** %11, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load i32, i32* @FALSE, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_wc__db_op_make_copy_internal(i32* %24, i8* %25, i32 %26, i32* %27, i32* %28, i32* %29)
  %31 = load i32*, i32** %11, align 8
  %32 = call i32 @SVN_WC__DB_WITH_TXN(i32 %30, i32* %31)
  %33 = load i32*, i32** %11, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i32, i32* @svn_depth_infinity, align 4
  %36 = load i32*, i32** %10, align 8
  %37 = call i32 @flush_entries(i32* %33, i8* %34, i32 %35, i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %39
}

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_dirent_is_absolute(i8*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @svn_wc__db_op_make_copy_internal(i32*, i8*, i32, i32*, i32*, i32*) #1

declare dso_local i32 @flush_entries(i32*, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
