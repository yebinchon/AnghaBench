; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_mark_conflict_internal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_svn_wc__db_mark_conflict_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@STMT_SELECT_ACTUAL_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"is\00", align 1
@STMT_UPDATE_ACTUAL_CONFLICT = common dso_local global i32 0, align 4
@STMT_INSERT_ACTUAL_CONFLICT = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @svn_wc__db_mark_conflict_internal(%struct.TYPE_5__* %0, i8* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @svn_wc__conflict_skel_is_complete(i64* %11, i32* %13)
  %15 = call i32 @SVN_ERR(i32 %14)
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @SVN_ERR_ASSERT(i64 %16)
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @STMT_SELECT_ACTUAL_NODE, align 4
  %22 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %20, i32 %21)
  %23 = call i32 @SVN_ERR(i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 @svn_sqlite__bindf(i32* %24, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %28)
  %30 = call i32 @SVN_ERR(i32 %29)
  %31 = load i32*, i32** %9, align 8
  %32 = call i32 @svn_sqlite__step(i64* %10, i32* %31)
  %33 = call i32 @SVN_ERR(i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = call i32 @svn_sqlite__reset(i32* %34)
  %36 = call i32 @SVN_ERR(i32 %35)
  %37 = load i64, i64* %10, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @STMT_UPDATE_ACTUAL_CONFLICT, align 4
  %44 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %42, i32 %43)
  %45 = call i32 @SVN_ERR(i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %6, align 8
  %51 = call i32 @svn_sqlite__bindf(i32* %46, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %49, i8* %50)
  %52 = call i32 @SVN_ERR(i32 %51)
  br label %79

53:                                               ; preds = %4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @STMT_INSERT_ACTUAL_CONFLICT, align 4
  %58 = call i32 @svn_sqlite__get_statement(i32** %9, i32 %56, i32 %57)
  %59 = call i32 @SVN_ERR(i32 %58)
  %60 = load i32*, i32** %9, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i8*, i8** %6, align 8
  %65 = call i32 @svn_sqlite__bindf(i32* %60, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %63, i8* %64)
  %66 = call i32 @SVN_ERR(i32 %65)
  %67 = load i8*, i8** %6, align 8
  %68 = load i8, i8* %67, align 1
  %69 = sext i8 %68 to i32
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %53
  %72 = load i32*, i32** %9, align 8
  %73 = load i8*, i8** %6, align 8
  %74 = load i32*, i32** %8, align 8
  %75 = call i32 @svn_relpath_dirname(i8* %73, i32* %74)
  %76 = call i32 @svn_sqlite__bind_text(i32* %72, i32 4, i32 %75)
  %77 = call i32 @SVN_ERR(i32 %76)
  br label %78

78:                                               ; preds = %71, %53
  br label %79

79:                                               ; preds = %78, %39
  %80 = load i32*, i32** %7, align 8
  %81 = load i32*, i32** %8, align 8
  %82 = call %struct.TYPE_6__* @svn_skel__unparse(i32* %80, i32* %81)
  store %struct.TYPE_6__* %82, %struct.TYPE_6__** %12, align 8
  %83 = load i32*, i32** %9, align 8
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @svn_sqlite__bind_blob(i32* %83, i32 3, i32 %86, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @svn_sqlite__update(i32* null, i32* %92)
  %94 = call i32 @SVN_ERR(i32 %93)
  %95 = load i32*, i32** @SVN_NO_ERROR, align 8
  ret i32* %95
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_wc__conflict_skel_is_complete(i64*, i32*) #1

declare dso_local i32 @SVN_ERR_ASSERT(i64) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*) #1

declare dso_local i32 @svn_sqlite__step(i64*, i32*) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__bind_text(i32*, i32, i32) #1

declare dso_local i32 @svn_relpath_dirname(i8*, i32*) #1

declare dso_local %struct.TYPE_6__* @svn_skel__unparse(i32*, i32*) #1

declare dso_local i32 @svn_sqlite__bind_blob(i32*, i32, i32, i32) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
