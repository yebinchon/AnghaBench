; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_retract_parent_delete.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_wc/extr_wc_db.c_db_retract_parent_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@STMT_SELECT_LOWEST_WORKING_NODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"isd\00", align 1
@presence_map = common dso_local global i32 0, align 4
@STMT_CLEAR_MOVED_HERE_RECURSIVE = common dso_local global i32 0, align 4
@svn_wc__db_status_base_deleted = common dso_local global i64 0, align 8
@STMT_DELETE_NODE = common dso_local global i32 0, align 4
@STMT_CLEAR_MOVED_TO_RELPATH = common dso_local global i32 0, align 4
@SVN_NO_ERROR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_3__*, i8*, i32, i32*)* @db_retract_parent_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @db_retract_parent_delete(%struct.TYPE_3__* %0, i8* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @STMT_SELECT_LOWEST_WORKING_NODE, align 4
  %19 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %17, i32 %18)
  %20 = call i32 @SVN_ERR(i32 %19)
  %21 = load i32*, i32** %10, align 8
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i8*, i8** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @svn_sqlite__bindf(i32* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %24, i8* %25, i32 %26)
  %28 = call i32 @SVN_ERR(i32 %27)
  %29 = load i32*, i32** %10, align 8
  %30 = call i32 @svn_sqlite__step(i32* %11, i32* %29)
  %31 = call i32 @SVN_ERR(i32 %30)
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %4
  %35 = load i32*, i32** %10, align 8
  %36 = call i32 @svn_sqlite__reset(i32* %35)
  %37 = call i32* @svn_error_trace(i32 %36)
  store i32* %37, i32** %5, align 8
  br label %107

38:                                               ; preds = %4
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @svn_sqlite__column_int(i32* %39, i32 0)
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* @presence_map, align 4
  %43 = call i64 @svn_sqlite__column_token(i32* %41, i32 1, i32 %42)
  store i64 %43, i64* %13, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = call i8* @svn_sqlite__column_text(i32* %44, i32 3, i32* %45)
  store i8* %46, i8** %14, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @svn_sqlite__reset(i32* %47)
  %49 = call i32 @SVN_ERR(i32 %48)
  %50 = load i8*, i8** %14, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %71

52:                                               ; preds = %38
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @STMT_CLEAR_MOVED_HERE_RECURSIVE, align 4
  %57 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %55, i32 %56)
  %58 = call i32 @SVN_ERR(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i8*, i8** %14, align 8
  %64 = load i8*, i8** %14, align 8
  %65 = call i32 @relpath_depth(i8* %64)
  %66 = call i32 @svn_sqlite__bindf(i32* %59, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %62, i8* %63, i32 %65)
  %67 = call i32 @SVN_ERR(i32 %66)
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @svn_sqlite__step_done(i32* %68)
  %70 = call i32 @SVN_ERR(i32 %69)
  br label %71

71:                                               ; preds = %52, %38
  %72 = load i64, i64* %13, align 8
  %73 = load i64, i64* @svn_wc__db_status_base_deleted, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %71
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @STMT_DELETE_NODE, align 4
  %80 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %78, i32 %79)
  %81 = call i32 @SVN_ERR(i32 %80)
  br label %95

82:                                               ; preds = %71
  %83 = load i8*, i8** %14, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %92

85:                                               ; preds = %82
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @STMT_CLEAR_MOVED_TO_RELPATH, align 4
  %90 = call i32 @svn_sqlite__get_statement(i32** %10, i32 %88, i32 %89)
  %91 = call i32 @SVN_ERR(i32 %90)
  br label %94

92:                                               ; preds = %82
  %93 = load i32*, i32** @SVN_NO_ERROR, align 8
  store i32* %93, i32** %5, align 8
  br label %107

94:                                               ; preds = %85
  br label %95

95:                                               ; preds = %94, %75
  %96 = load i32*, i32** %10, align 8
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @svn_sqlite__bindf(i32* %96, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %99, i8* %100, i32 %101)
  %103 = call i32 @SVN_ERR(i32 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @svn_sqlite__update(i32* null, i32* %104)
  %106 = call i32* @svn_error_trace(i32 %105)
  store i32* %106, i32** %5, align 8
  br label %107

107:                                              ; preds = %95, %92, %34
  %108 = load i32*, i32** %5, align 8
  ret i32* %108
}

declare dso_local i32 @SVN_ERR(i32) #1

declare dso_local i32 @svn_sqlite__get_statement(i32**, i32, i32) #1

declare dso_local i32 @svn_sqlite__bindf(i32*, i8*, i32, i8*, i32) #1

declare dso_local i32 @svn_sqlite__step(i32*, i32*) #1

declare dso_local i32* @svn_error_trace(i32) #1

declare dso_local i32 @svn_sqlite__reset(i32*) #1

declare dso_local i32 @svn_sqlite__column_int(i32*, i32) #1

declare dso_local i64 @svn_sqlite__column_token(i32*, i32, i32) #1

declare dso_local i8* @svn_sqlite__column_text(i32*, i32, i32*) #1

declare dso_local i32 @relpath_depth(i8*) #1

declare dso_local i32 @svn_sqlite__step_done(i32*) #1

declare dso_local i32 @svn_sqlite__update(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
