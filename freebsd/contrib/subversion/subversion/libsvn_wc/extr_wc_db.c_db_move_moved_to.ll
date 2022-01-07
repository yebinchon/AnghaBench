; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_move_moved_to.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_move_moved_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_UPDATE_MOVED_TO_RELPATH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"isds\00", align 1
@SVN_ERR_WC_PATH_NOT_FOUND = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32, i8*, i32, i8*, i32*)* @db_move_moved_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_move_moved_to(%struct.TYPE_3__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_3__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %9, align 8
  store i8* %1, i8** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32* %6, i32** %15, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STMT_UPDATE_MOVED_TO_RELPATH, align 4
  %22 = call i32 @svn_sqlite__get_statement(i32** %16, i32 %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %16, align 8
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %10, align 8
  %29 = load i32, i32* %11, align 4
  %30 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28, i32 %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32*, i32** %16, align 8
  %33 = call i32 @svn_sqlite__update(i32* %17, i32* %32)
  %34 = call i32 @SVN_ERR(i32 %33)
  %35 = load i32, i32* %17, align 4
  %36 = icmp eq i32 %35, 1
  br i1 %36, label %37, label %56

37:                                               ; preds = %7
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @STMT_UPDATE_MOVED_TO_RELPATH, align 4
  %42 = call i32 @svn_sqlite__get_statement(i32** %16, i32 %40, i32 %41)
  %43 = call i32 @SVN_ERR(i32 %42)
  %44 = load i32*, i32** %16, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i8*, i8** %14, align 8
  %51 = call i32 (i32*, i8*, i32, i8*, i32, ...) @svn_sqlite__bindf(i32* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %47, i8* %48, i32 %49, i8* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  %53 = load i32*, i32** %16, align 8
  %54 = call i32 @svn_sqlite__update(i32* %17, i32* %53)
  %55 = call i32 @SVN_ERR(i32 %54)
  br label %56

56:                                               ; preds = %37, %7
  %57 = load i32, i32* %17, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @SVN_ERR_WC_PATH_NOT_FOUND, align 4
  %61 = call i32* @svn_error_create(i32 %60, i32* null, i32* null)
  store i32* %61, i32** %8, align 8
  br label %64

62:                                               ; preds = %56
  %63 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %63, i32** %8, align 8
  br label %64

64:                                               ; preds = %62, %59
  %65 = load i32*, i32** %8, align 8
  ret i32* %65
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32, ...) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

declare dso_local i32* @svn_error_create(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
