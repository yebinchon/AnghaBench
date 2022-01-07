; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_copy_working_node.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db_update_move.c_copy_working_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_INSERT_WORKING_NODE_COPY_FROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"issdst\00", align 1
@presence_map = common dso_local global i32 0, align 4
@svn_wc__db_status_normal = common dso_local global i32 0, align 4
@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_INSERT_ACTUAL_NODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"issbs\00", align 1
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i8*, %struct.TYPE_3__*, i32*)* @copy_working_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @copy_working_node(i8* %0, i8* %1, %struct.TYPE_3__* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load i8*, i8** %6, align 8
  %15 = load i32*, i32** %8, align 8
  %16 = call i8* @svn_relpath_dirname(i8* %14, i32* %15)
  store i8* %16, i8** %11, align 8
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @STMT_INSERT_WORKING_NODE_COPY_FROM, align 4
  %21 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %19, i32 %20)
  %22 = call i32 @SVN_ERR(i32 %21)
  %23 = load i32*, i32** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i8*, i8** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @relpath_depth(i8* %29)
  %31 = load i8*, i8** %11, align 8
  %32 = load i32, i32* @presence_map, align 4
  %33 = load i32, i32* @svn_wc__db_status_normal, align 4
  %34 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %23, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %26, i8* %27, i8* %28, i32 %30, i8* %31, i32 %32, i32 %33)
  %35 = call i32 @SVN_ERR(i32 %34)
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @svn_sqlite__step_done(i32* %36)
  %38 = call i32 @SVN_ERR(i32 %37)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %43 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %41, i32 %42)
  %44 = call i32 @SVN_ERR(i32 %43)
  %45 = load i32*, i32** %9, align 8
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %45, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %48, i8* %49)
  %51 = call i32 @SVN_ERR(i32 %50)
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 @svn_sqlite__step(i64* %10, i32* %52)
  %54 = call i32 @SVN_ERR(i32 %53)
  %55 = load i64, i64* %10, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i8* @svn_sqlite__column_blob(i32* %58, i32 1, i32* %12, i32* %59)
  store i8* %60, i8** %13, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = call i32 @svn_sqlite__reset(i32* %61)
  %63 = call i32 @SVN_ERR(i32 %62)
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @STMT_INSERT_ACTUAL_NODE, align 4
  %68 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %66, i32 %67)
  %69 = call i32 @SVN_ERR(i32 %68)
  %70 = load i32*, i32** %9, align 8
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i8*, i8** %6, align 8
  %75 = load i8*, i8** %6, align 8
  %76 = load i32*, i32** %8, align 8
  %77 = call i8* @svn_relpath_dirname(i8* %75, i32* %76)
  %78 = load i8*, i8** %13, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 (i32*, i8*, i32, i8*, ...) @svn_sqlite__bindf(i32* %70, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %73, i8* %74, i8* %77, i8* %78, i32 %79, i8* null)
  %81 = call i32 @SVN_ERR(i32 %80)
  %82 = load i32*, i32** %9, align 8
  %83 = call i32 @svn_sqlite__step(i64* %10, i32* %82)
  %84 = call i32 @SVN_ERR(i32 %83)
  br label %85

85:                                               ; preds = %57, %4
  %86 = load i32*, i32** %9, align 8
  %87 = call i32 @svn_sqlite__reset(i32* %86)
  %88 = call i32 @SVN_ERR(i32 %87)
  %89 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %89
}

declare dso_local i8* @svn_relpath_dirname(i8*, i32*) #1

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, ...) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i8* @svn_sqlite__column_blob(i32*, i32, i32*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
