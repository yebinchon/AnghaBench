; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__hotcopy.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_subr/extr_sqlite.c_svn_sqlite__hotcopy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@svn_sqlite__mode_readonly = common dso_local global i32 0, align 4
@svn_sqlite__mode_rwcreate = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"main\00", align 1
@SVN_ERR_SQLITE_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"SQLite hotcopy failed for %s\00", align 1
@SQLITE_BUSY = common dso_local global i32 0, align 4
@SQLITE_LOCKED = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@SQLITE_DONE = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_sqlite__hotcopy(i8* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = load i32, i32* @svn_sqlite__mode_readonly, align 4
  %15 = load i32*, i32** %7, align 8
  %16 = load i32*, i32** %7, align 8
  %17 = call i32 @svn_sqlite__open(%struct.TYPE_5__** %8, i8* %13, i32 %14, i32* null, i32 0, i32* null, i32 0, i32* %15, i32* %16)
  %18 = call i32 @SVN_ERR(i32 %17)
  %19 = load i8*, i8** %6, align 8
  %20 = load i32, i32* @svn_sqlite__mode_rwcreate, align 4
  %21 = load i32*, i32** %7, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32 @svn_sqlite__open(%struct.TYPE_5__** %9, i8* %19, i32 %20, i32* null, i32 0, i32* null, i32 0, i32* %21, i32* %22)
  %24 = call i32 @SVN_ERR(i32 %23)
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32* @sqlite3_backup_init(i32 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %31, i32** %10, align 8
  %32 = load i32*, i32** %10, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %39, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @SVN_ERR_SQLITE_ERROR, align 4
  %36 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i8*, i8** %5, align 8
  %38 = call i32* @svn_error_createf(i32 %35, i32* null, i32 %36, i8* %37)
  store i32* %38, i32** %4, align 8
  br label %93

39:                                               ; preds = %3
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @sqlite3_backup_step(i32* %41, i32 1024)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* @SQLITE_BUSY, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %50, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* @SQLITE_LOCKED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46, %40
  %51 = call i32 @sqlite3_sleep(i32 25)
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* @SQLITE_OK, align 4
  %56 = icmp eq i32 %54, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* @SQLITE_BUSY, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %65, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* %11, align 4
  %63 = load i32, i32* @SQLITE_LOCKED, align 4
  %64 = icmp eq i32 %62, %63
  br label %65

65:                                               ; preds = %61, %57, %53
  %66 = phi i1 [ true, %57 ], [ true, %53 ], [ %64, %61 ]
  br i1 %66, label %40, label %67

67:                                               ; preds = %65
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @sqlite3_backup_finish(i32* %68)
  store i32 %69, i32* %12, align 4
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* @SQLITE_DONE, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %76 = call i32 @SQLITE_ERR(i32 %74, %struct.TYPE_5__* %75)
  br label %77

77:                                               ; preds = %73, %67
  %78 = load i32, i32* %12, align 4
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %80 = call i32 @SQLITE_ERR(i32 %78, %struct.TYPE_5__* %79)
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %82 = call i32 @svn_sqlite__close(%struct.TYPE_5__* %81)
  %83 = call i32 @SVN_ERR(i32 %82)
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %85 = call i32 @svn_sqlite__close(%struct.TYPE_5__* %84)
  %86 = call i32 @SVN_ERR(i32 %85)
  %87 = load i8*, i8** %5, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = call i32 @svn_io_copy_perms(i8* %87, i8* %88, i32* %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %92, i32** %4, align 8
  br label %93

93:                                               ; preds = %77, %34
  %94 = load i32*, i32** %4, align 8
  ret i32* %94
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__open(%struct.TYPE_5__**, i8*, i32, i32*, i32, i32*, i32, i32*, i32*) #1

declare dso_local i32* @sqlite3_backup_init(i32, i8*, i32, i8*) #1

declare dso_local i32* @svn_error_createf(i32, i32*, i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @sqlite3_backup_step(i32*, i32) #1

declare dso_local i32 @sqlite3_sleep(i32) #1

declare dso_local i32 @sqlite3_backup_finish(i32*) #1

declare dso_local i32 @SQLITE_ERR(i32, %struct.TYPE_5__*) #1

declare dso_local i32 @svn_sqlite__close(%struct.TYPE_5__*) #1

declare dso_local i32 @svn_io_copy_perms(i8*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
