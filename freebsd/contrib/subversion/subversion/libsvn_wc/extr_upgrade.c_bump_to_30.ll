; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_to_30.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_to_30.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bump_baton = type { i32 }

@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE = common dso_local global i32 0, align 4
@STMT_UPGRADE_TO_30 = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*)* @bump_to_30 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_to_30(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.bump_baton*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = bitcast i8* %14 to %struct.bump_baton*
  store %struct.bump_baton* %15, %struct.bump_baton** %8, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32, i32* @TRUE, align 4
  %19 = load i32, i32* @FALSE, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = call i32 @svn_wc__db_open(i32** %12, i32* null, i32 %18, i32 %19, i32* %20, i32* %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @STMT_UPGRADE_30_SELECT_CONFLICT_SEPARATE, align 4
  %26 = call i32 @svn_sqlite__get_statement(i32** %11, i32* %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32 %26)
  %28 = load i32*, i32** %11, align 8
  %29 = call i32 @svn_sqlite__step(i64* %9, i32* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  br label %31

31:                                               ; preds = %53, %3
  %32 = load i64, i64* %9, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %57

34:                                               ; preds = %31
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_pool_clear(i32* %35)
  %37 = load i32*, i32** %12, align 8
  %38 = load %struct.bump_baton*, %struct.bump_baton** %8, align 8
  %39 = getelementptr inbounds %struct.bump_baton, %struct.bump_baton* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32*, i32** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load i32*, i32** %10, align 8
  %44 = call i32* @bump_30_upgrade_one_conflict(i32* %37, i32 %40, i32* %41, i32* %42, i32* %43)
  store i32* %44, i32** %13, align 8
  %45 = load i32*, i32** %13, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %34
  %48 = load i32*, i32** %13, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call i32 @svn_sqlite__reset(i32* %49)
  %51 = call i32 @svn_error_compose_create(i32* %48, i32 %50)
  %52 = call i32* @svn_error_trace(i32 %51)
  store i32* %52, i32** %4, align 8
  br label %69

53:                                               ; preds = %34
  %54 = load i32*, i32** %11, align 8
  %55 = call i32 @svn_sqlite__step(i64* %9, i32* %54)
  %56 = call i32 @SVN_ERR(i32 %55)
  br label %31

57:                                               ; preds = %31
  %58 = load i32*, i32** %11, align 8
  %59 = call i32 @svn_sqlite__reset(i32* %58)
  %60 = call i32 @SVN_ERR(i32 %59)
  %61 = load i32*, i32** %6, align 8
  %62 = load i32, i32* @STMT_UPGRADE_TO_30, align 4
  %63 = call i32 @svn_sqlite__exec_statements(i32* %61, i32 %62)
  %64 = call i32 @SVN_ERR(i32 %63)
  %65 = load i32*, i32** %12, align 8
  %66 = call i32 @svn_wc__db_close(i32* %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %68, i32** %4, align 8
  br label %69

69:                                               ; preds = %57, %47
  %70 = load i32*, i32** %4, align 8
  ret i32* %70
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__db_open(i32**, i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32* @bump_30_upgrade_one_conflict(i32*, i32, i32*, i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_error_compose_create(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__exec_statements(i32*, i32) #1

declare dso_local i32 @svn_wc__db_close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
