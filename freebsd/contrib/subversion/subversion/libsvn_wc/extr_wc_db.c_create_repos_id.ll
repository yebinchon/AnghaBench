; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_create_repos_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_create_repos_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_SELECT_REPOSITORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"s\00", align 1
@STMT_INSERT_REPOSITORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"ss\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i8*, i8*, i32*, i32*)* @create_repos_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @create_repos_id(i32* %0, i8* %1, i8* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = load i32, i32* @STMT_SELECT_REPOSITORY, align 4
  %17 = call i32 @svn_sqlite__get_statement(i32** %12, i32* %15, i32 %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i32*, i32** %12, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 (i32*, i8*, i8*, ...) @svn_sqlite__bindf(i32* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %12, align 8
  %24 = call i32 @svn_sqlite__step(i64* %14, i32* %23)
  %25 = call i32 @SVN_ERR(i32 %24)
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %5
  %29 = load i32*, i32** %12, align 8
  %30 = call i32 @svn_sqlite__column_int64(i32* %29, i32 0)
  %31 = load i32*, i32** %7, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @svn_sqlite__reset(i32* %32)
  %34 = call i32* @svn_error_trace(i32 %33)
  store i32* %34, i32** %6, align 8
  br label %52

35:                                               ; preds = %5
  %36 = load i32*, i32** %12, align 8
  %37 = call i32 @svn_sqlite__reset(i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* @STMT_INSERT_REPOSITORY, align 4
  %41 = call i32 @svn_sqlite__get_statement(i32** %13, i32* %39, i32 %40)
  %42 = call i32 @SVN_ERR(i32 %41)
  %43 = load i32*, i32** %13, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = load i8*, i8** %9, align 8
  %46 = call i32 (i32*, i8*, i8*, ...) @svn_sqlite__bindf(i32* %43, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %44, i8* %45)
  %47 = call i32 @SVN_ERR(i32 %46)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32*, i32** %13, align 8
  %50 = call i32 @svn_sqlite__insert(i32* %48, i32* %49)
  %51 = call i32* @svn_error_trace(i32 %50)
  store i32* %51, i32** %6, align 8
  br label %52

52:                                               ; preds = %35, %28
  %53 = load i32*, i32** %6, align 8
  ret i32* %53
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i8*, ...) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__insert(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
