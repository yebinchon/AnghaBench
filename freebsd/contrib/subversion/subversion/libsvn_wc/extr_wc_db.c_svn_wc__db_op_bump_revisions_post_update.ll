; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_bump_revisions_post_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_op_bump_revisions_post_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SVN_NO_ERROR = common dso_local global i32* null, align 8
@svn_depth_unknown = common dso_local global i32 0, align 4
@svn_depth_infinity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_op_bump_revisions_post_update(i32* %0, i8* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6, i32* %7, i32* %8, i32 %9, i32 %10, i8* %11, i32* %12) #0 {
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i32*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i32*, align 8
  store i32* %0, i32** %15, align 8
  store i8* %1, i8** %16, align 8
  store i32 %2, i32* %17, align 4
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i32 %6, i32* %21, align 4
  store i32* %7, i32** %22, align 8
  store i32* %8, i32** %23, align 8
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i8* %11, i8** %26, align 8
  store i32* %12, i32** %27, align 8
  %30 = load i32*, i32** %15, align 8
  %31 = load i8*, i8** %16, align 8
  %32 = load i32*, i32** %27, align 8
  %33 = load i32*, i32** %27, align 8
  %34 = call i32 @svn_wc__db_wcroot_parse_local_abspath(i32** %29, i8** %28, i32* %30, i8* %31, i32* %32, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %29, align 8
  %37 = call i32 @VERIFY_USABLE_WCROOT(i32* %36)
  %38 = load i32*, i32** %22, align 8
  %39 = load i8*, i8** %28, align 8
  %40 = call i64 @svn_hash_gets(i32* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %13
  %43 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %43, i32** %14, align 8
  br label %69

44:                                               ; preds = %13
  %45 = load i32, i32* %17, align 4
  %46 = load i32, i32* @svn_depth_unknown, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @svn_depth_infinity, align 4
  store i32 %49, i32* %17, align 4
  br label %50

50:                                               ; preds = %48, %44
  %51 = load i32*, i32** %29, align 8
  %52 = load i8*, i8** %28, align 8
  %53 = load i32*, i32** %15, align 8
  %54 = load i32, i32* %17, align 4
  %55 = load i8*, i8** %18, align 8
  %56 = load i8*, i8** %19, align 8
  %57 = load i8*, i8** %20, align 8
  %58 = load i32, i32* %21, align 4
  %59 = load i32*, i32** %22, align 8
  %60 = load i32*, i32** %23, align 8
  %61 = load i32, i32* %24, align 4
  %62 = load i32, i32* %25, align 4
  %63 = load i8*, i8** %26, align 8
  %64 = load i32*, i32** %27, align 8
  %65 = call i32 @bump_revisions_post_update(i32* %51, i8* %52, i32* %53, i32 %54, i8* %55, i8* %56, i8* %57, i32 %58, i32* %59, i32* %60, i32 %61, i32 %62, i8* %63, i32* %64)
  %66 = load i32*, i32** %29, align 8
  %67 = call i32 @SVN_WC__DB_WITH_TXN(i32 %65, i32* %66)
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %14, align 8
  br label %69

69:                                               ; preds = %50, %42
  %70 = load i32*, i32** %14, align 8
  ret i32* %70
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_wcroot_parse_local_abspath(i32**, i8**, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @VERIFY_USABLE_WCROOT(i32*) #1

declare dso_local i64 @svn_hash_gets(i32*, i8*) #1

declare dso_local i32 @SVN_WC__DB_WITH_TXN(i32, i32*) #1

declare dso_local i32 @bump_revisions_post_update(i32*, i8*, i32*, i32, i8*, i8*, i8*, i32, i32*, i32*, i32, i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
