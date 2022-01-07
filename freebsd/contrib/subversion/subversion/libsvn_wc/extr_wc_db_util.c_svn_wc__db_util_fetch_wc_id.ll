; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_util.c_svn_wc__db_util_fetch_wc_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_util.c_svn_wc__db_util_fetch_wc_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_SELECT_WCROOT_NULL = common dso_local global i32 0, align 4
@SVN_ERR_WC_CORRUPT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Missing a row in WCROOT.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_util_fetch_wc_id(i32* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @STMT_SELECT_WCROOT_NULL, align 4
  %12 = call i32 @svn_sqlite__get_statement(i32** %8, i32* %10, i32 %11)
  %13 = call i32 @SVN_ERR(i32 %12)
  %14 = load i32*, i32** %8, align 8
  %15 = call i32 @svn_sqlite__step(i32* %9, i32* %14)
  %16 = call i32 @SVN_ERR(i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @SVN_ERR_WC_CORRUPT, align 4
  %21 = load i32*, i32** %8, align 8
  %22 = call i32 @svn_sqlite__reset(i32* %21)
  %23 = call i32 @_(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %24 = call i32* @svn_error_createf(i32 %20, i32 %22, i32 %23)
  store i32* %24, i32** %4, align 8
  br label %38

25:                                               ; preds = %3
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @svn_sqlite__column_is_null(i32* %26, i32 0)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @SVN_ERR_ASSERT(i32 %30)
  %32 = load i32*, i32** %8, align 8
  %33 = call i32 @svn_sqlite__column_int64(i32* %32, i32 0)
  %34 = load i32*, i32** %5, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @svn_sqlite__reset(i32* %35)
  %37 = call i32* @svn_error_trace(i32 %36)
  store i32* %37, i32** %4, align 8
  br label %38

38:                                               ; preds = %25, %19
  %39 = load i32*, i32** %4, align 8
  ret i32* %39
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_createf(i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i32) #1

declare dso_local i32 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
