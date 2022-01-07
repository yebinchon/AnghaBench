; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_verify_wcroot.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_verify_wcroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_ALL_NODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"i\00", align 1
@TRUE = common dso_local global i64 0, align 8
@STMT_SELECT_NODE_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i32*)* @verify_wcroot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @verify_wcroot(%struct.TYPE_3__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i32*, i32** %4, align 8
  %14 = call i32* @svn_pool_create(i32* %13)
  store i32* %14, i32** %6, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STMT_SELECT_ALL_NODES, align 4
  %19 = call i32 @svn_sqlite__get_statement(i32** %5, i32 %17, i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %5, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32*, i8*, i32, ...) @svn_sqlite__bindf(i32* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = call i32 @SVN_ERR(i32 %25)
  br label %27

27:                                               ; preds = %102, %2
  %28 = load i64, i64* @TRUE, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %103

30:                                               ; preds = %27
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @svn_pool_clear(i32* %31)
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @svn_sqlite__step(i32* %7, i32* %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %30
  br label %103

39:                                               ; preds = %30
  %40 = load i32*, i32** %5, align 8
  %41 = call i32 @svn_sqlite__column_int(i32* %40, i32 0)
  store i32 %41, i32* %10, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32*, i32** %6, align 8
  %44 = call i8* @svn_sqlite__column_text(i32* %42, i32 1, i32* %43)
  store i8* %44, i8** %8, align 8
  %45 = load i32*, i32** %5, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i8* @svn_sqlite__column_text(i32* %45, i32 2, i32* %46)
  store i8* %47, i8** %9, align 8
  %48 = load i8*, i8** %9, align 8
  %49 = icmp eq i8* %48, null
  br i1 %49, label %50, label %57

50:                                               ; preds = %39
  %51 = load i8*, i8** %8, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 0
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = icmp eq i32 %54, 0
  %56 = zext i1 %55 to i32
  br label %65

57:                                               ; preds = %39
  %58 = load i8*, i8** %8, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i32 @svn_relpath_dirname(i8* %58, i32* %59)
  %61 = load i8*, i8** %9, align 8
  %62 = call i64 @strcmp(i32 %60, i8* %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  br label %65

65:                                               ; preds = %57, %50
  %66 = phi i32 [ %56, %50 ], [ %64, %57 ]
  %67 = call i32 @VERIFY(i32 %66)
  %68 = load i32, i32* %10, align 4
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @relpath_depth(i8* %69)
  %71 = icmp sle i32 %68, %70
  %72 = zext i1 %71 to i32
  %73 = call i32 @VERIFY(i32 %72)
  %74 = load i8*, i8** %9, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %102

76:                                               ; preds = %65
  %77 = load i32*, i32** %5, align 8
  %78 = call i64 @svn_sqlite__column_is_null(i32* %77, i32 3)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %102

80:                                               ; preds = %76
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @STMT_SELECT_NODE_INFO, align 4
  %85 = call i32 @svn_sqlite__get_statement(i32** %11, i32 %83, i32 %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i32*, i32** %11, align 8
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i8*, i8** %9, align 8
  %92 = call i32 (i32*, i8*, i32, ...) @svn_sqlite__bindf(i32* %87, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %90, i8* %91)
  %93 = call i32 @SVN_ERR(i32 %92)
  %94 = load i32*, i32** %11, align 8
  %95 = call i32 @svn_sqlite__step(i32* %12, i32* %94)
  %96 = call i32 @SVN_ERR(i32 %95)
  %97 = load i32, i32* %12, align 4
  %98 = call i32 @VERIFY(i32 %97)
  %99 = load i32*, i32** %11, align 8
  %100 = call i32 @svn_sqlite__reset(i32* %99)
  %101 = call i32 @SVN_ERR(i32 %100)
  br label %102

102:                                              ; preds = %80, %76, %65
  br label %27

103:                                              ; preds = %38, %27
  %104 = load i32*, i32** %6, align 8
  %105 = call i32 @svn_pool_destroy(i32* %104)
  %106 = load i32*, i32** %5, align 8
  %107 = call i32 @svn_sqlite__reset(i32* %106)
  %108 = call i32* @svn_error_trace(i32 %107)
  ret i32* %108
}

declare dso_local i32* @svn_pool_create(i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, ...) #1

declare dso_local i32 @svn_pool_clear(i32*) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i64 @svn_sqlite__column_is_null(i32*, i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_pool_destroy(i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
