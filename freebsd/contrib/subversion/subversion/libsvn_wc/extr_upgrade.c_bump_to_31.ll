; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_to_31.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_upgrade.c_bump_to_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STMT_UPGRADE_TO_31 = common dso_local global i32 0, align 4
@STMT_UPGRADE_31_SELECT_WCROOT_NODES = common dso_local global i32 0, align 4
@STMT_UPDATE_IPROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32*, i32*)* @bump_to_31 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @bump_to_31(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32* @svn_pool_create(i32* %16)
  store i32* %17, i32** %11, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = call i32* @apr_array_make(i32* %18, i32 0, i32 8)
  store i32* %19, i32** %12, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* @STMT_UPGRADE_TO_31, align 4
  %22 = call i32* @svn_sqlite__exec_statements(i32* %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32* %22)
  %24 = load i32*, i32** %6, align 8
  %25 = load i32, i32* @STMT_UPGRADE_31_SELECT_WCROOT_NODES, align 4
  %26 = call i32* @svn_sqlite__get_statement(i32** %8, i32* %24, i32 %25)
  %27 = call i32 @SVN_ERR(i32* %26)
  %28 = load i32*, i32** %8, align 8
  %29 = call i32* @svn_sqlite__step(i64* %10, i32* %28)
  %30 = call i32 @SVN_ERR(i32* %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @STMT_UPDATE_IPROP, align 4
  %33 = call i32* @svn_sqlite__get_statement(i32** %9, i32* %31, i32 %32)
  store i32* %33, i32** %13, align 8
  %34 = load i32*, i32** %13, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %3
  %37 = load i32*, i32** %13, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = call i32* @svn_sqlite__reset(i32* %38)
  %40 = call i32* @svn_error_compose_create(i32* %37, i32* %39)
  store i32* %40, i32** %4, align 8
  br label %102

41:                                               ; preds = %3
  br label %42

42:                                               ; preds = %84, %41
  %43 = load i64, i64* %10, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %42
  %46 = load i32*, i32** %8, align 8
  %47 = call i8* @svn_sqlite__column_text(i32* %46, i32 1, i32* null)
  store i8* %47, i8** %14, align 8
  %48 = load i32*, i32** %8, align 8
  %49 = call i32 @svn_sqlite__column_int64(i32* %48, i32 0)
  store i32 %49, i32* %15, align 4
  %50 = load i32*, i32** %9, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i8*, i8** %14, align 8
  %53 = call i32* @svn_sqlite__bindf(i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %51, i8* %52)
  store i32* %53, i32** %13, align 8
  %54 = load i32*, i32** %13, align 8
  %55 = icmp ne i32* %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %45
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %12, align 8
  %59 = load i32*, i32** %11, align 8
  %60 = call i32* @svn_sqlite__bind_iprops(i32* %57, i32 3, i32* %58, i32* %59)
  store i32* %60, i32** %13, align 8
  br label %61

61:                                               ; preds = %56, %45
  %62 = load i32*, i32** %13, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %61
  %65 = load i32*, i32** %9, align 8
  %66 = call i32* @svn_sqlite__step_done(i32* %65)
  store i32* %66, i32** %13, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i32*, i32** %13, align 8
  %69 = icmp ne i32* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %67
  %71 = load i32*, i32** %8, align 8
  %72 = call i32* @svn_sqlite__step(i64* %10, i32* %71)
  store i32* %72, i32** %13, align 8
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32*, i32** %13, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %73
  %77 = load i32*, i32** %13, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @svn_sqlite__reset(i32* %78)
  %80 = load i32*, i32** %9, align 8
  %81 = call i32* @svn_sqlite__reset(i32* %80)
  %82 = call i32* @svn_error_compose_create(i32* %79, i32* %81)
  %83 = call i32* @svn_error_compose_create(i32* %77, i32* %82)
  store i32* %83, i32** %4, align 8
  br label %102

84:                                               ; preds = %73
  br label %42

85:                                               ; preds = %42
  %86 = load i32*, i32** %9, align 8
  %87 = call i32* @svn_sqlite__reset(i32* %86)
  store i32* %87, i32** %13, align 8
  %88 = load i32*, i32** %13, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load i32*, i32** %13, align 8
  %92 = load i32*, i32** %8, align 8
  %93 = call i32* @svn_sqlite__reset(i32* %92)
  %94 = call i32* @svn_error_compose_create(i32* %91, i32* %93)
  store i32* %94, i32** %4, align 8
  br label %102

95:                                               ; preds = %85
  %96 = load i32*, i32** %8, align 8
  %97 = call i32* @svn_sqlite__reset(i32* %96)
  %98 = call i32 @SVN_ERR(i32* %97)
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @svn_pool_destroy(i32* %99)
  %101 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %101, i32** %4, align 8
  br label %102

102:                                              ; preds = %95, %90, %76, %36
  %103 = load i32*, i32** %4, align 8
  ret i32* %103
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32* @apr_array_make(i32*, i32, i32) #1

declare dso_local i32 @SVN_ERR(i32*) #1

declare dso_local i32* @svn_sqlite__exec_statements(i32*, i32) #1

declare dso_local i32* @svn_sqlite__get_statement(i32**, i32*, i32) #1

declare dso_local i32* @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32* @svn_error_compose_create(i32*, i32*) #1

declare dso_local i32* @svn_sqlite__reset(i32*) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @svn_sqlite__column_int64(i32*, i32) #1

declare dso_local i32* @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32* @svn_sqlite__bind_iprops(i32*, i32, i32*, i32*) #1

declare dso_local i32* @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
